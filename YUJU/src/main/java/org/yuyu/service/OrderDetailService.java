package org.yuyu.service;

import java.util.List;

import org.yuyu.domain.OrderDetailVO;

public interface OrderDetailService {
	
	public List<OrderDetailVO> getList();
	
	public List<OrderDetailVO> getListbyOcode(int ocode);
	
	public void insert(OrderDetailVO orderDetailVO);

	public void insertSelectKey(OrderDetailVO orderDetailVO);

	public void insertfrombasket(OrderDetailVO orderDetailVO);

	public void insertWithNewOnum(OrderDetailVO orderDetailVO);
	
	public OrderDetailVO read(int ocode);
	
	public boolean delete(int ocode,int onum);
	
	public boolean modify(OrderDetailVO orderDetailVO);

}


