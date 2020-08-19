package org.yuyu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class P_basketVO {
	
	private int mcode;
	private int pcode;
	private int bamount;
	private int btotal;
	private String bsize;
	private String bcolor;
	private Date regdate;
	private Date updatedate;

}
