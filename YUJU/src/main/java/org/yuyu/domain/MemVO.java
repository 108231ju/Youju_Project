package org.yuyu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemVO {
	private String mcode;
	private String mname;
	private String mid;
	private String mpw;
	private String maddress;
	private String mphone;
	private String memail;
	private Date regdate;
	private Date updatedate;
}


