package org.yuyu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.yuyu.domain.MemProductListVO;
import org.yuyu.domain.MemVO;
import org.yuyu.domain.ProductVO;



public interface MemProductListMapper {
	
	// 회원이 보유하고 있는 상품 리뷰 전체 데이터 조회
	public List<MemProductListVO> getList();
	
	public MemProductListVO view(int pcode);
	
	public List<MemProductListVO> getListForCatecode(String catecode);

	public List<MemProductListVO> getListForcategory(String cateCodeRef);
	
	public List<MemProductListVO> getListFortoday(int today);
	
	public List<MemProductListVO> getListForbest(int best);
	
	public List<MemProductListVO> getListForcategory(@Param("best")int best,@Param("cateCodeRef")String cateCodeRef);

	public List<MemProductListVO> getListFortodaycategory(@Param("today")int today,@Param("cateCode")String cateCode);

	public List<MemProductListVO> getListFortodaycategoryRef(@Param("today")int today,@Param("cateCodeRef")String cateCodeRef);
	
	public List<MemProductListVO> color(int pcode);

	public List<MemProductListVO> size(int pcode);
	
	public List<MemProductListVO> review(int pcode);

	public List<MemProductListVO> QandA(int pcode);

	public MemProductListVO List(String cateCode);
}







