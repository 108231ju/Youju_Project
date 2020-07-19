package org.yuyu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class StoreMemVO {
	
	private int scode;
	private String sname;
	private String sid;
	private String spw;
	private String stel;
	private String semail;
	private String sowner;
	private Date regdate;
	private Date updatedate;

}
