package com.yc.movie.bean;

import java.io.Serializable;

/**
 * 类型表
 * @author yxh
 *
 */
public class Classifys implements Serializable {
	private Long classifyId;  //类型ID
	private Long classifyMovieId; //对应电影ID
	private Long classifyTeleplayId;  //对应电视剧ID
	private Movies movie;  //对应电影
	private Teleplay teleplay; //对应电视剧
	private String classifyNameString; //类型名
	private String classifyDescribe; //类型描述
	private Long classifyName;  //类型ID
	private ClassifyName classifyNameObj; //类型对象
	private Classifys parentClassify; //父类型
	public Long getClassifyId() {
		return classifyId;
	}
	public void setClassifyId(Long classifyId) {
		this.classifyId = classifyId;
	}
	public Long getClassifyMovieId() {
		return classifyMovieId;
	}
	public void setClassifyMovieId(Long classifyMovieId) {
		this.classifyMovieId = classifyMovieId;
	}
	public Long getClassifyTeleplayId() {
		return classifyTeleplayId;
	}
	public void setClassifyTeleplayId(Long classifyTeleplayId) {
		this.classifyTeleplayId = classifyTeleplayId;
	}
	public Movies getMovie() {
		return movie;
	}
	public void setMovie(Movies movie) {
		this.movie = movie;
	}
	public Teleplay getTeleplay() {
		return teleplay;
	}
	public void setTeleplay(Teleplay teleplay) {
		this.teleplay = teleplay;
	}
	public String getClassifyNameString() {
		return classifyNameString;
	}
	public void setClassifyNameString(String classifyNameString) {
		this.classifyNameString = classifyNameString;
	}
	public String getClassifyDescribe() {
		return classifyDescribe;
	}
	public void setClassifyDescribe(String classifyDescribe) {
		this.classifyDescribe = classifyDescribe;
	}
	public Long getClassifyName() {
		return classifyName;
	}
	public void setClassifyName(Long classifyName) {
		this.classifyName = classifyName;
	}
	public ClassifyName getClassifyNameObj() {
		return classifyNameObj;
	}
	public void setClassifyNameObj(ClassifyName classifyNameObj) {
		this.classifyNameObj = classifyNameObj;
	}
	public Classifys getParentClassify() {
		return parentClassify;
	}
	public void setParentClassify(Classifys parentClassify) {
		this.parentClassify = parentClassify;
	}
	@Override
	public String toString() {
		return "Classifys [classifyId=" + classifyId + ", classifyMovieId=" + classifyMovieId + ", classifyTeleplayId="
				+ classifyTeleplayId + ", movie=" + movie + ", teleplay=" + teleplay + ", classifyNameString="
				+ classifyNameString + ", classifyDescribe=" + classifyDescribe + ", classifyName=" + classifyName
				+ ", classifyNameObj=" + classifyNameObj + ", parentClassify=" + parentClassify + "]";
	}
	
}
