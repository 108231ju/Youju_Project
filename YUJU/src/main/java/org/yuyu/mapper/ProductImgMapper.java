package org.yuyu.mapper;


import org.yuyu.domain.ProductImgVO;

import java.util.List;

public interface ProductImgMapper {

    public void insert(ProductImgVO productImgVO);

    public void delete(String uuid);

    public ProductImgVO findByPcode(int pcode);
}
