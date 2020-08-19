package org.yuyu.service;

import java.util.List;

import org.yuyu.domain.OrderDetailVO;
import org.yuyu.domain.StateVO;
import org.yuyu.domain.StoreOrderDetailVO;

public interface OrderDetailService {
	
	public List<OrderDetailVO> getList();
	
	public void insert(OrderDetailVO orderDetailVO);

	public void insertWithNewOnum(OrderDetailVO orderDetailVO);
	
	public OrderDetailVO read(int ocode);
	
	public boolean delete(int ocode,int onum);
	
	public boolean modify(OrderDetailVO orderDetailVO);
	
	public List<StoreOrderDetailVO> readPerStore(int scode);
	
	public int updateState(int ocode, int onum, String state);
	
	public List<StateVO> selectState(int scode);

}


