package org.yuyu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.LikeItemVO;
import org.yuyu.mapper.LikeItemMapper;

import lombok.Setter;

@Service
public class LikeItemServiceImpl implements LikeItemService  {
	
	@Setter(onMethod_= @Autowired)
	LikeItemMapper mapper;

	@Override
	public List<LikeItemVO> getListPerMem(int mcode) {
		// TODO Auto-generated method stub
		return mapper.getListPerMem(mcode);
	}

	@Override
	public void insert(LikeItemVO likeItemVO) {
		// TODO Auto-generated method stub
		mapper.insert(likeItemVO);
	}

	@Override
	public LikeItemVO read(int mcode, int pcode) {
		// TODO Auto-generated method stub
		return mapper.read(mcode, pcode);
	}

	@Override
	public boolean delete(int mcode, int pcode) {
		// TODO Auto-generated method stub
		return mapper.delete(mcode, pcode) == 1;
	}


}



