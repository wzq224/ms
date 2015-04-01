package com.wzq.ms.dataobject;

import java.util.Date;

public class User {
	private int uid;
	private String uname;
	private String pwd;
	private boolean suFlag;
	private Date utime;
	
	public User() {
		super();
	}
	public User(int uid, String uname, String pwd, boolean suFlag, Date utime) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.pwd = pwd;
		this.suFlag = suFlag;
		this.utime = utime;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public boolean isSuFlag() {
		return suFlag;
	}
	public void setSuFlag(boolean suFlag) {
		this.suFlag = suFlag;
	}
	public Date getUtime() {
		return utime;
	}
	public void setUtime(Date utime) {
		this.utime = utime;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", pwd=" + pwd
				+ ", suFlag=" + suFlag + ", utime=" + utime + "]";
	}
	
	
	
}