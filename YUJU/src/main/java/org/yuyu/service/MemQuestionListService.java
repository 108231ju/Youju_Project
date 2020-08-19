package org.yuyu.service;

import java.util.List;

import org.yuyu.domain.MemQuestionListVO;

public interface MemQuestionListService {
   
	// 스토어회원이 보유하고 있는 상품 리뷰 전체 데이터 조회
		public List<MemQuestionListVO> getList(int mcode);
	

	


}
