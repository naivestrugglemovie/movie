package com.yc.movie.admin.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.yc.movie.bean.*;
import com.yc.movie.utils.TxQueryRunner;

public class AdminDao {
	private QueryRunner qr = new TxQueryRunner();

	/**
	 * 根据邮箱地址查询Admins对象    没有查到返回null
	 * @param adminEmail	邮箱地址
	 * @return Admins对象
	 * @throws SQLException 
	 */
	public Admins findAdminByEmail(String adminEmail) throws SQLException {
		String sql = "select * from admins where adminEmail=?";
		List<Admins> result = qr.query(sql, new BeanListHandler<Admins>(Admins.class),adminEmail);
		if(result.size() > 0) return result.get(0);
			return null;
	}

	/**
	 * 根据邮箱地址和密码查询Admins对象   没有查到返回null
	 * @param adminEmail	邮箱地址
	 * @param adminPwd	密码
	 * @return	Admins对象
	 * @throws SQLException 
	 */
	public Admins findAdminByPwd(String adminEmail, String adminPwd) throws SQLException {
		String sql = "select * from admins where adminEmail=? and adminPwd=?";
		List<Admins> result = qr.query(sql,new BeanListHandler<Admins>(Admins.class),adminEmail,adminPwd);
		if(result.size()>0){
			return result.get(0);
		}
		return null;
	}

	/**
	 * 将AdminLoginRecord添加到数据库
	 * @param alr
	 * @throws SQLException 
	 */
	public void addALR(AdminLoginRecord alr) throws SQLException {
		String sql = "insert into adminLoginRecord values(?,?,?,?,?)";
		Object[] params = {alr.getAlrId(),alr.getAlrLoginTime(),alr.getAlrLoginIp(),alr.getAlrAdmin().getAdminId(),alr.getAlrStatus()};
		qr.update(sql, params);
	}

	/**
	 * 根据Id查询Admins对象  没有查到返回null
	 * @param alterId	ID
	 * @return	Admins对象
	 * @throws SQLException 
	 */
	public Admins findAdminById(Long alterId) throws SQLException {
		String sql = "select * from admins where adminId=?";
		List<Admins> result = qr.query(sql, new BeanListHandler<Admins>(Admins.class),alterId);
		if(result.size()>0){
			return result.get(0);
		}
		return null;
	}

	/**
	 * 修改密码
	 * @param form	Admins对象
	 * @throws SQLException 
	 */
	public void alterPwd(Admins form) throws SQLException {
		String sql ="update admins set adminPwd=? where adminEmail=?";
		Object[] params = {form.getAdminPwd(),form.getAdminEmail()};
		qr.update(sql,params);
	}

	/**
	 * 通过注册码查找管理员对象   如果没找到就返回null
	 * @param adminRegisterCode
	 * @return
	 * @throws SQLException 
	 */
	public Admins findAdminByRegisterCode(String adminRegisterCode) throws SQLException {
		String sql="select * from admins where adminRegisterCode=?";
		List<Admins> result = qr.query(sql, new BeanListHandler<Admins>(Admins.class),adminRegisterCode);
		if(result.size() > 0)
			return result.get(0);
		return null;
	}

	/**
	 * 将admin添加到数据库
	 * @param form
	 * @throws SQLException 
	 */
	public void addAdmin(Admins admin) throws SQLException {
		
		String sql = "insert into admins values(?,?,?,?,?,?,?,?,?)";
		Object[] params = {admin.getAdminId(),admin.getAdminRegisterCode(),admin.getAdminName(),
				admin.getAdminTel(),admin.getAdminAddr(),admin.getAdminCreateTime(),
				admin.getAdminWeight(),admin.getAdminEmail(),admin.getAdminPwd()};
		qr.update(sql,params);
	}

	/**
	 * 通过邮箱和注册码查询admin对象   不存在就返回null
	 * @param adminRegisterCode
	 * @param adminEmail
	 * @return
	 * @throws SQLException 
	 */
	public Admins findAdminByRegisterCodeAndEmail(String adminRegisterCode, String adminEmail) throws SQLException {
		String sql = "select * from admins where adminRegisterCode=? and adminEmail=?";
		Object[] params = {adminRegisterCode,adminEmail};
		List<Admins> result = qr.query(sql, new BeanListHandler<Admins>(Admins.class),params);
		if(result.size() > 0)
			return result.get(0);
		return null;
	}

	/**
	 * 修改密码
	 * @param form
	 * @throws SQLException 
	 */
	public void resetPwd(String email,String newPwd) throws SQLException {
		String sql = "update admins set adminPwd=? where adminEmail=?";
		Object[] params = {newPwd,email};
		qr.update(sql,params);
	}

	/**
	 * 查找所有的订单
	 * @return
	 * @throws SQLException 
	 */
	public List<Indent> findAllIndent() throws SQLException {
		String sql = "select * from indent";
		List<Indent> list = qr.query(sql, new BeanListHandler<Indent>(Indent.class));
		list = createIndentList(list);
		return list;
	}

	/**
	 * 加工电影票集合
	 * @param list
	 * @return
	 * @throws SQLException 
	 */
	private List<Indent> createIndentList(List<Indent> list) throws SQLException {
		for(Indent in : list){
			String sql = "select * from users where userId=?";
			List<Users> user = qr.query(sql, new BeanListHandler<Users>(Users.class));
			if(user.size() > 0)
				in.setUser(user.get(0));
			
//			sql = "select * from ";
		}
		return null;
	}
	
}
