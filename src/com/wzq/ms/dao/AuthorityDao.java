package com.wzq.ms.dao;

import com.wzq.ms.dataobject.Authority;

public interface AuthorityDao {

	public int getAuValue(Authority authority);
	
	public void addAuVAlue(Authority authority);
	
	public void chgAuVAlue(Authority authority);
}
