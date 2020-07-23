package org.yuyu.service;

import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.ProductVO;
import org.yuyu.domain.StoreMemVO;
import org.yuyu.mapper.ProductMapper;
import org.yuyu.mapper.StoreMemMapper;

import java.util.List;

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


}



