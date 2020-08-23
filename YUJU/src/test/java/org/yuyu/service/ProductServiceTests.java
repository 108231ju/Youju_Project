package org.yuyu.service;


import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ProductServiceTests {
	
	@Setter(onMethod_=@Autowired)
	private ProductDetailService service;
	

	
	
	@Test
	public void testinsert() {
		
		List<String> colorList = new ArrayList<>();
		List<String> sizeList = new ArrayList<>();
		
		for(int i =0; i < service.getProductPcode().size(); i++) {
				
				List<String> color = service.getProductColor(i);
				String.join(",", color);
				colorList.add(String.join(",", color));
				List<String> size = service.getProductSize(i);
				sizeList.add(String.join(",", size));
				

				System.out.println(colorList.get(i) + "//"+sizeList.get(i));
		}
		
		
	}
	
	

}


