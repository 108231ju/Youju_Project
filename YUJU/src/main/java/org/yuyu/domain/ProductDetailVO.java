package org.yuyu.domain;

import lombok.Data;

@Data
public class ProductDetailVO {
    private int pcode;  // 상품번호
    private String pcolor; // 상품 색상
    private String psize; // 상품 사이즈
    private int amount; // 상품 재고 수량

}
