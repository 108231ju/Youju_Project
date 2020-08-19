package org.yuyu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class StoreOrderDetailVO {

	private int mcode; //주문한사람
	private String mid; //주문한사람
	private String mname; //주문한사람
	private int ocode; //주문번호
	private int onum;  //주문번호 - 일련번호
	private int pcode; //상품번호
	private int amount; // 상품 주문 수량
	private String state;
	private String p_detail; //주문 상품의 상세정보 ex) 빨강/L , 코발트블루/F
	private int total; //주문 총 가격 
	private Date updatedate;
	private Date regdate;

}
