package org.yuyu.mapper;

import org.yuyu.domain.MemVO;
import org.yuyu.domain.ProductVO;

import java.util.List;

public interface ProductMapper {
	
	// 상품 전체 데이터 조회
	public List<ProductVO> getList();
	
	// 스토어 회원이 등록한 상품 전체 데이터 조회
	public List<ProductVO> getListForStore(int scode);

	// 상품 데이터 삽입
	public void insert(ProductVO product);
	public List<ProductVO> getListForPcode(int pcode);

	// 상품 데이터 삽입(상품번호 자동 업데이트)
	public void insertSelectKey(ProductVO productVO);
	
	//상품 데이터 조회
	public ProductVO read(int pcode);
	
	//상품 데이터 삭제
	public int delete(int pcode);
	
	//상품 데이터 수정
	public int update(ProductVO productVO);

	//등록시 조회할 다음 번호
	public int getRegisterablePcode();
	
}
