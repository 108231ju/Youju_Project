package org.yuyu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.MemBasketListVO;
import org.yuyu.mapper.MemBasketListMapper;

import lombok.Setter;

@Service
public class MemBasketListServiceImpl implements MemBasketListService {
	@Setter(onMethod_= @Autowired)
	MemBasketListMapper memBasketListMapper;

	@Override
	public List<MemBasketListVO> getList(int mcode) {
		// TODO Auto-generated method stub
		return memBasketListMapper.getList(mcode);

	}

	@Override
	public void insert(MemBasketListVO memBasketListVO) {
		// TODO Auto-generated method stub
		memBasketListMapper.insert(memBasketListVO);
	}	
};



