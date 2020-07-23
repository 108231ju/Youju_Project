package org.yuyu.domain;

import lombok.Data;

import java.util.Date;

@Data
public class ProductVO {
    private int pcode;
    private int scode;
    private String pname;
    private String psize;
    private String pcolor;
    private String pprice;
    private String pimg;
    private String cate1;
    private String cate2;
    private String cate3;
    private Date regdate;
    private Date updatedate;
}
