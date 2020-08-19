package org.yuyu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.ProductVO;

import lombok.Setter;
import org.yuyu.mapper.ProductMapper;

@Service
public class ProductServiceImpl implements ProductService  {
	@Setter(onMethod_= @Autowired)
	ProductMapper productMapper;

	@Override
	public List<ProductVO> getList() {
		return productMapper.getList();
	}

	@Override
	public void insert(ProductVO productVO) {
		// TODO Auto-generated method stub
		
		productMapper.insertSelectKey(productVO);
		
	}

	@Override
	public ProductVO read(int pcode) {
		// TODO Auto-generated method stub
		return productMapper.read(pcode);
	}

	@Override
	public boolean delete(int pcode) {
		// TODO Auto-generated method stub
		return productMapper.delete(pcode) == 1;
	}

	@Override
	public boolean modify(ProductVO productVO) {
		// TODO Auto-generated method stub
		return productMapper.update(productVO) == 1;
	}

	@Override
	public int showPcode() {
		return productMapper.getRegisterablePcode();
	}

	@Override
	public List<ProductVO> getListForStore(int scode) {
		// TODO Auto-generated method stub
		return productMapper.getListForStore(scode);
	}

	@Override
	public List<ProductVO> getListForPcode(int pcode) {
		// TODO Auto-generated method stub
		return productMapper.getListForPcode(pcode);
	}

	

}
