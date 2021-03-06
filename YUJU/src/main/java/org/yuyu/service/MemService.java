package org.yuyu.service;

import java.util.List;

import org.yuyu.domain.MemVO;
import org.yuyu.domain.StoreMemVO;

public interface MemService {
   
   public List<MemVO> getList();
   
   public void insert(MemVO memVO);
   
   public MemVO read(int mcode);
   
   public boolean delete(int mcode);
   
   public boolean modify(MemVO memVO);

   public MemVO loginOk(String mid, String mpw);



}
