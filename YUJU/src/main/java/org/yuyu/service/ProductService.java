package org.yuyu.service;

import java.util.List;

import org.yuyu.domain.ProductVO;

public interface ProductService {
	
	public List<ProductVO> getList();
	
	public List<ProductVO> getListForStore(int scode);

	public List<ProductVO> getListForPcode(int pcode);

	
	
	public void insert(ProductVO productVO);
	
	public ProductVO read(int pcode);
	
	public boolean delete(int pcode);
	
	public boolean modify(ProductVO productVO);

	public int showPcode();

}


