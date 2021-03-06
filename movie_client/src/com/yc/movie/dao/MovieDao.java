package com.yc.movie.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.yc.movie.bean.ClassifyName;
import com.yc.movie.bean.Classifys;
import com.yc.movie.bean.Comment;
import com.yc.movie.bean.Images;
import com.yc.movie.bean.Indent;
import com.yc.movie.bean.Integral;
import com.yc.movie.bean.Merchant;
import com.yc.movie.bean.Movies;
import com.yc.movie.bean.PageBean;
import com.yc.movie.bean.Protagonists;
import com.yc.movie.bean.Reply;
import com.yc.movie.bean.Teleplay;
import com.yc.movie.bean.Ticket;
import com.yc.movie.bean.Users;
import com.yc.utils.TxQueryRunner;

public class MovieDao {
	private QueryRunner qr = new TxQueryRunner();

	/**
	 * 查询所有的movie
	 * 
	 * @return
	 * @throws SQLException
	 */
	public List<Movies> findAllMovie() throws SQLException {
		String sql = "select * from movies";
		List<Movies> movieList = qr.query(sql, new BeanListHandler<Movies>(Movies.class));
		if (movieList.size() < 1)
			return null;
		for (Movies movie : movieList) {
			// 查询当前movie对应的类型集合
			sql = "select * from classifys where classifyMovieId=?";
			List<Classifys> classifysList = qr.query(sql, new BeanListHandler<Classifys>(Classifys.class),
					movie.getMovieId());
			if (classifysList.size() > 0) {
				for (Classifys c : classifysList) {
					sql = "select * from classifyname where classifyNameId=?";
					List<ClassifyName> list1 = qr.query(sql, new BeanListHandler<ClassifyName>(ClassifyName.class),
							c.getClassifyName());
					if (list1.size() > 0) {
						c.setClassifyNameObj(list1.get(0));
					}
				}
				movie.setClassifysList(classifysList); // 设置类型集合
			}

			// 查询当前movie对应的图片集合
			sql = "select * from images where imgMovieId=?";
			List<Images> imgList = qr.query(sql, new BeanListHandler<Images>(Images.class), movie.getMovieId());
			if (imgList.size() > 0)
				movie.setImgList(imgList); // 设置图片集合
		}
		// System.out.println(movieList);
		return movieList;
	}

	/**
	 * 通过ID查找movie
	 * 
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public Movies findMovieById(Long id) throws SQLException {
		String sql = "select * from movies where movieId=?";
		List<Movies> result = qr.query(sql, new BeanListHandler<Movies>(Movies.class), id);
		if (result.size() > 0)
			return result.get(0);
		return null;
	}

	/**
	 * 创建一个movie对象 (给movie对象添加对应集合)
	 * 
	 * @param movie
	 * @return
	 * @throws SQLException
	 */
	public Movies createMovie(Movies movie) throws SQLException {
		// 添加电影票集合
		String sql = "select * from ticket where ticketMovieId=?";
		List<Ticket> ticketList = qr.query(sql, new BeanListHandler<Ticket>(Ticket.class), movie.getMovieId());
		movie.setTicketList(ticketList);

		// 添加电影类型集合
		sql = "select * from classifys where classifyMovieId=?";
		List<Classifys> classifysList = qr.query(sql, new BeanListHandler<Classifys>(Classifys.class),
				movie.getMovieId());
		classifysList = createClassifysList(classifysList);
		movie.setClassifysList(classifysList);

		// 添加电影图片集合
		sql = "select * from images where imgMovieId=?";
		List<Images> imgList = qr.query(sql, new BeanListHandler<Images>(Images.class), movie.getMovieId());
		movie.setImgList(imgList);

		// 添加电影主演集合
		sql = "select * from protagonists where proMovieId=?";
		List<Protagonists> proList = qr.query(sql, new BeanListHandler<Protagonists>(Protagonists.class),
				movie.getMovieId());
		movie.setProList(proList);

		// 添加电影对应的商户
		sql = "select * from merchant where merId=?";
		String[] merIds = movie.getMovieMerId().split(";");
		List<Merchant> list = new ArrayList<Merchant>();
		for (String str : merIds) {
			List<Merchant> merList = qr.query(sql, new BeanListHandler<Merchant>(Merchant.class), Long.parseLong(str));
			merList = createMerList(merList,movie.getMovieId());  //创建商户集合（添加头像）
			list.add(merList.get(0));
		}
		movie.setMerchantList(list);

		// 添加电影评论集合
		sql = "select * from comment where commentMovieId=?";
		List<Comment> commentList = qr.query(sql, new BeanListHandler<Comment>(Comment.class), movie.getMovieId());
		if (commentList.size() > 0) {
			commentList = createCommentListByReply(commentList);
			movie.setCommentList(commentList);
		}
		return movie;
	}

	/**
	 * 创建商户集合  （添加商户头像）
	 * @param merList
	 * @return
	 * @throws SQLException 
	 */
	private List<Merchant> createMerList(List<Merchant> merList,Long movieId) throws SQLException {
		for(Merchant me : merList){
			//添加商户图片
			String sql = "select * from images where imgMerchantId=?";
			List<Images> imgList = qr.query(sql, new BeanListHandler<Images>(Images.class),me.getMerId());
			me.setImgList(imgList);
			
			//添加商户中该电影上映的厅室时间
			sql = "select * from ticket where ticketMovieId=? and ticketMerId=?";
			Object[] params = {movieId,me.getMerId()};
			List<Ticket> ticket = qr.query(sql, new BeanListHandler<Ticket>(Ticket.class),params);
			List<String> list = new ArrayList<String>();
			if(ticket.size() == 1){
				list.add(ticket.get(0).getTicketStartTime().toString().substring(5, 10));
			}else if(ticket.size() > 1){
				for(Ticket t : ticket){
					String dateString = t.getTicketStartTime().toString().substring(5, 10);
					if(!list.contains(dateString)){
						list.add(dateString);
					}
				}
			}
			me.setDateString(list);
		}
		return merList;
	}

	/**
	 * 创建classifysList集合 就是将类型名集合添加进来
	 * 
	 * @param classifysList
	 * @return
	 * @throws SQLException
	 */
	private List<Classifys> createClassifysList(List<Classifys> classifysList) throws SQLException {
		for (Classifys c : classifysList) {
			String sql = "select * from classifyname where classifyNameId=?";
			List<ClassifyName> classifyNameList = qr.query(sql, new BeanListHandler<ClassifyName>(ClassifyName.class),
					c.getClassifyName());
			if (classifyNameList.size() > 0)
				c.setClassifyNameObj(classifyNameList.get(0));
		}
		return classifysList;
	}

	/**
	 * 创建评论 将评论中所需要的对象封装到评论中
	 * 
	 * @param commentList
	 * @return
	 * @throws SQLException
	 */
	private List<Comment> createCommentListByReply(List<Comment> commentList) throws SQLException {
		for (Comment c : commentList) {
			//添加回复集合
			String sql = "select * from reply where replyCommentId=?";
			List<Reply> replyList = qr.query(sql, new BeanListHandler<Reply>(Reply.class), c.getCommentId());
			if (replyList.size() > 0) {
				replyList = createReplyList(replyList);
				c.setReplyList(replyList);
			}
			//添加用户集合
			sql = "select * from users where userId=?";
			List<Users> userList = qr.query(sql, new BeanListHandler<Users>(Users.class), c.getCommentUserId());
			if (userList.size() > 0){
				Users user = userList.get(0);
				user = createUser(user);  //创建用户对象
				c.setUser(user);
			}

			//添加回复条数
			c.setReplyNum(Long.parseLong(getCommentReplyNum(c) + ""));
		}
		return commentList;
	}

	/**
	 * 创建用户对象   添加图片集合
	 * @param user
	 * @return
	 * @throws SQLException 
	 */
	private Users createUser(Users user) throws SQLException {
		String sql = "select * from images where imgUserId=?";
		List<Images> list = qr.query(sql, new BeanListHandler<Images>(Images.class),user.getUserId());
		user.setImgList(list);
		return user;
	}

	/**
	 * 获取评论的回复条数
	 * 
	 * @param c
	 * @return
	 */
	private int getCommentReplyNum(Comment c) {
		int i = 0;
		//判断评论下是否有回复
		if (c == null || c.getReplyList() == null || c.getReplyList().size() <= 0)
			return i;
		for (Reply r : c.getReplyList()) {
			i++;
			//判断回复下是否有回复
			if (r == null || r.getReplySonList() == null || r.getReplySonList().size() <= 0)
				continue;
			for (Reply rSon : r.getReplySonList()) {
				i++;
				i = getReplyNum(rSon, i);
			}
		}
		return i;
	}

	/**
	 * 获取回复的回复条数
	 * 
	 * @param rSon
	 */
	private int getReplyNum(Reply r, int i) {
		//判断回复下是否有回复
		if (r == null || r.getReplySonList() == null || r.getReplySonList().size() <= 0)
			return i;
		for (Reply rSon : r.getReplySonList()) {
			i++;
			i = getReplyNum(rSon, i);
		}
		return i;
	}

	/**
	 * 创造回复集合
	 * 
	 * @param replyList
	 * @return
	 * @throws SQLException
	 */
	private List<Reply> createReplyList(List<Reply> replyList) throws SQLException {
		// 每一条回复
		for (Reply r : replyList) {
			String sql = "select * from users where userId=?";
			List<Users> userList = qr.query(sql, new BeanListHandler<Users>(Users.class), r.getReplyUserId());
			if (userList.size() > 0){
				Users user = userList.get(0);
				user = createUser(user);
				r.setUser(user);
			}

			// 添加儿子集合
			sql = "select * from reply where replyParId=?";
			List<Reply> replySonList = qr.query(sql, new BeanListHandler<Reply>(Reply.class), r.getReplyId());
			if (replySonList.size() > 0) {
				replySonList = createReplyList(replySonList);
				r.setReplySonList(replySonList);
			} else {
				r.setReplySonList(null);
			}
			int i = 0;
			i = getReplyNum(r, i);
			
			//添加回复条数
			r.setReplyNum(Long.parseLong("" + i));
		}
		return replyList;
	}

	/**
	 * 根据id查询teleplay对象
	 * 
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public Teleplay findTeleplayById(Long id) throws SQLException {
		String sql = "select * from teleplay where teleplayId=?";
		List<Teleplay> result = qr.query(sql, new BeanListHandler<Teleplay>(Teleplay.class), id);
		if (result.size() > 0)
			return result.get(0);
		return null;
	}

	/**
	 * 创建电视剧对象
	 * 
	 * @param teleplay
	 * @return
	 * @throws SQLException
	 */
	public Teleplay createTeleplay(Teleplay teleplay) throws SQLException {
		String sql = "select * from merchant where merId=?";
		List<Merchant> merList = qr.query(sql, new BeanListHandler<Merchant>(Merchant.class),
				teleplay.getTeleplayMerId());
		if (merList.size() > 0)
			teleplay.setMerchant(merList.get(0));

		sql = "select * from classifys where classifyTeleplayId=?";
		List<Classifys> classifysList = qr.query(sql, new BeanListHandler<Classifys>(Classifys.class),
				teleplay.getTeleplayId());
		teleplay.setClassifysList(classifysList);

		sql = "select * from images where imgTeleplayId=?";
		List<Images> imgList = qr.query(sql, new BeanListHandler<Images>(Images.class), teleplay.getTeleplayId());
		teleplay.setImgList(imgList);

		sql = "select * from protagonists where proTeleplayId=?";
		List<Protagonists> proList = qr.query(sql, new BeanListHandler<Protagonists>(Protagonists.class),
				teleplay.getTeleplayId());
		teleplay.setProList(proList);
		return teleplay;
	}

	/**
	 * 将评论插入到数据库
	 * 
	 * @param form
	 * @throws SQLException
	 */
	public void insertComment(Comment c) throws SQLException {
		String sql = "insert into comment values(?,?,?,?,?,?,?)";
		Object[] params = { c.getCommentId(), c.getCommentUserId(), c.getCommentReplyId(), c.getCommentMovieId(),
				c.getCommentTeleplayId(), c.getCommentContent(), c.getCommentCreateTime() };
		qr.update(sql, params);
	}

	/**
	 * 通过ID查找评论对象
	 * 
	 * @param replyCommentId
	 * @throws SQLException
	 */
	public Comment findCommentById(Long replyCommentId) throws SQLException {
		String sql = "select * from comment where commentId=?";
		List<Comment> commentList = qr.query(sql, new BeanListHandler<Comment>(Comment.class), replyCommentId);
		if (commentList.size() > 0)
			return commentList.get(0);
		return null;
	}

	/**
	 * 插入回复对象到数据库
	 * 
	 * @param form
	 * @throws SQLException
	 */
	public void insertReply(Reply r) throws SQLException {
		String sql = "insert into reply values(?,?,?,?,?,?)";
		Object[] params = { r.getReplyId(), r.getReplyUserId(), r.getReplyCommentId(), r.getReplyCreateTime(),
				r.getReplyContent(), r.getReplyParId() };
		qr.update(sql, params);
	}

	/**
	 * 通过ID查询回复对象
	 * 
	 * @param replyId
	 * @return
	 * @throws SQLException
	 */
	public Reply findReplyById(Long replyId) throws SQLException {
		String sql = "select * from reply where replyId=?";
		List<Reply> replyList = qr.query(sql, new BeanListHandler<Reply>(Reply.class), replyId);
		if (replyList.size() > 0)
			return replyList.get(0);
		return null;
	}

	/**
	 * 修改评分
	 * 
	 * @param movie
	 * @throws SQLException
	 */
	public void updateMovieGradeNum(Movies movie) throws SQLException {
		// System.out.println(movie.getMovieGradeNum());
		String sql = "update movies set movieGradeNum=? where movieId=?";
		Object[] params = { movie.getMovieGradeNum(), movie.getMovieId() };
		qr.update(sql, params);
	}

	/**
	 * 根据商户id获取商户对象
	 * 
	 * @param merId
	 * @return
	 * @throws SQLException
	 */
	public Merchant findMerchantById(Long merId) throws SQLException {
		String sql = "select * from merchant where merId=?";
		List<Merchant> list = qr.query(sql, new BeanListHandler<Merchant>(Merchant.class), merId);
		if (list.size() > 0)
			return list.get(0);
		return null;
	}

	/**
	 * 通过商户ID和选择的厅室查找204张电影票
	 * 
	 * @param merId
	 * @param theater
	 * @return
	 * @throws SQLException
	 */
	public List<Ticket> getTicketListByMerIdAndTheater(Long merId, String theater,Long movieId) throws SQLException {
		String sql = "select * from ticket where ticketMerId=? and ticketMovieTheater=? and ticketMovieId=?";
		Object[] params = { merId, theater ,movieId};
		List<Ticket> list = qr.query(sql, new BeanListHandler<Ticket>(Ticket.class), params);
		list = createTicketList(list);
		return list;
	}

	/**
	 * 创建电影票集合
	 * @param list
	 * @return
	 * @throws SQLException 
	 */
	private List<Ticket> createTicketList(List<Ticket> list) throws SQLException {
		for(Ticket t : list){
			//添加商户对象
			String sql = "select * from merchant where merId=?";
			List<Merchant> merList = qr.query(sql, new BeanListHandler<Merchant>(Merchant.class),t.getTicketMerId());
			if(merList.size() > 0){
				Merchant mer = merList.get(0);
				t.setMerchant(mer);
			}
		}
		return list;
	}

	/**
	 * 添加订单
	 * 
	 * @param in
	 * @throws SQLException
	 */
	public void insertIndent(Indent in) throws SQLException {
		String sql = "insert into indent values(?,?,?,?,?,?,?)";
		Object[] params = { in.getIndentId(), in.getIndentUserID(), in.getIndentStatus(), in.getIndentRemark(),
				in.getIndentCreateTime(), in.getIndentNum(), in.getIndentPrice() };
		qr.update(sql, params);
	}

	/**
	 * 设置电影票状态
	 * 
	 * @param ticketId
	 * @param status
	 * @throws SQLException
	 */
	public void setTicketStatus(Long ticketId, String status) throws SQLException {
		String sql = "update ticket set ticketStatus=? where ticketId=?";
		Object[] params = { status, ticketId };
		qr.update(sql, params);
	}

	/**
	 * 访问量+1
	 * 
	 * @param id
	 * @throws SQLException
	 */
	public void addVisitCount(Long id) throws SQLException {
		String sql = "update movies set movieVisitCount=movieVisitCount+1 where movieId=?";
		qr.update(sql, id);
	}

	/**
	 * 通过类型名查找类型名对象
	 * 
	 * @param genreName
	 * @return
	 * @throws SQLException
	 */
	public ClassifyName findClassifyNameByName(String genreName) throws SQLException {
		String sql = "select * from classifyname where classifyNameString=?";
		List<ClassifyName> list = qr.query(sql, new BeanListHandler<ClassifyName>(ClassifyName.class), genreName);
		if (list.size() > 0)
			return list.get(0);
		return null;
	}

	/**
	 * 通过类型名Id查询类型对象
	 * 
	 * @param classifyNameId
	 * @return
	 * @throws SQLException
	 */
	public List<Classifys> findClassifyByNameId(Long classifyNameId) throws SQLException {
		String sql = "select * from classifys where classifyName=?";
		List<Classifys> list = qr.query(sql, new BeanListHandler<Classifys>(Classifys.class), classifyNameId);
		return list;
	}

	/**
	 * 通过类型集合查找电影集合
	 * 
	 * @param cList
	 * @return
	 * @throws SQLException
	 */
	public List<Movies> findMovieByClassify(List<Classifys> cList) throws SQLException {
		List<Object> params = new ArrayList<Object>(); // 参数集
		StringBuilder sb = new StringBuilder(); // sql语句
		for (Classifys c : cList) {
			params.add(c.getClassifyMovieId());
			sb.append(" or movieId=?");
		}
		String sql = "select * from movies where 1=2";
		sql = sql + sb.toString();
		return qr.query(sql, new BeanListHandler<Movies>(Movies.class), params.toArray());
	}

	public List<Movies> findMovieByClassifyPage(Integer pc, int ps, List<Classifys> cList) throws SQLException {
		List<Object> params = new ArrayList<Object>(); // 参数集
		StringBuilder sb = new StringBuilder(); // sql语句
		for (Classifys c : cList) {
			params.add(c.getClassifyMovieId());
			sb.append(" or movieId=?");
		}
		String sql = "select * from movies where 1=2";
		sql = sql + sb.toString() + " limit ?,?";
		params.add((pc - 1) * ps);
		params.add(ps);
		return qr.query(sql, new BeanListHandler<Movies>(Movies.class), params.toArray());
	}

	/**
	 * 设置电影票的ticketBuyBy
	 * 
	 * @param ticketId
	 * @param userId
	 * @throws SQLException
	 */
	public void setTicketBuyBy(Long ticketId, Long userId) throws SQLException {
		String sql = "update ticket set ticketBuyBy=? where ticketId=?";
		Object[] params = { userId, ticketId };
		qr.update(sql, params);
	}

	/**
	 * 根据订单号查找订单
	 * 
	 * @param indentNum
	 * @return
	 * @throws SQLException
	 */
	public Indent findIndentByIndentNum(String indentNum) throws SQLException {
		String sql = "select * from indent where indentNum=?";
		List<Indent> indentList = qr.query(sql, new BeanListHandler<Indent>(Indent.class), indentNum);
		if (indentList.size() > 0)
			return indentList.get(0);
		return null;
	}

	/**
	 * 设置电影票的ticketIndentId
	 * 
	 * @param indentId
	 * @throws SQLException
	 */
	public void setTicketIndentId(Long ticketId, Long indentId) throws SQLException {
		String sql = "update ticket set ticketIndentId=? where ticketId=?";
		Object[] params = { indentId, ticketId };
		qr.update(sql, params);
	}

	/**
	 * 修改订单状态
	 * 
	 * @param indentId
	 * @param type
	 * @throws SQLException
	 */
	public void setIndentStatus(Long indentId, String type) throws SQLException {
		String sql = "update indent set indentStatus=? where indentId=?";
		Object[] params = { type, indentId };
		qr.update(sql, params);
	}

	/**
	 * 全网查找电影
	 * @param pb
	 * @param text
	 * @return
	 * @throws SQLException 
	 */
	public PageBean<Movies> findMovieBySearch(PageBean<Movies> pb, String text) throws SQLException {
		String sql = "select count(*) from movies where movieName like ? or movieGenre like ? or movieDescribe like ?";
		Object[] params = {"%"+text+"%","%"+text+"%","%"+text+"%"};
		Number num = qr.query(sql, new ScalarHandler<Number>(),params);
		int tr = num.intValue();  //得到总记录数
		pb.setTr(tr);
		
		if(pb.getPc() < 1){
			pb.setPc(1);
		}
		if(pb.getPc() > pb.getTp()){
			pb.setPc(pb.getTp());
		}
		
		sql = "select * from movies where movieName like ? or movieGenre like ? or movieDescribe like ? limit ?,?";
		Object[] params2 = {"%"+text+"%","%"+text+"%","%"+text+"%",(pb.getPc()-1)*pb.getPs(),pb.getPs()};
		List<Movies> beanList = qr.query(sql, new BeanListHandler<Movies>(Movies.class),params2);
		beanList = createMovieList(beanList);
		pb.setBeanList(beanList);
		return pb;
	}

	/**
	 * 创建电影集合
	 * @param beanList
	 * @return
	 * @throws SQLException
	 */
	private List<Movies> createMovieList(List<Movies> movieList) throws SQLException {
		for(Movies movie : movieList){
			movie = createMovie(movie);
		}
		return movieList;
	}

	/**
	 * 添加积分
	 * @param t
	 * @param loginedUser
	 * @throws SQLException 
	 */
	public void setIntegralCount(Ticket t, Users loginedUser) throws SQLException {
		String sql = "select * from movies where movieId=?";
		List<Movies> movieList = qr.query(sql, new BeanListHandler<Movies>(Movies.class),t.getTicketMovieId());
		if(movieList.size() > 0){
			Movies movie = movieList.get(0);
			sql = "select * from integral where integralUserId=?";
			List<Integral> integralList = qr.query(sql, new BeanListHandler<Integral>(Integral.class),loginedUser.getUserId());
			if(integralList.size() > 0){
				Integral in = integralList.get(0);
				Long oldNum = in.getIntegralCount();  //用户本身有的积分
				Long num = movie.getMovieIntegralNum() + oldNum; //此部电影对应的积分
				sql = "update integral set integralCount=? where integralUserId=?";
				Object[] params = {num,loginedUser.getUserId()};
				qr.update(sql, params);
			}
			
		}
	}

}
