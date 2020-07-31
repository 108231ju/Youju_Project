package org.yuyu.service;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemOrderListServiceTests {
   
   @Setter(onMethod_=@Autowired)
   private MemOrderListService service;
   

   
   
   @Test
   public void testgetlist() {
	   log.info(service.getList(44).get(0).getPname());
         }
   

}

