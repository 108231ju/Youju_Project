package org.yuyu.mapper;

import java.util.List;

import org.yuyu.domain.MemLikeListVO;



public interface MemLikeListMapper {
	
	// 회원이 보유하고 있는 상품 리뷰 전체 데이터 조회
	public List<MemLikeListVO> getList(int mcode);
	

}







