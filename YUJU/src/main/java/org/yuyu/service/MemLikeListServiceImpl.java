package org.yuyu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.MemLikeListVO;
import org.yuyu.mapper.MemLikeListMapper;

import lombok.Setter;

@Service
public class MemLikeListServiceImpl implements MemLikeListService {
	@Setter(onMethod_= @Autowired)
	MemLikeListMapper memLikeListMapper;

	@Override
	public List<MemLikeListVO> getList(int mcode) {
		// TODO Auto-generated method stub
		return memLikeListMapper.getList(mcode);

	}	
};



