package org.yuyu.service;

import java.util.List;

import org.yuyu.domain.P_basketVO;

public interface P_basketService {
	
	public List<P_basketVO> getList();
	
	public void insert(P_basketVO p_basketVO);
	
	public P_basketVO read(int pcode);
	
	public boolean delete(int pcode);
	
	public boolean alldelete(int mcode);
	
	public boolean modify(P_basketVO p_basketVO);



}


