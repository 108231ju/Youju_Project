package org.yuyu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemOrderListVO {	
	private int ocode;
	private int onum;
	private int mcode;
	private String pimg;
	private String sname;
	private String pname;
	private String p_detail;
	private int amount;
	private int total;
	private String state;
	private Date updatedate;
}
