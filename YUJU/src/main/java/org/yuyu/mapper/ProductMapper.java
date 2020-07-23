package org.yuyu.mapper;

import org.yuyu.domain.MemVO;
import org.yuyu.domain.ProductVO;

import java.util.List;

public interface ProductMapper {
	
	// 회원 전체 데이터 조회
	public List<ProductVO> getList();
	
	// 회원 데이터 삽입
	public void insert(MemVO memVO);
	
	// 회원 데이터 삽입(회원번호 자동 업데이트)
	public void insertSelectKey(ProductVO productVO);
	
	//회원 데이터 조회
	public ProductVO read(int pcode);
	
	//회원 데이터 삭제
	public int delete(int pcode);
	
	//회원 데이터 수정
	public int update(ProductVO productVO);
	
}







