package com.wzq.ms.dao;

import java.util.List;

import com.wzq.ms.dataobject.Authority;

public interface AuthorityDao {

	public Integer getAuValue(Authority authority);
	
	public void addAuVAlue(Authority authority);
	
	public void chgAuVAlue(Authority authority);

	public boolean checkAuthority(Integer uid, Integer cid);
	
	public List<Authority> getAllAu(Integer uid);
}
