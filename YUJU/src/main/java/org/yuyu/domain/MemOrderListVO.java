package org.yuyu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemOrderListVO {	
	private int ocode;
	private int pcode;
	private int scode;
	private int mcode;
	private int onum;
	private String sname;
	private String pname;
	private String p_detail;
	private int amount;
	private int total;
	private int totalprice;
	private String state;
	private Date updatedate;
}
