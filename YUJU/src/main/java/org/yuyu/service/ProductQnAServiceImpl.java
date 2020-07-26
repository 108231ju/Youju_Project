package org.yuyu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.ProductQnAVO;
import org.yuyu.mapper.ProductQnAMapper;

import lombok.Setter;

@Service
public class ProductQnAServiceImpl implements ProductQnAService  {
	@Setter(onMethod_= @Autowired)
	ProductQnAMapper mapper;

	@Override
	public List<ProductQnAVO> getList(int scode) {
		return mapper.getList(scode);
	}

	@Override
	public void insert(ProductQnAVO productQnAVO) {
		// TODO Auto-generated method stub
		
		mapper.insertSelectKey(productQnAVO);
		
	}

	@Override
	public ProductQnAVO read(int qnacode) {
		// TODO Auto-generated method stub
		return mapper.read(qnacode);
	}

	@Override
	public boolean delete(int qnacode) {
		// TODO Auto-generated method stub
		return mapper.delete(qnacode) == 1;
	}

	@Override
	public boolean modify(ProductQnAVO productQnAVO) {
		// TODO Auto-generated method stub
		return mapper.update(productQnAVO) == 1;
	}

}



