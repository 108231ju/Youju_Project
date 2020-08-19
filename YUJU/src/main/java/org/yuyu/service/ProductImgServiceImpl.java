package org.yuyu.service;

import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.ProductImgVO;
import org.yuyu.domain.ProductVO;
import org.yuyu.mapper.ProductImgMapper;
import org.yuyu.mapper.ProductMapper;

import java.util.List;

@Service
public class ProductImgServiceImpl implements ProductImgService  {
	@Setter(onMethod_= @Autowired)
	ProductImgMapper productImgMapper;

	@Override
	public void insert(ProductImgVO productImgVO) {
		// TODO Auto-generated method stub
		
		productImgMapper.insert(productImgVO);
		
	}



}



