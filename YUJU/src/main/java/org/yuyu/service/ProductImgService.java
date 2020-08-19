package org.yuyu.service;

import org.yuyu.domain.ProductImgVO;
import org.yuyu.domain.ProductVO;

import java.util.List;

public interface ProductImgService {

	
	public void insert(ProductImgVO productImgVO);
	
	public void delete(String uuid);
	
	public ProductImgVO findByPcode(int pcode);



}

