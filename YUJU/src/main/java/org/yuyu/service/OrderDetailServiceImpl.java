package org.yuyu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yuyu.domain.OrderDetailVO;
import org.yuyu.domain.StateVO;
import org.yuyu.domain.StoreOrderDetailVO;
import org.yuyu.mapper.OrderDetailMapper;

import lombok.Setter;

@Service
public class OrderDetailServiceImpl implements OrderDetailService  {
	@Setter(onMethod_= @Autowired)
	OrderDetailMapper mapper;

	@Override
	public List<OrderDetailVO> getList() {
		return mapper.getList();
	}
	
	@Override
	public void insert(OrderDetailVO orderDetailVO) {
		// TODO Auto-generated method stub
		
		mapper.insertSelectKey(orderDetailVO);
		
	}

	
	@Override
	public void insertWithNewOnum(OrderDetailVO orderDetailVO) {
		// TODO Auto-generated method stub
		
		mapper.insertSelectKeyForOnum(orderDetailVO);
		
	}

	@Override
	public OrderDetailVO read(int ocode) {
		// TODO Auto-generated method stub
		return mapper.read(ocode);
	}

	@Override
	public boolean delete(int ocode, int onum) {
		// TODO Auto-generated method stub
		return mapper.delete(ocode,onum) == 1;
	}

	@Override
	public boolean modify(OrderDetailVO orderDetailVO) {
		// TODO Auto-generated method stub
		return mapper.update(orderDetailVO) == 1;
	}
	
	@Override
	public List<StoreOrderDetailVO> readPerStore(int scode) {
		// TODO Auto-generated method stub
		return mapper.readPerStore(scode);
	}

	@Override
	public int updateState(int ocode, int onum, String state) {
		// TODO Auto-generated method stub
		return mapper.modifyOfState(ocode, onum, state);
	}

	@Override
	public List<StateVO> selectState(int scode) {
		// TODO Auto-generated method stub
		return mapper.selectState(scode);
	}

	@Override
	public void insertSelectKey(OrderDetailVO orderDetailVO) {
		// TODO Auto-generated method stub
		mapper.insertSelectKey(orderDetailVO);
	}

	@Override
	public List<OrderDetailVO> getListbyOcode(int ocode) {
		// TODO Auto-generated method stub
		return mapper.getListbyOcode(ocode);
	}

	@Override
	public void insertfrombasket(OrderDetailVO orderDetailVO) {
		// TODO Auto-generated method stub
		mapper.insertfrombasket(orderDetailVO);
	}

	@Override
	public OrderDetailVO readByPcode(int ocode, int pcode) {
		// TODO Auto-generated method stub
		return mapper.readByPcode(ocode, pcode);
	}

	

}

