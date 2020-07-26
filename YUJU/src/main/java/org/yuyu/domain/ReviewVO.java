package org.yuyu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {
	
	private int rcode;		//리뷰번호
	private int scode;		//리뷰를 단 상품을 보유한 회원번호
	private int pcode;		//리뷰를 단 상품 번호
	private int mcode;		//리뷰를 단 회원 번호
	private String review;		//리뷰 내용
	private Date regdate;		//등록날짜
	private Date updateupdate;		//수정날짜

}
