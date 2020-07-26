package org.yuyu.service;

import java.util.List;

import org.yuyu.domain.OrderListVO;

public interface OrderListService {
	
	public List<OrderListVO> getList();
	
	public void insert(OrderListVO orderListVO);
	
	public OrderListVO read(int ocode);
	
	public boolean delete(int ocode);
	
	public boolean modify(OrderListVO orderListVO);

}


