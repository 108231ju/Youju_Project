package org.yuyu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.MemVO;
import org.yuyu.domain.ReviewVO;
import org.yuyu.mapper.ReviewMapper;

import lombok.Setter;


@Service
public class ReviewServiceImpl implements ReviewService  {

	
	@Setter(onMethod_= @Autowired)
	ReviewMapper mapper;
	@Override
	public List<ReviewVO> getListPerStoreMem(int scode) {
		// TODO Auto-generated method stub
		return mapper.getList(scode);
	}

	@Override
	public void insert(ReviewVO reviewVO) {
		mapper.insertSelectKey(reviewVO);
		
	}


	@Override
	public ReviewVO read(int rcode) {
		// TODO Auto-generated method stub
		return mapper.read(rcode);
	}

	@Override
	public boolean remove(int rcode) {
		// TODO Auto-generated method stub
		return mapper.delete(rcode) ==1;
	}

	@Override
	public boolean modify(ReviewVO reviewVO) {
		// TODO Auto-generated method stub
		return mapper.update(reviewVO) == 1;
		
	}
	

}



