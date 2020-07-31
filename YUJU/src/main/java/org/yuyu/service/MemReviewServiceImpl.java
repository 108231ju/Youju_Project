package org.yuyu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.MemReviewVO;
import org.yuyu.domain.ReviewVO;
import org.yuyu.mapper.MemMapper;
import org.yuyu.mapper.MemReviewMapper;

import lombok.Setter;

@Service
public class MemReviewServiceImpl implements MemReviewService  {
	@Setter(onMethod_= @Autowired)
	MemReviewMapper memReviewMapper;

	@Override
	public List<MemReviewVO> getList(int mcode) {
		// TODO Auto-generated method stub
		return memReviewMapper.getList(mcode);

	}	
};



