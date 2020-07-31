package org.yuyu.mapper;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.yuyu.domain.MemVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemOrderListMapperTests {
   
   @Setter(onMethod_=@Autowired)
   private MemOrderListMapper memOrderListMapper;
   
   //전체 조회 테스트
   @Test
   public void testGetList() {
      
	   log.info(memOrderListMapper.getList(44));
	      
   }

}

