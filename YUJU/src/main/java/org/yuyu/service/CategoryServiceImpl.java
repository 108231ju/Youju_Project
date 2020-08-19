package org.yuyu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.CategoryVO;
import org.yuyu.mapper.CategoryMapper;

import lombok.Setter;

@Service
public class CategoryServiceImpl implements CategoryService  {
	
	@Setter(onMethod_= @Autowired)
	CategoryMapper mapper;

	@Override
	public List<CategoryVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

	@Override
	public List<CategoryVO> getListForCateCode(String cateCodeRef) {
		// TODO Auto-generated method stub
		return mapper.getListForCateCode(cateCodeRef);
	}


}



