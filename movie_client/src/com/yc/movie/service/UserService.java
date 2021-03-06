package com.yc.movie.service;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.mail.Session;

import com.yc.exception.UserException;
import com.yc.movie.bean.Images;
import com.yc.movie.bean.Indent;
import com.yc.movie.bean.Integral;
import com.yc.movie.bean.Merchant;
import com.yc.movie.bean.Sub;
import com.yc.movie.bean.UserLoginRecord;
import com.yc.movie.bean.Users;
import com.yc.movie.bean.Verify;
import com.yc.movie.dao.UserDao;
import com.yc.utils.CommonsUtils;
import com.yc.utils.JdbcUtils;

public class UserService {
	private UserDao ud = new UserDao();
	public static final int UPDATE_TYPE_PWD = 1;
	public static final int UPDATE_TYPE_REGISTER = 2;

	/**
	 * 登录
	 * 
	 * @param form
	 * @return
	 * @throws UserException
	 */
	public Users login(Users form, UserLoginRecord ulr) throws UserException {
		// 得到三种可能账号类型的值
		String userAccount = form.getUserAccount();
		String userEmail = form.getUserEmail();
		String userTel = form.getUserTel();

		String pwd = form.getUserPwd(); // 得到密码 （未加密的）

		// 判断账号是否为null 为null就抛异常 否则就把值保存到username中
		String username = null;
		if (userAccount == null || userAccount.isEmpty())
			if (userEmail == null || userEmail.isEmpty())
				if (userTel == null || userTel.isEmpty())
					throw new UserException("账号不能为空");
				else
					username = userTel;
			else
				username = userEmail;
		else
			username = userAccount;

		// 判断密码是否为空
		if (pwd == null || pwd.isEmpty())
			throw new UserException("密码不能为空");

		// 判断账号格式是否正确 不正确就抛异常 否则就把账号类型保存到selectConf中
		String selectConf = "";
		if (!username.matches(CommonsUtils.USERNAME_REGX))
			if (!username.matches(CommonsUtils.EMAIL_REGX))
				if (!username.matches(CommonsUtils.TEL_NUM_REGX))
					throw new UserException("账号格式错误");
				else
					selectConf = "userTel";
			else
				selectConf = "userEmail";
		else
			selectConf = "userAccount";

		Users user = null;
		try {
			// 判断账号是否存在
			user = ud.findUserBySelectConf(new String[] { selectConf }, username);
			if (user == null)
				throw new UserException("该账号还未注册");

			// 判断密码是否正确
			pwd = CommonsUtils.parseMD5(pwd); // 加密
			String[] selectConfs = { selectConf, "userPwd" };
			user = ud.findUserBySelectConf(selectConfs, username, pwd);
			if (user == null)
				throw new UserException("密码错误");
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("系统异常，请稍后再试");
		}

		// 添加登录日志
		ulr.setUser(user); // 设置登录对象
		try {
			JdbcUtils.beginTransaction(); // 开启事务
			ud.insertULR(ulr); // 添加
			JdbcUtils.commitTransaction(); // 关闭事务
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				JdbcUtils.roolbackTransaction(); // 回滚
			} catch (SQLException e1) {
				e1.printStackTrace();
				throw new UserException("系统异常，请稍后再试");
			}
		}

		try {
			user = ud.createUser(user);// 将对应的集合装到user对象中
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("系统异常，请稍后再试");
		}

		// 都通过了就登录成功 返回当前登录对象
		return user;
	}

	/**
	 * 修改用户
	 * 
	 * @param form
	 *            表单数据 userAccount userPwd
	 * @param code
	 *            手机号/邮箱
	 * @param userPwd2
	 *            确认密码
	 * @param verify
	 *            验证码对象
	 * @param type
	 *            类型 修改密码/注册用户
	 * @throws UserException
	 */
	public void updateUser(Users form, String code, String userPwd2, Verify verify, int type) throws UserException {
		String account = form.getUserAccount(); // 得到用户名
		String userPwd = form.getUserPwd(); // 得到密码

		// 判断用户名是否为空
		if (account == null || account.isEmpty())
			throw new UserException("请输入用户名");

		// 判断手机号/邮箱是否为空
		if (code == null || code.isEmpty())
			throw new UserException("请输入手机号/邮箱");

		// 判断密码是否为空
		if (userPwd == null || userPwd.isEmpty())
			throw new UserException("请输入密码");

		// 判断确认密码是否为空
		if (userPwd2 == null || userPwd2.isEmpty())
			throw new UserException("请输入确认密码");

		// 判断验证码是否为空
		if (verify == null || verify.getInputVerify().isEmpty())
			throw new UserException("请输入验证码");

		// 判断用户名格式是否正确
		if (!account.matches(CommonsUtils.USERNAME_REGX))
			throw new UserException("用户名格式不正确");

		// 判断手机号/邮箱格式是否正确
		String selectCode = null;
		if (!code.matches(CommonsUtils.TEL_NUM_REGX))
			if (!code.matches(CommonsUtils.EMAIL_REGX))
				throw new UserException("手机号/邮箱 格式不正确");
			else {
				selectCode = "userEmail";
				form.setUserEmail(code);
			}
		else {
			selectCode = "userTel";
			form.setUserTel(code);
		}

		// 判断密码格式是否正确
		if (!userPwd.matches(CommonsUtils.PWD_REGX))
			throw new UserException("密码格式不正确");

		// 判断验证码格式是否正确
		if ("userEmail".equals(selectCode) && !verify.getInputVerify().matches(CommonsUtils.VERIFY_EMAIL_REGX))
			if ("userTel".equals(selectCode) && !verify.getInputVerify().matches(CommonsUtils.VERIFY_TEL_REGX))
				throw new UserException("验证码格式有误");
		Users user = null;
		try {
			// 判断用户名是否存在
			user = ud.findUserBySelectConf(new String[] { "userAccount" }, account);
			if (type == 1) { // 修改密码
				if (user == null)
					throw new UserException("该用户名不存在");
			} else if (type == 2) { // 注册
				if (user != null)
					throw new UserException("该用户名已存在");
			}

			// 判断手机号/邮箱是否存在
			user = ud.findUserBySelectConf(new String[] { selectCode }, code);
			if (type == 1) { // 修改密码
				if (user == null)
					throw new UserException("手机号/邮箱 不存在或未绑定用户");
			} else if (type == 2) { // 注册
				if (user != null)
					throw new UserException("手机号/邮箱 已被其他用户绑定");
			}

			if (type == 1) { // 修改密码
				// 判断用户名和手机号/邮箱是否匹配
				String[] selectConfs = { "userAccount", selectCode };
				Object[] params = { account, code };
				user = ud.findUserBySelectConf(selectConfs, params);
				if (user == null)
					throw new UserException("手机号/邮箱 与用户名不匹配");
			}

			// 判断密码和确认密码是否相同
			if (!userPwd.equals(userPwd2))
				throw new UserException("两次输入的密码不相同");

			// 判断验证码是否正确
			System.out.println(verify.getInputVerify() + "+" + verify.getCreateVerify());
			if (!verify.getInputVerify().equalsIgnoreCase(verify.getCreateVerify()))
				throw new UserException("验证码不正确");

		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("系统异常，请稍后再试！");
		}

		// 都正确
		form.setUserPwd(CommonsUtils.parseMD5(userPwd)); // 加密

		try {
			JdbcUtils.beginTransaction();
			if (type == 1) { // 修改密码
				ud.alterPwd(form);
			} else if (type == 2) { // 添加用户
				form.setUserCreateTime(new Timestamp(new Date().getTime())); // 设置创建时间
				ud.insertUser(form); // 添加用户
				Users u = ud.findUserByCraeteTime(form.getUserCreateTime());
				Integral in = new Integral(); // 创建积分卡对象
				in.setIntegralCount(0l); // 设置初始积分数
				in.setUser(u); // 设置对应用户
				ud.insertIntegral(in); // 插入积分卡到数据库
				
				//添加默认头像
				Images img = new Images();
				img.setImgUserId(u.getUserId());  //设置用户ID
				img.setImgStatus("头像");
				img.setImgPath("/images/uploadLogo.png");  //设置默认头像路径
				ud.insertImage(img);
			}
			JdbcUtils.commitTransaction();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				JdbcUtils.roolbackTransaction();
			} catch (SQLException e1) {
				e1.printStackTrace();
				throw new UserException("系统异常，请稍后再试！");
			}
		}
	}

	/**
	 * 发送验证码
	 * 
	 * @param code
	 * @param userAccount
	 * @return
	 * @throws UserException
	 */
	public String sentVerify(String code, String account, int type) throws UserException {
		if (type == 1) { // 修改密码的邮件
			// 判断用户名是否为空
			if (account == null || account.isEmpty())
				throw new UserException("请输入要修改密码的用户名");
		}

		// 判断手机号/邮箱是否为空
		if (code == null || code.isEmpty())
			throw new UserException("请输入接收验证码的手机号/邮箱");

		if (type == 1) {
			// 判断用户名格式是否正确
			if (!account.matches(CommonsUtils.USERNAME_REGX))
				throw new UserException("用户名格式不正确");
		}

		// 判断手机号/邮箱格式是否正确
		String selectCode = null;
		if (!code.matches(CommonsUtils.TEL_NUM_REGX))
			if (!code.matches(CommonsUtils.EMAIL_REGX))
				throw new UserException("手机号/邮箱 格式不正确");
			else
				selectCode = "userEmail";
		else
			selectCode = "userTel";

		Users user = null;
		try {
			if (type == 1) {
				// 判断用户名是否存在
				user = ud.findUserBySelectConf(new String[] { "userAccount" }, account);
				if (user == null)
					throw new UserException("该用户名不存在");
			}

			// 判断手机号/邮箱是否存在
			user = ud.findUserBySelectConf(new String[] { selectCode }, code);
			if (type == 1) {
				if (user == null)
					throw new UserException("手机号/邮箱 不存在或未绑定用户");
			} else if (type == 2) {
				if (user != null)
					throw new UserException("手机号/邮箱 已被其他用户绑定");
			}

			if (type == 1) {
				// 判断手机号/邮箱是否与输入的用户名匹配
				String[] selectConfs = { "userAccount", selectCode };
				Object[] params = { account, code };
				// System.out.println(account+"+"+code);
				user = ud.findUserBySelectConf(selectConfs, params);
				if (user == null)
					throw new UserException("手机号/邮箱 与用户名不匹配");
			}

			// 发送手机验证码/邮箱验证码
			String text = null;
			if ("userEmail".equals(selectCode)) {
				// 发送邮箱验证码
				text = CommonsUtils.createVerifyCode(4, CommonsUtils.VERIFY_CODE_TYPE_EMAIL); // 生成验证码
				String fileName = null;
				Object[] codes = null;
				if (type == 1) {
					fileName = "alter_user_email.properties";
					codes = new Object[] { user.getUserName(), text }; // 设置补位
				} else if (type == 2) {
					fileName = "register_user_email.properties";
					codes = new Object[] { text }; // 设置补位
				}
				String to = code; // 设置收件人
				CommonsUtils.sendMail(this.getClass(), to, codes, fileName); // 发送邮件
			} else if ("userTel".equals(selectCode)) {
				// 发送手机验证码
				text = CommonsUtils.createVerifyCode(6, CommonsUtils.VERIFY_CODE_TYPE_TEL);
				CommonsUtils.sendTelCode(code, "您正在修改密码，验证码【" + text + "】，请勿将验证码泄露给其他人！");
			}
			return text; // 返回验证码
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("系统异常，请稍后再试！");
		}
	}

	/**
	 * 验证邮箱
	 * 
	 * @param email
	 * @throws UserException
	 */
	public void regxEmail(String email, Users loginedUser) throws UserException {
		// 判断邮箱是否为null
		if (email == null || email.trim().isEmpty())
			throw new UserException("邮箱不能为Null");

		// 判断邮箱格式是否正确
		if (!email.matches(CommonsUtils.EMAIL_REGX))
			throw new UserException("邮箱格式不正确");

		// 判断邮箱是否已被绑定
		try {
			Users user = ud.findUserByEmail(email);
			if (user != null) {
				if (!user.getUserId().equals(loginedUser.getUserId()))
					throw new UserException("该邮箱已被其他用户绑定");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("系统异常，请稍后再试！");
		}
	}

	/**
	 * 验证手机号码
	 * 
	 * @param tel
	 * @throws UserException
	 */
	public void regxTel(String tel, Users loginedUser) throws UserException {
		// 判断输入的手机号码是否为null
		if (tel == null || tel.trim().isEmpty())
			throw new UserException("手机号码不能为null");

		// 判断手机号码格式是否正确
		if (!tel.matches(CommonsUtils.TEL_NUM_REGX))
			throw new UserException("手机号码格式不正确");

		// 判断手机号码是否已被其他用户绑定
		try {
			Users user = ud.findUserByTel(tel);
			if (user != null) {
				if (!user.getUserId().equals(loginedUser.getUserId()))
					throw new UserException("该手机号已被其他用户绑定");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("系统异常，请稍后再试！");
		}
	}

	/**
	 * 修改用户信息
	 * 
	 * @param form
	 * @param sqlPath
	 * @throws UserException
	 */
	public void alterInfo(Users form, String sqlPath) throws UserException {
		try {
			JdbcUtils.beginTransaction();
			ud.alterInfo(form); // 修改用户信息

			// 先看看数据库中有没有头像
			Images img = ud.findImageByUserId(form.getUserId()); // 通过用户ID查找图片对象
			if (img == null) { // 添加头像
				if (sqlPath != null && !sqlPath.trim().isEmpty()) {
					Images im = new Images();
					im.setImgUserId(form.getUserId());
					im.setImgStatus("头像");
					im.setImgPath(sqlPath);
					ud.addImageByUser(im);
				}
			} else if (img != null) { // 修改头像
				if (sqlPath != null && !sqlPath.trim().isEmpty()) {
					Images im = new Images();
					im.setImgUserId(form.getUserId());
					im.setImgStatus("头像");
					im.setImgPath(sqlPath);
					ud.alterImageByUser(im);
				}
			}

			JdbcUtils.commitTransaction();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				JdbcUtils.roolbackTransaction();
			} catch (SQLException e1) {
				e1.printStackTrace();
				throw new UserException("系统异常，请稍后再试！");
			}
		}
	}

	/**
	 * 通过ID查找user
	 * 
	 * @param userId
	 * @return
	 * @throws UserException
	 */
	public Users findUserByUserId(Long userId) throws UserException {
		try {
			Users user = ud.findUserById(userId);
			user = ud.createUser(user);
			return user;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("系统异常，请稍后再试！");
		}
	}

	/**
	 * 根据用户查找所有订单
	 * 
	 * @param loginedUser
	 * @return
	 * @throws UserException
	 */
	public List<Indent> findIndentListByUser(Users loginedUser) throws UserException {
		try {
			List<Indent> indentList = ud.findIndentListByUser(loginedUser);
			return indentList;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("系统异常，请稍后再试！");
		}
	}
	
	/**
	 * 校验订阅邮箱
	 * @param email
	 * @throws UserException
	 */
	public void regxSubEmail(String email) throws UserException {
		// 验证邮箱是否为空
		if (email == null || email.isEmpty())
			throw new UserException(" 邮箱不能为空！");
		// 验证邮箱格式是否正确
		if (!email.matches(CommonsUtils.EMAIL_REGX))
			throw new UserException("邮箱格式不正确！");
		//验证邮箱是否已经订阅过了
		try {
			Sub sub = ud.findSubByEmail(email);
			if(sub != null)
				throw new UserException("您已经订阅过此网站了！");
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("系统异常，请稍后再试！");
		}
	}

	/**
	 * 添加邮箱地址到订阅表
	 * @param email
	 * @throws UserException
	 */
	public void addSubEmail(String email) throws UserException {
		// 只要涉及到对数据库的增、删、改 就要在一次事务中完成
		try {
			JdbcUtils.beginTransaction(); // 开启事务

			// 将邮箱插入到订阅表
			ud.insertEmailToSub(email);

			JdbcUtils.commitTransaction(); // 提交事务
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				JdbcUtils.roolbackTransaction(); // 事务回滚
			} catch (SQLException e1) {
				e1.printStackTrace();
				throw new UserException("系统异常，请稍后再试！");
			}
		}
	}

	/**
	 * 通过商户ID查找商户对象
	 * @param merId
	 * @return
	 * @throws UserException 
	 */
	public Merchant findMerByMerId(Long merId) throws UserException {
		try {
			return ud.findMerByMerId(merId);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("系统异常，请稍后再试！");
		}
	}

}
