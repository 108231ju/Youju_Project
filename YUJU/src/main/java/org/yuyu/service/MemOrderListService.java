package org.yuyu.service;

import java.util.List;

import org.yuyu.domain.MemOrderListVO;

public interface MemOrderListService {
   
	// 스토어회원이 보유하고 있는 상품 리뷰 전체 데이터 조회
		public List<MemOrderListVO> getList(int ocode);

		public List<MemOrderListVO> read(int mcode, int pcode, int ocode);
	

	


}
