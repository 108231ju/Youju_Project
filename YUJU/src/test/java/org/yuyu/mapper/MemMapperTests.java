package org.yuyu.mapper;


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
public class MemMapperTests {
	
	@Setter(onMethod_=@Autowired)
	private MemMapper memMapper;
	
	@Test
	public void testGetList() {
		
		memMapper.getList().forEach(mem->log.info(mem));
	}
	

}


