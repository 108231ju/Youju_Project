package org.yuyu.mapper;

import org.yuyu.domain.MemVO;
import org.yuyu.domain.ProductDetailVO;
import org.yuyu.domain.ProductVO;

import java.util.List;

public interface ProductDetailMapper {
//
//	// 상품 전체 데이터 조회
//	public List<ProductVO> getList();
	
//	// 스토어 회원이 등록한 상품 전체 데이터 조회
//	public List<ProductVO> getListForStore(int scode);

	// 상품 데이터 삽입
	public void insert(ProductDetailVO productDetailVO);
	public List<ProductDetailVO> readWithPcode(int pcode);
	public List<String> getProductColor(int pcode);
	public List<String> getProductSize(int pcode);
	public List<Integer> getProductAmount(int pcode);
	public void deleteProductDetail(int pcode);
	public List<ProductDetailVO> getList();
	public List<ProductDetailVO> getProductPcode();
	
}