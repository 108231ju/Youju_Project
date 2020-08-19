package org.yuyu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemProductListVO {	
	private int pcode;
	private int rcode;
	private int mcode;
	private int scode;
	private int today;
	private int bamount;
	private int btotal;
	private int best;
	private String pimg;
	private String cateCodeRef;
	private String cateName;
	private String cateCode;
	private String sname;
	private String pname;
	private String psize;
	private String pcolor;
	private String p_detail;
	private String review;
	private String state;
	private String question;
	private String answer;
	private String mid;
	private int pprice;
	private Date updatedate;
}
