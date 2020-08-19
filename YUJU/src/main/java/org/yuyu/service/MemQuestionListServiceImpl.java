package org.yuyu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.MemOrderListVO;
import org.yuyu.domain.MemQuestionListVO;
import org.yuyu.mapper.MemQuestionListMapper;

import lombok.Setter;

@Service
public class MemQuestionListServiceImpl implements MemQuestionListService {
	@Setter(onMethod_= @Autowired)
	MemQuestionListMapper memQuestionListMapper;

	@Override
	public List<MemQuestionListVO> getList(int mcode) {
		// TODO Auto-generated method stub
		return memQuestionListMapper.getList(mcode);

	}	
};



