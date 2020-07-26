package org.yuyu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OrderListVO {
	private int ocode;  //주문 목록번호
	private int mcode;  //주문한 회원 번호
	private int totalprice; //총 주문 금액
	private String state;  //주문 처리 상태
	private Date regdate;  // 등록 날짜
	private Date updatedate; //수정 날짜
}

