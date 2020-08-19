package org.yuyu.mapper;

import java.util.List;

import org.yuyu.domain.OrderListVO;

public interface OrderListMapper {
	
	// 주문 목록 전체 데이터 조회
	public List<OrderListVO> getList();

	public List<OrderListVO> ListbyMcode(int mcode);
	
	// 주문 목록 데이터 삽입
	public void insert(OrderListVO orderListVO);
	
	public void insertSelectKey(OrderListVO orderListVO);	
	//주문 목록 데이터 조회
	public OrderListVO read(int ocode);
	
	//주문 목록 데이터 삭제
	public int delete(int ocode);
	
	//주문 목록 데이터 수정
	public int update(OrderListVO orderListVO);
	
	
}







