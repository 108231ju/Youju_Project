package org.yuyu.mapper;

import java.util.List;

import org.yuyu.domain.P_basketVO;

public interface P_basketMapper {
	
	// 상품 전체 데이터 조회
	public List<P_basketVO> getList();

	// 상품 데이터 삽입
	public void insert(P_basketVO p_basketVO);
	
	// 상품 데이터 삽입(상품번호 자동 업데이트)
	public void insertSelectKey(P_basketVO p_basketVO);
	
	//상품 데이터 조회
	public P_basketVO read(int pcode);
	
	//상품 데이터 삭제
	public int delete(int pcode);

	public int alldelete(int mcode);
	
	//상품 데이터 수정
	public int update(P_basketVO p_basketVO);

	
}







