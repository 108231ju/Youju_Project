package org.yuyu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ProductQnAVO {
	
	private int qnacode;  //상품 문의 번호
	private int scode;   //해당 상품 스토어 번호
	private int mcode;  // 문의한 회원 번호 
	private int pcode;  //문의한 상품 번호
	private String question;  //문의 내용
	private String answer;  //문의 답변
	private Date regdate;  //등록날짜
	private Date updateupdate;  // 수정날짜 

}
