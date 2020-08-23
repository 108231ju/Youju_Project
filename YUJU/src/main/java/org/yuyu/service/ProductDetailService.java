package org.yuyu.service;

import org.yuyu.domain.ProductDetailVO;
import org.yuyu.domain.ProductVO;
import org.yuyu.domain.StoreOrderDetailVO;

import java.util.List;

public interface ProductDetailService {
	public void insert(ProductDetailVO productDetailVO);

	public List<ProductDetailVO> readWithPcode(int pcode);
	
	public List<String> getProductColor(int pcode);
	public List<String> getProductSize(int pcode);
	public List<String> getProductAmount(int pcode);
	public void deleteProductDetail(int pcode);
	public List<ProductDetailVO> getList();
	public List<ProductDetailVO> getProductPcode();


}