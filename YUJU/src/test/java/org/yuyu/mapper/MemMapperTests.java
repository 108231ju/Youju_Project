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
public class MemMapperTests {
   
   @Setter(onMethod_=@Autowired)
   private MemMapper memMapper;
   
   //전체 조회 테스트
   @Test
   public void testGetList() {
      
      memMapper.getList().forEach(mem->log.info(mem));
   }
   
   //회원등록 테스트
   @Test
   public void testinsert() {
      
      MemVO memVO = new MemVO();
      memVO.setMcode(2);
      memVO.setMname("최현주");
      memVO.setMemail("juju@gmail.com");
      memVO.setMphone("010-7657-1604");
      memVO.setMid("juju");
      memVO.setMpw("1111");
      
      memMapper.insert(memVO);
      
      log.info(memVO);
   }
   
   //회원 조회 테스트
   @Test
   public void testread() {
      log.info(memMapper.read(2));
      
   }
   
   //회원 삭제 테스트
   @Test
   public void testdelete() {
      log.info(memMapper.delete(2));
      
   }
   
   //회원 수정 테스트
   @Test
   public void testupdate() {
      MemVO memVO = memMapper.read(1);
      memVO.setMemail("novely2766@gmail.com");
      log.info(memMapper.update(memVO));
      
   }
   

}

