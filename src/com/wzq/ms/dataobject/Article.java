package com.wzq.ms.dataobject;

public class Article {

	private int aid;
	private int uid;
	private int cid;
	private String atitle;
	private String acontent;
	private String atime;
	
	public Article() {
		super();
	}

	public Article(int aid, int uid, int cid, String atitle, String acontent,
			String atime) {
		super();
		this.aid = aid;
		this.uid = uid;
		this.cid = cid;
		this.atitle = atitle;
		this.acontent = acontent;
		this.atime = atime;
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

	public String getAtime() {
		return atime;
	}

	public void setAtime(String atime) {
		this.atime = atime;
	}

	@Override
	public String toString() {
		return "Article [aid=" + aid + ", uid=" + uid + ", cid=" + cid
				+ ", atitle=" + atitle + ", acontent=" + acontent + ", atime="
				+ atime + "]";
	}
	
	
}
