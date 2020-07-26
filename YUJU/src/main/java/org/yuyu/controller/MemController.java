package org.yuyu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.yuyu.domain.MemVO;
import org.yuyu.domain.StoreMemVO;
import org.yuyu.service.MemService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user/*")
@Log4j
@AllArgsConstructor
public class MemController {
   
   @Setter(onMethod_=@Autowired)
   private MemService memService;
   
   @GetMapping("/index")
   public void index(Model model) {

      
   }
   @GetMapping("/nologin")
   public void nologin(Model model) {

      
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
   @PostMapping("/join4")
   public void register(HttpServletRequest httpServletRequest) {
      
      MemVO memVO = new MemVO();
      memVO.setMname(httpServletRequest.getParameter("mname"));
      memVO.setMid(httpServletRequest.getParameter("mid"));
      memVO.setMpw(httpServletRequest.getParameter("mpw"));
      memVO.setMphone(httpServletRequest.getParameter("mphone"));
      memVO.setMaddress(httpServletRequest.getParameter("maddress"));
      memVO.setMemail(httpServletRequest.getParameter("memail"));
      
      
      log.info("register......");
      
      memService.insert(memVO);
   
      
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
   @RequestMapping("/login")
   public String login() {
	   return "user/login";
   }
   @GetMapping("/market")
   public void market(Model model) {
	   

      
   }
   
   @GetMapping("/logout")
	public void logout(HttpSession httpSession){
		httpSession.removeAttribute("loginMem");
	}
   
	@PostMapping("/loginOk")
	public String loginCheck(String mid, String mpw, HttpSession httpSession){

		if(httpSession.getAttribute("loginMem") != null){
			httpSession.removeAttribute("loginMem");
		}

		MemVO MemVO = memService.loginOk(mid,mpw);

		if(MemVO != null ){
			httpSession.setAttribute("loginMem",MemVO);
			return "/user/indexuser";
		}

		else{
			return "/user/loginfail";
		}

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
}


