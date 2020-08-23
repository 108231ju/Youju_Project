package org.yuyu.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.ProductDetailVO;
import org.yuyu.mapper.ProductDetailMapper;

import lombok.Setter;

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

	@Override
	public List<ProductDetailVO> getList() {
		// TODO Auto-generated method stub
		return productMapper.getList();
	}

	@Override
	public List<ProductDetailVO> getProductPcode() {
		// TODO Auto-generated method stub
		return productMapper.getProductPcode();
	}

	@Override
	public List<String> getProductAmount(int pcode) {
		// TODO Auto-generated method stub
		List<Integer> list = productMapper.getProductAmount(pcode);
		List<String> slist = new ArrayList<>();
		for(int i =0; i < list.size(); i++) {
			slist.add(String.valueOf(list.get(i)));
		}
		
		return slist;
	}




}