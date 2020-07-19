package org.yuyu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.MemVO;
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

}

