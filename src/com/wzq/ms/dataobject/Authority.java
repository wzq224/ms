package com.wzq.ms.dataobject;

public class Authority {

	private int auId;
	private int cid;
	private int uid;
	private int auValue;
	
	public Authority() {
		super();
	}
	
	public Authority(int cid, int uid) {
		super();
		this.cid = cid;
		this.uid = uid;
	}
	
	public Authority(int auId, int cid, int uid, int auValue) {
		super();
		this.auId = auId;
		this.cid = cid;
		this.uid = uid;
		this.auValue = auValue;
	}
	public int getAuId() {
		return auId;
	}
	public void setAuId(int auId) {
		this.auId = auId;
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
	public int getAuValue() {
		return auValue;
	}
	public void setAuValue(int auValue) {
		this.auValue = auValue;
	}
	@Override
	public String toString() {
		return "Authority [auId=" + auId + ", cid=" + cid + ", uid=" + uid
				+ ", auValue=" + auValue + "]";
	}
	
}
