package org.yuyu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.OrderListVO;
import org.yuyu.mapper.OrderListMapper;

import lombok.Setter;

@Service
public class OrderListServiceImpl implements OrderListService  {
	@Setter(onMethod_= @Autowired)
	OrderListMapper mapper;

	@Override
	public List<OrderListVO> getList() {
		return mapper.getList();
	}

	@Override
	public void insert(OrderListVO orderListVO) {
		// TODO Auto-generated method stub
		
		mapper.insert(orderListVO);
		
	}

	@Override
	public OrderListVO read(int ocode) {
		// TODO Auto-generated method stub
		return mapper.read(ocode);
	}

	@Override
	public boolean delete(int ocode) {
		// TODO Auto-generated method stub
		return mapper.delete(ocode) == 1;
	}

	@Override
	public boolean modify(OrderListVO orderListVO) {
		// TODO Auto-generated method stub
		return mapper.update(orderListVO) == 1;
	}

	@Override
	public void insertSelectKey(OrderListVO orderListVO) {
		// TODO Auto-generated method stub
		mapper.insertSelectKey(orderListVO);
	}

	@Override
	public List<OrderListVO> ListbyMcode(int mcode) {
		// TODO Auto-generated method stub
		return mapper.ListbyMcode(mcode);
	}

}



