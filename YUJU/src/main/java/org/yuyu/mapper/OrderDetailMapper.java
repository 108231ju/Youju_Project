package org.yuyu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.yuyu.domain.MemVO;
import org.yuyu.domain.OrderDetailVO;
import org.yuyu.domain.StateVO;
import org.yuyu.domain.StoreOrderDetailVO;

public interface OrderDetailMapper {
	
	// 주문 상세목록 전체 리스트 데이터 조회
	public List<OrderDetailVO> getList();
	
	// 주문 상세목록 데이터 삽입
	public void insert(OrderDetailVO orderDetailVO);
	
	// 주문 상세목록 데이터 삽입(주문번호 자동 업데이트_)
	public void insertSelectKey(OrderDetailVO orderDetailVO);
	
	// 주문 상세목록 데이터 삽입(주문 일련 번호 자동 업데이트)
	public void insertSelectKeyForOnum(OrderDetailVO orderDetailVO);
	
	//주문 상세목록 데이터 조회
	public OrderDetailVO read(int ocode);
	
	//주문 상세목록 데이터 삭제
	public int delete(@Param("ocode") int ocode, @Param("onum") int onum);
	
	//주문 상세목록 데이터 수정
	public int update(OrderDetailVO orderDetailVO);
	
	public List<StoreOrderDetailVO> readPerStore(int scode);
	
	
	public int modifyOfState(@Param("ocode") int ocode, @Param("onum") int onum, @Param("state") String state);
	
	public List<StateVO> selectState(int scode);
	
}







