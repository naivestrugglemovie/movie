package com.yc.utils;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.MessageFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;
import java.util.Vector;

import javax.imageio.ImageIO;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.dom4j.Attribute;
import org.dom4j.DocumentException;
import org.dom4j.io.SAXReader;

import com.yc.movie.bean.Verification;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class CommonsUtils {
	public static final String PWD_REGX = "[A-Za-z\\d.!@#$%^&*]{6,18}"; // 密码
	public static final String USERNAME_REGX = "[A-Za-z][A-Za-z\\d_]{5,18}"; // 用户名
	public static final String REGISTER_CODE_REGX = "[A-Z\\d]{4}[-][A-Z\\d]{4}[-][A-Z\\d]{4}[-][A-Z\\d]{4}"; // 注册码
	public static final String NAME_REGX = "^(([\\u4e00-\\u9fa5]{2,8}))$"; // 姓名
	public static final String ID_NUM_REGX = "[1-9]\\d{16}[0-9X]"; // 身份证号
	public static final String QQ_NUM_REGX = "[1-9]\\d{4,10}"; // QQ号
	public static final String EMAIL_REGX = "^[A-Za-z\\d]+([-_.][A-Za-z\\d]+)*@([A-Za-z\\d]+[-.])+[A-Za-z\\d]{2,4}$"; // 邮箱
	public static final String AGE_REGX = "\\d{1,3}"; // 年龄
	public static final String SEX_REGX = "[男女]"; // 性别
	public static final String TEL_NUM_REGX = "[1][34578]\\d{9}"; // 手机号码
	public static final String IP_ADDR_AND_PRO_NAME = "address_and_projectName.properties";  //项目的IP地址和项目名所在的配置文件
	public static final String VERIFY_TEL_REGX = "[0-9]{6}";
	public static final String VERIFY_EMAIL_REGX = "[a-zA-Z0-9]{6}";
	public static final int VERIFY_CODE_TYPE_EMAIL = 1;
	public static final int VERIFY_CODE_TYPE_TEL = 2;
	private static String codes = "23456789ABCDEFGHJKMNPQRSTUVWXYZ";
	public static Random ra = new Random(); // 随机数对象
	private static String smsKey = "d41d8cd98f00b204e980";
	private static String smsUsername = "naivestruggle";
	private static String smsUrl = "http://utf8.api.smschinese.cn";
	
	/**
	 * 按设置的宽度高度压缩图片文件<br> 先保存原文件，再压缩、上传 
     * @param oldFile  要进行压缩的文件全路径 
     * @param newFile  新文件 
     * @param width  宽度 
     * @param height 高度 
     * @param quality 质量 
     * @return 返回压缩后的文件的全路径 
	 */
	public static String zipWidthHeightImageFile(File oldFile,File newFile, int width, int height) {  
		
		if (oldFile == null) {  
            return null;  
        }  
        String newImage = null;  
        try {  
            /** 对服务器上的临时文件进行处理 */  
        	System.out.println("oldFile:"+oldFile.getAbsolutePath());
            Image srcFile = ImageIO.read(oldFile);  
            
            String srcImgPath = newFile.getAbsoluteFile().toString();
            System.out.println(srcImgPath);
            String subfix = "jpg";
    		subfix = srcImgPath.substring(srcImgPath.lastIndexOf(".")+1,srcImgPath.length());
 
    		BufferedImage buffImg = null; 
    		if(subfix.equals("png")){
    			buffImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_ARGB);
    		}else{
    			buffImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
    		}
 
    		Graphics2D graphics = buffImg.createGraphics();
    		graphics.setBackground(new Color(255,255,255));
    		graphics.setColor(new Color(255,255,255));
    		graphics.fillRect(0, 0, width, height);
    		graphics.drawImage(srcFile.getScaledInstance(width, height, Image.SCALE_SMOOTH), 0, 0, null);  
 
    		ImageIO.write(buffImg, subfix, new File(srcImgPath));  
        } catch (FileNotFoundException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
        return newImage;  
    }
	
	/**
	 * 生成订单号
	 * @return
	 */
	public static String createIndentNum(){
		Date d = new Date();
		return dateFormat(d, "yyyyMMddHHmmss")+d.getTime();
	}
	/**
	 * 将iso8859编码转化为utf-8
	 * @param str
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	public static String getString_ISO8859_To_UTF8(String str) throws UnsupportedEncodingException{
		return new String(str.getBytes("iso-8859-1"),"utf-8");
	}
	
	
	/**
	 * 获得所有的省
	 * @return
	 */
	public static Map<String, String> xmlProvince(Class c) {
		Map<String, String> map = new LinkedHashMap<String, String>();
		// 创建SaxReader对象
		SAXReader saxReader = new SAXReader();
		// 通过saxReader中的read()获取到dom4j 文档对象 Document
		org.dom4j.Document document = null;
		try {
			document = saxReader.read(c.getClassLoader().getResourceAsStream("Provinces.xml"));
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		// 获取根元素
		org.dom4j.Element root = document.getRootElement();
		Iterator it = root.elementIterator();
		int i = 1;
		while (it.hasNext()) {
			org.dom4j.Element book = (org.dom4j.Element) it.next();
			map.put(i + "", book.getStringValue());
			i++;
		}
		return map;
	}

	/**
	 * 根据城市的id获取县
	 * @param key
	 * @param c
	 * @return
	 */
	public static Map<String,String> xmlDistricts(String key,Class c) {
		Map<String,String> map = new LinkedHashMap<String,String>();
		SAXReader saxReader = new SAXReader();
		org.dom4j.Document document = null;
		try {
			document = saxReader.read(c.getClassLoader().getResourceAsStream("Districts.xml"));
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		org.dom4j.Element root = document.getRootElement();
		Iterator it = root.elementIterator();
		int i = 1;
		while (it.hasNext()) {
			org.dom4j.Element book = (org.dom4j.Element) it.next();
			List<Attribute> arrlist = book.attributes();
			for (Attribute attr : arrlist){
				if (attr.getName().equals("CID"))
					if (attr.getValue().equals(key)){
						map.put(i + "", book.getStringValue());
					}
			}
			i++;
		}
		return map;
	}

	/**
	 * 根据省id获取城市的Map
	 * 
	 * @param key
	 * @return
	 */
	public static Map<String,String> xmlCities(String key,Class c) {
		Map<String,String> map = new LinkedHashMap<String,String>();
		SAXReader saxReader = new SAXReader();
		org.dom4j.Document document = null;
		try {
			document = saxReader.read(c.getClassLoader().getResourceAsStream("Cities.xml"));
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		org.dom4j.Element root = document.getRootElement();
		Iterator it = root.elementIterator();
		int i = 1;
		while (it.hasNext()) {
			org.dom4j.Element book = (org.dom4j.Element) it.next();
			List<Attribute> arrlist = book.attributes();
			for (Attribute attr : arrlist)
				if (attr.getName().equals("PID"))
					if (attr.getValue().equals(key))
						map.put(i+"",book.getStringValue());
			i++;
		}
		return map;
	}

	/**
	 * 获取city表中的一个城市对应的CID
	 * @param dvolue
	 * @return
	 */
	public static String xmlgetCitiesID(String dvolue,Class c) {
		SAXReader saxReader = new SAXReader();
		org.dom4j.Document document = null;
		try {
			document = saxReader.read(c.getClassLoader().getResourceAsStream("Cities.xml"));
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		org.dom4j.Element root = document.getRootElement();
		Iterator it = root.elementIterator();
		while (it.hasNext()) {
			org.dom4j.Element book = (org.dom4j.Element) it.next();
			List<Attribute> arrlist = book.attributes();
			for (Attribute attr : arrlist)
				if (attr.getName().equals("ID"))
					if (book.getStringValue().equals(dvolue))
						return attr.getStringValue();
		}
		return "";
	}
	
	
	/**
	 * 发送短信
	 * @param smsUrl
	 * @param userName
	 * @param key
	 * @param toTel
	 * @param content
	 * @throws IOException
	 * @throws HttpException
	 * @throws UnsupportedEncodingException
	 */
	public static void sendTelCode(String toTel,String content){
		HttpClient client = new HttpClient();
        PostMethod post = new PostMethod(smsUrl);  //"http://utf8.api.smschinese.cn"
        post.addRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");// 在头文件中设置转码
        NameValuePair[] data = { new NameValuePair("Uid",smsUsername ),  //"naivestruggle"
                                 new NameValuePair("Key", smsKey), //"d41d8cd98f00b204e980"
                                 new NameValuePair("smsMob", toTel), //"15570906290"
                                 new NameValuePair("smsText", content) };//"验证码：8888"
        post.setRequestBody(data);

        try {
			client.executeMethod(post);
		} catch (HttpException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        Header[] headers = post.getResponseHeaders();
        int statusCode = post.getStatusCode();
//        System.out.println("statusCode:" + statusCode);
//        for (Header h : headers) {
//            System.out.println(h.toString());
//        }
        try {
			String result = new String(post.getResponseBodyAsString().getBytes("utf-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//        System.out.println(result); // 打印返回消息状态

        post.releaseConnection();
	}
	
	
	/**
	 * 通过cookie名获取request中的cookie对象   如果没有就返回null
	 * @param request
	 * @param cookieName
	 * @return
	 */
	public static Cookie getCookie(HttpServletRequest request,String cookieName){
		Cookie[] cookies = request.getCookies();
    	for(Cookie c:cookies)
    		if(c.getName().equals(cookieName))
    			return c;
    	return null;
	}
	/**
	 * 生成一个长度为len的验证码文本
	 * @param len 验证码长度
	 * @param type 验证码类型  邮箱验证码  手机验证码
	 * @return
	 */
	public static String createVerifyCode(int len,int type){
		StringBuilder sb = new StringBuilder();
		switch(type){
		case 1:
			for(int i=0;i<len;i++){
				int index = ra.nextInt(codes.length());
				sb.append(codes.charAt(index));
			}
			return sb.toString();
		case 2:
			for(int i=0;i<len;i++)
				sb.append(ra.nextInt(10));
			return sb.toString();
		default:throw new RuntimeException();
		}
	}
	/**
	 * 上传文件  返回要保存在数据库的路径
	 * @param root	存储文件的根目录
	 * @param fi	文件表单项对象
	 * @return	保存在数据库的路径
	 * @throws Exception
	 */
	public static String uploadFile(String root, FileItem fi) throws Exception {
		//得到文件名
		String filename = fi.getName();
		
		//处理文件名的绝对路径问题
		int index = filename.lastIndexOf("\\");
		if(index != -1){
			filename = filename.substring(index+1);
		}
		
		//处理文件同名问题，给文件名称添加uuid前缀。
		String savename = getUUID() + "_" + filename;
		
		//得到hashCode
		int hCode = filename.hashCode();
		//转化成16进制
		String hex = Integer.toHexString(hCode);
		
		//获取hex的前两个字母，与root连接在一起，生成一个完整的路径
		File dirFile = new File(root,"/"+hex.charAt(0)+"/"+hex.charAt(1));
		
		//创建目录链
		dirFile.mkdirs();
		
		//创建目标文件
		File destFile = new File(dirFile,savename);
		
//					File sqlFile = new File("/WEB-INF/files","/"+hex.charAt(0)+"/"+hex.charAt(1));
		String sqlPath = dirFile+"\\"+savename;
		
		
		//保存
		fi.write(destFile);
		return sqlPath;
	}
	
	/**
	 * Part上传图片
	 * @param root
	 * @param part
	 * @return
	 */
	public static String uploadImage(HttpServletRequest request,String root,Part part,int width,int height){
		String s1 = root;
		root = request.getServletContext().getRealPath(root);
		//得到文件名
		String filename = part.getSubmittedFileName();
		
		//处理文件名的绝对路径问题
		int index = filename.lastIndexOf("\\");
		if(index != -1){
			filename = filename.substring(index+1);
		}
		
		//处理文件同名问题，给文件名称添加uuid前缀。
		String savename = getUUID() + "_" + filename;
		
		//得到hashCode
		int hCode = filename.hashCode();
		//转化成16进制
		String hex = Integer.toHexString(hCode);
		
		//获取hex的前两个字母，与root连接在一起，生成一个完整的路径
		String s = "/"+hex.charAt(0)+"/"+hex.charAt(1);
		File dirFile = new File(root,s);
		
		//创建目录链
		dirFile.mkdirs();
		
		//创建目标文件
		File destFile = new File(dirFile,savename);
		if(!destFile.exists())
			try {
				destFile.createNewFile();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
//					File sqlFile = new File("/WEB-INF/files","/"+hex.charAt(0)+"/"+hex.charAt(1));
		String sqlPath = s1+s+"/"+savename;
		
		
		
		//保存
		try {
			part.write(dirFile+"/"+savename);
//			System.out.println("第一次上传的目录："+dirFile.getAbsolutePath()+"/"+savename);
			
			//压缩图片
			CommonsUtils.zipWidthHeightImageFile(destFile, destFile, width, height);
			
			//复制图片
			String newFileDir = dirFile.getAbsolutePath();
			if(newFileDir.contains("movie_server")){
				newFileDir = newFileDir.replace("movie_server", "movie_client");
			}else if(newFileDir.contains("movie_client")){
				newFileDir = newFileDir.replace("movie_client", "movie_server");
			}
			File f = new File(newFileDir);
			f.mkdirs(); //生成目录链
			cloneFile(new File(dirFile.getAbsolutePath()+"\\"+savename), new File(f,savename));
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sqlPath;
	}
	
	/**
	 * Part上传文件
	 * @param root
	 * @param part
	 * @return
	 */
	public static String uploadFile(HttpServletRequest request,String root,Part part){
		String s1 = root;
		root = request.getServletContext().getRealPath(root);
		//得到文件名
		String filename = part.getSubmittedFileName();
		
		//处理文件名的绝对路径问题
		int index = filename.lastIndexOf("\\");
		if(index != -1){
			filename = filename.substring(index+1);
		}
		
		//处理文件同名问题，给文件名称添加uuid前缀。
		String savename = getUUID() + "_" + filename;
		
		//得到hashCode
		int hCode = filename.hashCode();
		//转化成16进制
		String hex = Integer.toHexString(hCode);
		
		//获取hex的前两个字母，与root连接在一起，生成一个完整的路径
		String s = "/"+hex.charAt(0)+"/"+hex.charAt(1);
		File dirFile = new File(root,s);
		
		//创建目录链
		dirFile.mkdirs();
		
		//创建目标文件
		File destFile = new File(dirFile,savename);
		if(!destFile.exists())
			try {
				destFile.createNewFile();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
//					File sqlFile = new File("/WEB-INF/files","/"+hex.charAt(0)+"/"+hex.charAt(1));
		String sqlPath = s1+s+"/"+savename;
		sqlPath = sqlPath.replace("movie_server", "movie_client");
		
		//保存
		try {
			part.write(dirFile+"/"+savename);
//			System.out.println("第一次上传的目录："+dirFile.getAbsolutePath()+"/"+savename);
			
			//复制图片
			String newFileDir = dirFile.getAbsolutePath().replace("movie_server", "movie_client");
			File f = new File(newFileDir);
			f.mkdirs(); //生成目录链
			cloneFile(new File(dirFile.getAbsolutePath()+"\\"+savename), new File(f,savename));
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sqlPath;
	}
	
	/**
	 * 上传文件  返回要保存在数据库的路径
	 * @param root	存储文件的根目录
	 * @return	保存在数据库的路径
	 * @throws Exception
	 */
	public static String uploadFile(String root, File file){
		
		//得到文件名
		String filename = file.getName();
		
		//处理文件名的绝对路径问题
		int index = filename.lastIndexOf("\\");
		if(index != -1){
			filename = filename.substring(index+1);
		}
		
		//处理文件同名问题，给文件名称添加uuid前缀。
		String savename = getUUID() + "_" + filename;
		
		//得到hashCode
		int hCode = filename.hashCode();
		//转化成16进制
		String hex = Integer.toHexString(hCode);
		
		//获取hex的前两个字母，与root连接在一起，生成一个完整的路径
		File dirFile = new File(root,"/"+hex.charAt(0)+"/"+hex.charAt(1));
		
		//创建目录链
		dirFile.mkdirs();
		
		//创建目标文件
		File destFile = new File(dirFile,savename);
		
//					File sqlFile = new File("/WEB-INF/files","/"+hex.charAt(0)+"/"+hex.charAt(1));
		String sqlPath = dirFile+"\\"+savename;
		
		
		//保存  //复制
		cloneFile(file,destFile);
		return sqlPath;
	}
	
	/**
	 * 复制文件
	 * @param oldFile
	 * @param newFile
	 */
	public static void cloneFile(File oldFile,File newFile){
		if(!oldFile.exists())
			throw new RuntimeException("没有找到源文件");
		FileInputStream fis = null;
		FileOutputStream fos = null;
		try{
			if(!newFile.exists())
				newFile.createNewFile();
				
			fis = new FileInputStream(oldFile);
			fos = new FileOutputStream(newFile);
			byte[] buf = new byte[fis.available()];
			int len = 0;
			while((len = fis.read(buf)) != -1){
				fos.write(buf, 0, len);
			}
		}catch(IOException e){
			e.printStackTrace();
		}finally{
			try {
				if(fis != null)
					fis.close();
				if(fos != null)
					fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	/**
	 * 移除cookie
	 * @param request
	 * @param response
	 * @param cookieName	cookie的名字
	 */
	public static void removeCookie(HttpServletRequest request,HttpServletResponse response,String cookieName){
		Cookie[] cookies = request.getCookies();  //得到当前请求对象中的所有cookie
		for(Cookie cookie:cookies){  //遍历
			if(cookie.getName().equals(cookieName)){
				cookie.setMaxAge(0);
				cookie.setValue("");
				response.addCookie(cookie);
			}
		}
	}
	/**
	 * 从配置文件中获取项目的IP地址和项目名
	 * @return	localhost:8080/movie_server/
	 * @throws IOException 
	 */
	public static String getAddressAndProName(Class thisClass) throws IOException{
		Properties p = new Properties();
		p.load(thisClass.getClassLoader().getResourceAsStream(IP_ADDR_AND_PRO_NAME));
		String addr = p.getProperty("address");
		String proName = p.getProperty("projectName");
		return addr+proName;
	}
	/**
	 * 根据指定的日期字符串和掩码，返回日期值
	 * @param dateString	2018-01-01
	 * @param mask	yyyy-MM-dd
	 * @return	返回日期对象
	 * @throws ParseException 
	 */
	public static Date dateFormat(String dateString,String mask){
		try {
			return new SimpleDateFormat(mask).parse(dateString);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 根据指定的日期对象和掩码，返回格式化后的日期字符串
	 * @param date	日期对象
	 * @param mask	yyyy-MM-dd
	 * @return	返回日期字符串
	 */
	public static String dateFormat(Date date,String mask) {
		return new SimpleDateFormat(mask).format(date);
	}
	
	/**
	 * 对传入字符串进行BASE64编码并返回
	 * @param str
	 * @return
	 * @throws IOException
	 */
	public static String encodeByBASE64(String str) throws IOException{
		return new BASE64Encoder().encode(str.getBytes("UTF-8"));
	}
	
	/**
	 * 对传入字符串进行BASE64解码并返回
	 * @param str
	 * @return
	 * @throws IOException 
	 */
	public static String decodeByBASE64(String str) throws IOException{
		return new String(new BASE64Decoder().decodeBuffer(str),"UTF-8");
	}
	
	/**
	 * 将普通form表单转换成javaBean对象
	 * @param request	请求对象
	 * @param c	传入转换的类型
	 * @return	返回一个javaBean
	 * @throws Exception
	 */
	public static <T> T toBean(HttpServletRequest request,Class<T> c){
		T t = null;
		try {
			t = (T)c.newInstance();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		Method[] methods = t.getClass().getDeclaredMethods();
		Vector<Method> v = new Vector<Method>();
		for(int i=0;i<methods.length;i++){
			String methodName = methods[i].getName();
			if(!"set".equals(methodName.substring(0, 3))){
				//这些不是set方法
				continue;
			}
			//剩下的是set方法
			v.add(methods[i]);
		}
		g1:for(Method me:v){
			//将方法名转化为  属性名
			String s  = me.getName().substring(3);   //去掉set的   Defghi
			String first = s.substring(0,1).toLowerCase();   //第一位小写  d
			String attrName = first + s.substring(1);  	//属性名  defghi
			
			//找到属性的类型
			String attrType = me.getParameterTypes()[0].getName();  //java.lang.String
			String params = request.getParameter(attrName);
			if(params == null)
				continue g1;
			try {
				g2:switch(attrType){
				case "java.math.BigDecimal":
					me.invoke(t, BigDecimal.valueOf(Double.valueOf(params)));
					break;
				case "java.lang.Integer":
					me.invoke(t, Integer.parseInt(params));
					break g2;
				case "java.lang.String":
					me.invoke(t, params); 
					break g2;
				case "java.lang.Long":
					me.invoke(t, Long.parseLong(params)); 
					break g2;
				case "java.sql.Date":
					DateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
					me.invoke(t, new java.sql.Date(dateformat.parse(params).getTime())); 
					break g2;
				case "java.sql.Timestamp":
					me.invoke(t,Timestamp.valueOf(params)); 
					break g2;
				}
			} catch (NumberFormatException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (IllegalArgumentException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			} catch (ParseException e) {
				e.printStackTrace();
			} 
		}
		return t;
	}
	
	/**
	 * 将Map转为javabean
	 * @param map
	 * @param c
	 * @return
	 */
	public static <T> T toBean(Map<String, Object> map , Class<T> c){
		T bean = null;  //User user = null
		try {
			bean = c.newInstance();  //创建一个javabean实例   //user = new User();
			Method[] methods = c.getMethods();  //得到实例对象的所有公有方法
			Vector<Method> v = new Vector<Method>();
			for(int i=0;i<methods.length;i++){
				String methodName = methods[i].getName();
				if(!"set".equals(methodName.substring(0, 3))){
					//这些不是set方法
					continue;
				}
				//剩下的是set方法
				v.add(methods[i]);
			}
			
			g1:for(Method me:v){
				//将方法名转化为  属性名
				String s  = me.getName().substring(3);   //去掉set的   Defghi
				String first = s.substring(0,1).toLowerCase();   //第一位小写  d
				String attrName = first + s.substring(1);  	//属性名  defghi
				
				//找到属性的类型
				String attrType = me.getParameterTypes()[0].getName();  //java.lang.String
				String params = String.valueOf(map.get(attrName));
				if(params == null)
					continue g1;
				try {
					g2:switch(attrType){
					case "java.lang.Double":
						me.invoke(bean, Double.parseDouble(params));
						break g2;
					case "java.lang.Integer":
						me.invoke(bean, Integer.parseInt(params));
						break g2;
					case "java.lang.String":
						me.invoke(bean, params); 
						break g2;
					case "java.lang.Long":
						me.invoke(bean, Long.parseLong(params)); 
						break g2;
					case "java.sql.Date":
						DateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
						me.invoke(bean, new java.sql.Date(dateformat.parse(params).getTime())); 
						break g2;
					case "java.sql.Timestamp":
						me.invoke(bean,Timestamp.valueOf(params)); 
						break g2;
					}
				} catch (NumberFormatException e) {
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				} catch (IllegalArgumentException e) {
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					e.printStackTrace();
				} catch (ParseException e) {
					e.printStackTrace();
				} 
			}
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bean;
	}
	
	/**
	 * 得到pc
	 * @param request
	 * @return
	 */
	public static int getPageListPc(HttpServletRequest request) {
		String pc = request.getParameter("pc");
		if(pc == null || pc.isEmpty()){
			pc = "1";
		}
		return Integer.parseInt(pc);
	}
	
	/**
	 * 获取一个javax.mail.Session的实例对象
	 * @param mailHost	服务器主机名
	 * @param username	用户名(不是邮箱地址)
	 * @param password	密码(是第三方登录授权码)
	 * @return	javax.mail.Session对象
	 */
	public static Session createMailSession(String mailHost,String username,String password){
		Properties prop = new Properties();
		prop.setProperty("mail.host", mailHost);	//设置服务器主机名
		prop.setProperty("mail.smtp.auth", "true");	//设置需要认证
		
		Authenticator auth = new Authenticator(){
			public PasswordAuthentication getPasswordAuthentication(){
				return new PasswordAuthentication(username,password);  //用户名和密码
			}
		};
		return Session.getInstance(prop,auth);
	}
	
	/**
	 * 发送邮件
	 * @param session javax.mail.Session对象
	 * @param mail	要发送的邮件对象
	 */
	public static void sendMail(Session session,Mail mail){
		MimeMessage msg = new MimeMessage(session);
		try {
			msg.setFrom(new InternetAddress(mail.getFromMailAddress()));	//设置发件人
			msg.setRecipients(RecipientType.TO, mail.getToMailAddress());  //设置收件人
			if(mail.getCcMailAddress()!= null && !mail.getCcMailAddress().isEmpty())
				msg.setRecipients(RecipientType.CC, mail.getCcMailAddress());  //设置抄送
			if(mail.getBccMailAddress() !=null && !mail.getBccMailAddress().isEmpty())
				msg.setRecipients(RecipientType.BCC, mail.getBccMailAddress());  //设置暗送
			msg.setSubject(mail.getMailSubject());	//设置主题
			
			List<AttachBean> fileBodyList = mail.getAttachBeanList();  //得到文件部件集合
			
			if(fileBodyList == null){ //如果没有文件部件
				msg.setContent(mail.getMailContent(),"text/html;charset=utf-8");	//设置正文
			}else{	//如果有文件部件
				MimeMultipart list = new MimeMultipart();  //创建多部分内容集合
				
				MimeBodyPart part1 = new MimeBodyPart(); //创建MimeBodyPart
				part1.setContent(mail.getMailContent(),"text/html;charset=utf-8"); //设置正文部件的内容
				list.addBodyPart(part1); //把正文部件添加到集合中
				
				for(AttachBean ab:fileBodyList){
					MimeBodyPart part = new MimeBodyPart();	//创建MimeBodyPart
					part.attachFile(ab.getFile());	//设置附件的内容
					part.setFileName(MimeUtility.encodeText(ab.getAttachBeanName()));  //设置显示的文件名称，并处理乱码问题
					list.addBodyPart(part);	//将部件添加到部件集合中
				}
				
				msg.setContent(list);	//把它设置给邮件作为邮件的内容
			}
			
			Transport.send(msg); //发送
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 通过配置文件发送邮件
	 * @param c	当前类
	 * @param to	发送到
	 * @param code	激活码
	 * host=smtp.163.com   //主机名
		uname=naivestruggle    //邮箱用户名
		pwd=QQ981214		//邮箱第三方登录收权码
		from=naivestruggle@163.com //邮箱地址
		subject=这是一封邮件
		content=<a href="http://localhost:8080/Blog_Server/UserServlet?method=active&code={0}">点击这里完成激活</a>  //{0} 是代表占位
	 */
	public static void sendMail(Class thisClass,String to,Object[] codes,String fileName){
		//获取配置文件内容
		Properties props = new Properties();
		try {
			props.load(thisClass.getClassLoader().getResourceAsStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		String host = props.getProperty("host").trim();  //获取服务器主机
		String uname = props.getProperty("uname").trim();  //获取邮箱用户名
		String pwd = props.getProperty("pwd").trim();   //获取第三方登录授权密码
		String from = props.getProperty("from").trim();   //获取发件人
		String subject = props.getProperty("subject").trim();  //获取主题
		String content = props.getProperty("content");  //获取邮件内容
		if(codes!=null && codes.length>0)
			content = MessageFormat.format(content,codes);  //替换占位符
		Mail mail = new Mail(from,to,subject,content);  //创建邮件对象
		Session session = createMailSession(host,uname,pwd);  //用自己的工具获取session
		sendMail(session,mail);  //发邮件
	}
	
	/**
	 * MD5加密
	 * @param inStr 需要加密的字符串
	 * @return 一个32位的密文
	 */
	public static String parseMD5(String inStr){
		MessageDigest md5 = null;
		try {
			md5 = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException e) {
			throw new RuntimeException("加密失败");
		}
		char[] charArr = inStr.toCharArray();
		byte[] byteArr = new byte[charArr.length];
		for(int i=0;i<charArr.length;i++){
			byteArr[i] = (byte) charArr[i];
		}
		
		byte[] md5Bytes = md5.digest(byteArr);
		
		StringBuilder hexValue = new StringBuilder();
		
		for(int i=0;i<md5Bytes.length;i++){
			int val = (int)md5Bytes[i] & 0xff;
			if(val < 16)
				hexValue.append("0");
			hexValue.append(Integer.toHexString(val));
		}
		
		return hexValue.toString();
	}
	
	/**
	 * 获取一个32位的不重复的字符串
	 * 	字符串由数字与大写字母组成
	 * @return
	 */
	public static String getUUID() {
		return java.util.UUID.randomUUID().toString().replace("-", "").toUpperCase();
	}
}
