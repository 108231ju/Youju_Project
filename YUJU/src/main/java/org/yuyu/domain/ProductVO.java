package org.yuyu.domain;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class ProductVO {
	
    private int pcode;
    private int scode;
    private String cateCode;
    private String pname;
    private int pprice;
    private int best;
    private int today;
    private Date regdate;
    private Date updatedate;

}
