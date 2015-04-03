package com.wzq.ms.dataobject;

import java.util.Date;

public class Article {

	private int aid;
	private int uid;
	private int cid;
	private String atitle;
	private String acontent;
	private Date atime;
	
	private String uname;
	private String cname;
	
	public Article() {
		super();
	}

	

	public Article(int aid, int uid, int cid, String atitle, String acontent,
			Date atime, String uname, String cname) {
		super();
		this.aid = aid;
		this.uid = uid;
		this.cid = cid;
		this.atitle = atitle;
		this.acontent = acontent;
		this.atime = atime;
		this.uname = uname;
		this.cname = cname;
	}



	public String getUname() {
		return uname;
	}



	public void setUname(String uname) {
		this.uname = uname;
	}



	public String getCname() {
		return cname;
	}



	public void setCname(String cname) {
		this.cname = cname;
	}



	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getAtitle() {
		return atitle;
	}

	public void setAtitle(String atitle) {
		this.atitle = atitle;
	}

	public String getAcontent() {
		return acontent;
	}

	public void setAcontent(String acontent) {
		this.acontent = acontent;
	}

	public Date getAtime() {
		return atime;
	}

	public void setAtime(Date atime) {
		this.atime = atime;
	}

	@Override
	public String toString() {
		return "Article [aid=" + aid + ", uid=" + uid + ", cid=" + cid
				+ ", atitle=" + atitle + ", acontent=" + acontent + ", atime="
				+ atime + ", uname=" + uname + ", cname=" + cname + "]";
	}
	
	
}
