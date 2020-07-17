package org.yuyu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.yuyu.domain.MemVO;
import org.yuyu.service.MemService;

import lombok.Setter;

@Controller
@RequestMapping("/*")
public class MemController {
	
	@Setter(onMethod_=@Autowired)
	private MemService memService;
	
	@GetMapping("/home")
	public void main(Model model) {
		List<MemVO> list = memService.getList();
		model.addAttribute("result",list.get(0).getMcode());
		model.addAttribute("list",list.get(0));
		
		
	}

}
