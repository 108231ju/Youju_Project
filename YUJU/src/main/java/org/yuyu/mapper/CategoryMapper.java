package org.yuyu.mapper;

import java.util.List;

import org.yuyu.domain.CategoryVO;

public interface CategoryMapper {
	
	public List<CategoryVO> getList();
	public List<CategoryVO> getListForCateCode(String cateCodeRef);

}
