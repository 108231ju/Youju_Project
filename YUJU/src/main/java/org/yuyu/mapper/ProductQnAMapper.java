package org.yuyu.mapper;

import java.util.List;

import org.yuyu.domain.ProductQnAVO;

public interface ProductQnAMapper {
	
	// 스토어별 상품Q&A 전체 리스트 데이터 조회
	public List<ProductQnAVO> getList(int scode);
	
	// 상품 Q&A 데이터 삽입
	public void insert(ProductQnAVO productQnAVO);
	
	// 상품 Q&A 데이터 삽입(상품 Q&A번호 자동 업데이트)
	public void insertSelectKey(ProductQnAVO productQnAVO);
	
	//상품 Q&A 데이터 조회
	public ProductQnAVO read(int qnacode);
	
	//상품 Q&A 데이터 삭제
	public int delete(int qnacode);
	
	//상품 Q&A 데이터 수정
	public int update(ProductQnAVO productQnAVO);
	
}







