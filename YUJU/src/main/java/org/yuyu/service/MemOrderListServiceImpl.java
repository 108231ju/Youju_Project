package org.yuyu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.MemOrderListVO;
import org.yuyu.domain.MemReviewVO;
import org.yuyu.domain.ReviewVO;
import org.yuyu.mapper.MemMapper;
import org.yuyu.mapper.MemOrderListMapper;
import org.yuyu.mapper.MemReviewMapper;

import lombok.Setter;

@Service
public class MemOrderListServiceImpl implements MemOrderListService {
	@Setter(onMethod_= @Autowired)
	MemOrderListMapper memOrderListMapper;

	@Override
	public List<MemOrderListVO> getList(int mcode) {
		// TODO Auto-generated method stub
		return memOrderListMapper.getList(mcode);

	}	
};



