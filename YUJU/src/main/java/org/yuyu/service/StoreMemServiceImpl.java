package org.yuyu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.StoreMemVO;

import lombok.Setter;
import org.yuyu.mapper.StoreMemMapper;

@Service
public class StoreMemServiceImpl implements StoreMemService  {
	@Setter(onMethod_= @Autowired)
	StoreMemMapper storeMemMapper;

	@Override
	public List<StoreMemVO> getList() {
		return storeMemMapper.getList();
	}

	@Override
	public void insert(StoreMemVO storeMemVO) {
		// TODO Auto-generated method stub
		
		storeMemMapper.insertSelectKey(storeMemVO);
		
	}

	@Override
	public StoreMemVO read(int scode) {
		// TODO Auto-generated method stub
		return storeMemMapper.read(scode);
	}

	@Override
	public boolean delete(int scode) {
		// TODO Auto-generated method stub
		return storeMemMapper.delete(scode) == 1;
	}

	@Override
	public boolean modify(StoreMemVO storeMemVO) {
		// TODO Auto-generated method stub
		return storeMemMapper.update(storeMemVO) == 1;
	}

	@Override
	public StoreMemVO login_check(String sid, String spw) {
		return storeMemMapper.login_check(sid,spw);
	}

}



