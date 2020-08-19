package org.yuyu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemQuestionListVO {	
	private int qnacode;
	private String sname;
	private String pname;
	private String state;
	private String question;
	private String answer;
	private Date updatedate;
}
