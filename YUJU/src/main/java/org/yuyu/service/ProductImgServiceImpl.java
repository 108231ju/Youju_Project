package org.yuyu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.ProductImgVO;
import org.yuyu.mapper.ProductImgMapper;

import lombok.Setter;

@Service
public class ProductImgServiceImpl implements ProductImgService  {
	@Setter(onMethod_= @Autowired)
	ProductImgMapper productImgMapper;

	@Override
	public void insert(ProductImgVO productImgVO) {
		// TODO Auto-generated method stub
		
		productImgMapper.insert(productImgVO);
		
	}
	@Override
	public void delete(String uuid) {
		productImgMapper.delete(uuid);
		
	}

	@Override
	public ProductImgVO findByPcode(int pcode) {
		// TODO Auto-generated method stub
		return productImgMapper.findByPcode(pcode);
	}



}
