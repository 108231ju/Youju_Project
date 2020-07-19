package org.yuyu.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user/*")
<<<<<<< HEAD
@Log4j
@AllArgsConstructor
public class MemController{
=======
public class MemController {
>>>>>>> refs/heads/master
	
<<<<<<< HEAD
=======
	@Setter(onMethod_=@Autowired)
	private MemService memService;
	
	@GetMapping("/index")
	public void index(Model model) {

		
	}
	
	@GetMapping("/basket")
	public void basket(Model model) {

		
	}
	@GetMapping("/beauty")
	public void beauty(Model model) {

		
	}
	@GetMapping("/beautyadd")
	public void beautyadd(Model model) {

		
	}
	
	@GetMapping("/best")
	public void best(Model model) {

		
	}
	@GetMapping("/brand")
	public void brand(Model model) {

		
	}
	@GetMapping("/brandadd")
	public void brandadd(Model model) {

		
	}
	@GetMapping("/event")
	public void event(Model model) {

		
	}
	@GetMapping("/join1")
	public void join1(Model model) {

		
	}
	
	@GetMapping("/join2")
	public void join2(Model model) {

		
	}
	
	@GetMapping("/join3")
	public void join3(Model model) {

		
	}
	
	@GetMapping("/join4")
	public void join4(Model model) {

		
	}
	
	@GetMapping("/like")
	public void like(Model model) {

		
	}
	
	@GetMapping("/login")
	public void login(Model model) {

		
	}
	
	@GetMapping("/market")
	public void market(Model model) {

		
	}
	
	@GetMapping("/marketadd")
	public void marketadd(Model model) {

		
	}
	
	@GetMapping("/mypage1")
	public void mypage1(Model model) {

		
	}
	
	@GetMapping("/mypage2")
	public void mypage2(Model model) {

		
	}
	
	@GetMapping("/mypage3")
	public void mypage3(Model model) {

		
	}
	
	@GetMapping("/mypage4")
	public void mypage4(Model model) {

		
	}
	
	@GetMapping("/mypage5")
	public void mypage5(Model model) {

		
	}
	
	@GetMapping("/today")
	public void today(Model model) {

		
	}
>>>>>>> refs/heads/master
}



