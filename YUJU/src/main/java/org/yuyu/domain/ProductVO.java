package org.yuyu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ProductVO {
	
    private int pcode;
    private int scode;
    private String cateCode;
    private String pname;
    private String pthumbimg;
    private String pimg;
    private int pprice;
    private int best;
    private int today;
    private Date regdate;
    private Date updatedate;
    private String sibal="개시발";

}
