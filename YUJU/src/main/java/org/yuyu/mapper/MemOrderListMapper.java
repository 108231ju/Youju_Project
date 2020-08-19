package org.yuyu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.yuyu.domain.MemOrderListVO;



public interface MemOrderListMapper {
	
	// 회원이 보유하고 있는 상품 리뷰 전체 데이터 조회
	public List<MemOrderListVO> getList(int ocode);

	public List<MemOrderListVO> read(@Param("mcode") int mcode,@Param("pcode")int pcode,@Param("ocode")int ocode);
	

}







