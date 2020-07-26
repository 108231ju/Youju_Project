package org.yuyu.service;

import java.util.List;

import org.yuyu.domain.LikeItemVO;

public interface LikeItemService {
	
	
	public List<LikeItemVO> getListPerMem(int mcode);
	
	public void insert(LikeItemVO likeItemVO);
	
	public LikeItemVO read(int mcode,int pcode);
	
	public boolean delete(int mcode, int pcode);
	
}


