package org.yuyu.service;

import java.util.List;

import org.yuyu.domain.CategoryVO;

public interface CategoryService {
	
	
	public List<CategoryVO> getList();
	
	public List<CategoryVO> getListForCateCode(String cateCodeRef);
}


