package org.yuyu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.yuyu.domain.LikeItemVO;

public interface LikeItemMapper {

	
	//회원 별 찜 상품 리스트 데이터 조회
	public List<LikeItemVO> getListPerMem(int mcode);
	
	// 찜 상품 데이터 삽입
	public void insert(LikeItemVO likeItemVO);
	
	//찜 데이터 조회
	public LikeItemVO read(@Param("mcode") int mcode,@Param("pcode") int pcode );
	
	//찜 상품 데이터 삭제
	public int delete(@Param("mcode") int mcode,@Param("pcode") int pcode );
	
	
}







