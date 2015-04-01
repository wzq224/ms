package com.wzq.ms.dataobject;

import java.util.Date;

public class Category {

	private int cid;
	private int uid;
	private String cname;
	private Date ctime;
	
	
	public Category() {
		super();
	}


	public Category(int cid, int uid, String cname, Date ctime) {
		super();
		this.cid = cid;
		this.uid = uid;
		this.cname = cname;
		this.ctime = ctime;
	}


	public int getCid() {
		return cid;
	}


	public void setCid(int cid) {
		this.cid = cid;
	}


	public int getUid() {
		return uid;
	}


	public void setUid(int uid) {
		this.uid = uid;
	}


	public String getCname() {
		return cname;
	}


	public void setCname(String cname) {
		this.cname = cname;
	}


	public Date getCtime() {
		return ctime;
	}


	public void setCtime(Date ctime) {
		this.ctime = ctime;
	}


	@Override
	public String toString() {
		return "Category [cid=" + cid + ", uid=" + uid + ", cname=" + cname
				+ ", ctime=" + ctime + "]";
	}
	
	
}
