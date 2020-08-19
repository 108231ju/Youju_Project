package org.yuyu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.P_basketVO;
import org.yuyu.mapper.P_basketMapper;

import lombok.Setter;

@Service
public class P_basketServiceImpl implements P_basketService  {
	@Setter(onMethod_= @Autowired)
	P_basketMapper p_basketMapper;

	@Override
	public List<P_basketVO> getList() {
		return p_basketMapper.getList();
	}

	@Override
	public void insert(P_basketVO p_basketVO) {
		// TODO Auto-generated method stub
		
		p_basketMapper.insertSelectKey(p_basketVO);
		
	}

	@Override
	public P_basketVO read(int pcode) {
		// TODO Auto-generated method stub
		return p_basketMapper.read(pcode);
	}

	@Override
	public boolean delete(int pcode) {
		// TODO Auto-generated method stub
		return p_basketMapper.delete(pcode) == 1;
	}
	@Override
	public boolean alldelete(int mcode) {
		// TODO Auto-generated method stub
		return p_basketMapper.alldelete(mcode) == 1;
	}

	@Override
	public boolean modify(P_basketVO p_basketVO) {
		// TODO Auto-generated method stub
		return p_basketMapper.update(p_basketVO) == 1;
	}

	

	


}



