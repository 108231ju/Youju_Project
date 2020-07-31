package org.yuyu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemReviewVO {	
	private int ocode;
	private int mcode;
	private int rcode;
	private String pname;
	private String sname;	
	private String p_detail;
	private String review;
	private Date updatedate;
}
