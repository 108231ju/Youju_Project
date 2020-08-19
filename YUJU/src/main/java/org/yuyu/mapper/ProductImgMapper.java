package org.yuyu.mapper;


import org.yuyu.domain.ProductImgVO;
import org.yuyu.domain.ProductVO;

import java.util.List;

public interface ProductImgMapper {

    public void insert(ProductImgVO productImgVO);

    public void delete(String uuid);

    public List<ProductImgVO> findByPcode(int pcode);
}
