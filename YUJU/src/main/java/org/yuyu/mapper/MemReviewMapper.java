package org.yuyu.mapper;

import java.util.List;

import org.yuyu.domain.MemReviewVO;
import org.yuyu.domain.MemVO;
import org.yuyu.domain.ReviewVO;
import org.yuyu.domain.StoreMemVO;


public interface MemReviewMapper {
	
	// 회원이 보유하고 있는 상품 리뷰 전체 데이터 조회
	public List<MemReviewVO> getList(int mcode);
	

}







