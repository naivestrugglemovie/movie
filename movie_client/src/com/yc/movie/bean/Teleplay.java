package com.yc.movie.bean;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

/**
 * 电视剧
 * @author yxh
 *
 */
public class Teleplay implements Serializable {
	private Long teleplayId;  //电视剧ID
	private Merchant merchant; //对应商户
	private Long teleplayIntegralNum; //积分数
	private String teleplayName; //电视剧名
	private Long teleplayGradeNum; //评分数
	private String teleplayDescribe; //电视剧描述
	private String teleplayPath; //电视剧观看链接
	private Timestamp teleplayCreateTime; //电视剧上架时间
	private List<Classifys> classifysList;  //对应的类型集合
	private List<Images> classifyList;  //对应的图片集合
	private List<Protagonists> proList;  //对应主演集合
	public List<Classifys> getClassifysList() {
		return classifysList;
	}
	public void setClassifysList(List<Classifys> classifysList) {
		this.classifysList = classifysList;
	}
	public List<Images> getClassifyList() {
		return classifyList;
	}
	public void setClassifyList(List<Images> classifyList) {
		this.classifyList = classifyList;
	}
	public List<Protagonists> getProList() {
		return proList;
	}
	public void setProList(List<Protagonists> proList) {
		this.proList = proList;
	}
	public Long getTeleplayId() {
		return teleplayId;
	}
	public void setTeleplayId(Long teleplayId) {
		this.teleplayId = teleplayId;
	}
	public Merchant getMerchant() {
		return merchant;
	}
	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}
	public Long getTeleplayIntegralNum() {
		return teleplayIntegralNum;
	}
	public void setTeleplayIntegralNum(Long teleplayIntegralNum) {
		this.teleplayIntegralNum = teleplayIntegralNum;
	}
	public String getTeleplayName() {
		return teleplayName;
	}
	public void setTeleplayName(String teleplayName) {
		this.teleplayName = teleplayName;
	}
	public Long getTeleplayGradeNum() {
		return teleplayGradeNum;
	}
	public void setTeleplayGradeNum(Long teleplayGradeNum) {
		this.teleplayGradeNum = teleplayGradeNum;
	}
	public String getTeleplayDescribe() {
		return teleplayDescribe;
	}
	public void setTeleplayDescribe(String teleplayDescribe) {
		this.teleplayDescribe = teleplayDescribe;
	}
	public String getTeleplayPath() {
		return teleplayPath;
	}
	public void setTeleplayPath(String teleplayPath) {
		this.teleplayPath = teleplayPath;
	}
	public Timestamp getTeleplayCreateTime() {
		return teleplayCreateTime;
	}
	public void setTeleplayCreateTime(Timestamp teleplayCreateTime) {
		this.teleplayCreateTime = teleplayCreateTime;
	}
	@Override
	public String toString() {
		return "Teleplay [teleplayId=" + teleplayId + ", merchant=" + merchant + ", teleplayIntegralNum="
				+ teleplayIntegralNum + ", teleplayName=" + teleplayName + ", teleplayGradeNum=" + teleplayGradeNum
				+ ", teleplayDescribe=" + teleplayDescribe + ", teleplayPath=" + teleplayPath + ", teleplayCreateTime="
				+ teleplayCreateTime + "]";
	}
	
}
