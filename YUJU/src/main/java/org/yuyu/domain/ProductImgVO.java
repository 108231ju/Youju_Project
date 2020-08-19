package org.yuyu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ProductImgVO {
    private String uuid;
    private String uploadPath;
    private String fileName;
    private String filetype;
    private int pcode;
}