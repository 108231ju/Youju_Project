package org.yuyu.service;

import java.util.List;

import javax.inject.Inject;
import javax.xml.stream.events.Namespace;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.MemVO;
import org.yuyu.domain.StoreMemVO;
import org.yuyu.mapper.MemMapper;

import lombok.Setter;

@Service
public class MemServiceImpl implements MemService  {
	@Setter(onMethod_= @Autowired)
	MemMapper memMapper;

	
	@Override
	public List<MemVO> getList() {
		return memMapper.getList();
	}

	@Override
	public void insert(MemVO memVO) {
		// TODO Auto-generated method stub
		
		memMapper.insertSelectKey(memVO);
		
	}

	@Override
	public MemVO read(int mcode) {
		// TODO Auto-generated method stub
		return memMapper.read(mcode);
	}

	@Override
	public boolean delete(int mcode) {
		// TODO Auto-generated method stub
		return memMapper.delete(mcode) == 1;
	}

	@Override
	public boolean modify(MemVO memVO) {
		// TODO Auto-generated method stub
		return memMapper.update(memVO) == 1;
	}
	
	@Override
	public MemVO loginOk(String mid, String mpw) {
		return memMapper.loginOk(mid,mpw);
	}
}



