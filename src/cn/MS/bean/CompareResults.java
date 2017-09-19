package cn.MS.bean;

import java.util.Date;
/**
 * 比对结果展示类，没有对应的表
 * @author wan-ls
 *
 */
public class CompareResults {
	private int webPlanDetailId;
	private int visitDataId;
	private String name;
	private String address;
	private Date date;
	private String result;
	public int getWebPlanDetailId() {
		return webPlanDetailId;
	}
	public void setWebPlanDetailId(int webPlanDetailId) {
		this.webPlanDetailId = webPlanDetailId;
	}
	public int getVisitDataId() {
		return visitDataId;
	}
	public void setVisitDataId(int visitDataId) {
		this.visitDataId = visitDataId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
}
