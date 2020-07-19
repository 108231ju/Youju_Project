package org.yuyu.mapper;

import java.util.List;

import org.yuyu.domain.StoreMemVO;

public interface StoreMemMapper {
	
	//스토어회원 전체 데이터 조회
	public List<StoreMemVO> getList();
	
	// 스토어회원 데이터 삽입
	public void insert(StoreMemVO storeMemVO);
	
	// 스토어회원 데이터 삽입(회원번호 자동 업데이트)
	public void insertSelectKey(StoreMemVO storeMemVO);
	
	//스토어회원 데이터 조회
	public StoreMemVO read(int scode);
	
	//스토어회원 데이터 삭제
	public int delete(int scode);
	
	//스토어회원 데이터 수정
	public int update(StoreMemVO storeMemVO);
	
}
