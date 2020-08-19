package org.yuyu.domain;

import lombok.Data;

import java.util.Date;

@Data
public class ProductImgVO {
    private String uuid;
    private String uploadPath;
    private String fileName;
    private String filetype;
    private int pcode;
}
