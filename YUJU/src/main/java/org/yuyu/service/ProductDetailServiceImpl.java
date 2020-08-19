package org.yuyu.service;

import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.ProductDetailVO;
import org.yuyu.domain.ProductVO;
import org.yuyu.mapper.ProductDetailMapper;
import org.yuyu.mapper.ProductMapper;

import java.util.List;

@Service
public class ProductDetailServiceImpl implements ProductDetailService  {
	@Setter(onMethod_= @Autowired)
	ProductDetailMapper productMapper;

//	@Override
//	public List<ProductVO> getList() {
//		return productMapper.getList();
//	}


	@Override
	public void insert(ProductDetailVO productDetailVO) {
		// TODO Auto-generated method stub
		
		productMapper.insert(productDetailVO);
		
	}

//	@Override
//	public ProductVO read(int pcode) {
//		// TODO Auto-generated method stub
//		return productMapper.read(pcode);
//	}
//
//	@Override
//	public boolean delete(int pcode) {
//		// TODO Auto-generated method stub
//		return productMapper.delete(pcode) == 1;
//	}
//
//	@Override
//	public boolean modify(ProductVO productVO) {
//		// TODO Auto-generated method stub
//		return productMapper.update(productVO) == 1;
//	}
//
//	@Override
//	public int showPcode() {
//		return productMapper.getRegisterablePcode();
//	}
//
//	@Override
//	public List<ProductVO> getListForStore(int scode) {
//		// TODO Auto-generated method stub
//		return productMapper.getListForStore(scode);
//	}


}



