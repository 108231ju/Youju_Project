package org.yuyu.service;

import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.ProductDetailVO;
import org.yuyu.domain.ProductVO;
import org.yuyu.domain.StoreOrderDetailVO;
import org.yuyu.mapper.ProductDetailMapper;
import org.yuyu.mapper.ProductMapper;

import java.util.List;

@Service
public class ProductDetailServiceImpl implements ProductDetailService  {
	@Setter(onMethod_= @Autowired)
	ProductDetailMapper productMapper;

	@Override
	public void insert(ProductDetailVO productDetailVO) {
		// TODO Auto-generated method stub
		
		productMapper.insert(productDetailVO);
		
	}

	@Override
	public List<ProductDetailVO> readWithPcode(int pcode) {
		// TODO Auto-generated method stub
		return productMapper.readWithPcode(pcode);
	}

	@Override
	public List<String> getProductColor(int pcode) {
		// TODO Auto-generated method stub
		return productMapper.getProductColor(pcode);
	}

	@Override
	public List<String> getProductSize(int pcode) {
		// TODO Auto-generated method stub
		return productMapper.getProductSize(pcode);
	}

	@Override
	public void deleteProductDetail(int pcode) {
		// TODO Auto-generated method stub
		productMapper.deleteProductDetail(pcode);
	}




}