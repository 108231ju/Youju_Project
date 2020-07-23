package org.yuyu.service;

import java.util.List;

import org.yuyu.domain.MemVO;
import org.yuyu.domain.StoreMemVO;

public interface StoreMemService {
	
	public List<StoreMemVO> getList();
	
	public void insert(StoreMemVO storeMemVO);
	
	public StoreMemVO read(int scode);
	
	public boolean delete(int scode);
	
	public boolean modify(StoreMemVO storeMemVO);

	public StoreMemVO login_check(String sid, String spw);
}


