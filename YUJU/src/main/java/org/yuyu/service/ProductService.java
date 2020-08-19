package org.yuyu.service;

import org.yuyu.domain.ProductVO;
import org.yuyu.domain.StoreMemVO;

import java.util.List;

public interface ProductService {
	
	public List<ProductVO> getList();
	
	public List<ProductVO> getListForStore(int scode);
	
	public void insert(ProductVO productVO);
	
	public ProductVO read(int pcode);
	
	public boolean delete(int pcode);
	
	public boolean modify(ProductVO productVO);

	public int showPcode();

}


