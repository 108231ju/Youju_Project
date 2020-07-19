package org.yuyu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import org.yuyu.domain.StoreMemVO;
import org.yuyu.service.MemService;
import org.yuyu.service.StoreMemService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/admin/*")
@Log4j
@AllArgsConstructor
public class StoreMemController{
	
	private StoreMemService storeMemService;
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("member list.....");
		model.addAttribute("list",storeMemService.getList());
	}
	
	@PostMapping("/register")
	public String register(StoreMemVO storeMemVO, RedirectAttributes rttr) {
		log.info("register......");
		
		storeMemService.insert(storeMemVO);
		
		rttr.addFlashAttribute("result",storeMemVO.getScode());
		
		return "redirect:/admin/list";
		
	}
	
	@GetMapping("/get")
	public void get(@RequestParam("mcode") int mcode,Model model) {
		log.info("/get");
		model.addAttribute("mem",storeMemService.read(mcode));
		
	}
	
	@PostMapping("/modify")
	public String modify(StoreMemVO storeMemVO, RedirectAttributes rttr) {
		log.info("modify : "+ storeMemVO.getScode());
		
		if(storeMemService.modify(storeMemVO)) {
			rttr.addAttribute("result", "success");
		}
		
		return "redirect:/admin/list";
	}
	
	@PostMapping("/remove")
	public String modify(@RequestParam("scode") int scode, RedirectAttributes rttr) {
		log.info("remove : "+ scode);
		
		if(storeMemService.delete(scode)) {
			rttr.addAttribute("result", "success");
		}
		
		return "redirect:/admin/list";
	}
	
	@GetMapping("/index")
	public void index(Model model){
		model.addAttribute("storeMem",storeMemService.read(1));
	}
	@GetMapping("/login")
	public void login(){
	}

}



