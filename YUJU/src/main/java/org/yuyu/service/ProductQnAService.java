package org.yuyu.service;

import java.util.List;

import org.yuyu.domain.MemVO;
import org.yuyu.domain.ProductQnAVO;

public interface ProductQnAService {
	
	public List<ProductQnAVO> getList(int scode);
	
	public void insert(ProductQnAVO pqaVO);
	
	public ProductQnAVO read(int qnacode);
	
	public boolean delete(int qnacode);
	
	public boolean modify(ProductQnAVO pqaVO);

	public void insertSelectKey(ProductQnAVO productQnAVO);

}


