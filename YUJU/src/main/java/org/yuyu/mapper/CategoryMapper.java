package org.yuyu.mapper;

import java.util.List;

import org.yuyu.domain.CategoryVO;

public interface CategoryMapper {
	
	public List<CategoryVO> getList();
	public CategoryVO readCate(String cateCode);
	public List<CategoryVO> getListForCateCode(String cateCodeRef);
	public String getCateName (int pcode);
	public String getCateCodeName (String cateCode);

}
