package org.yuyu.service;

import java.util.List;

import org.yuyu.domain.MemVO;
import org.yuyu.domain.ReviewVO;

public interface ReviewService {
	

	// 스토어회원이 보유하고 있는 상품 리뷰 전체 데이터 조회
	public List<ReviewVO> getListPerStoreMem(int scode);
	

	// 상품리뷰 데이터 삽입(상품 리뷰 자동 업데이트)
	public void insert(ReviewVO reviewVO);
	
	//상품 리뷰 데이터 조회
	public ReviewVO read(int rcode);
	
	//상품 리뷰 데이터 삭제
	public boolean remove(int rcode);
	
	//상품 리뷰 데이터 수정
	public boolean modify(ReviewVO reviewVO);
	
	public List<ReviewVO> getListByScode(int scode);
		
		

}


