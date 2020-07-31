package org.yuyu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.yuyu.domain.MemOrderListVO;
import org.yuyu.domain.MemReviewVO;
import org.yuyu.domain.MemVO;
import org.yuyu.service.MemOrderListService;
import org.yuyu.service.MemReviewService;
import org.yuyu.service.MemService;
import org.yuyu.service.StoreMemService;

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
   
   private MemReviewService memReviewService;

   private MemOrderListService memOrderListService;
   
   @GetMapping("/index")
   public void index(Model model) {
	  
	   
   }
   @GetMapping("/nologin")
   public void nologin(Model model) {

      
   }
   @GetMapping("/basket")
   public void basket(Model model, HttpSession session) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }
      
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
      memVO.setMaddress1(httpServletRequest.getParameter("maddress1"));
      memVO.setMaddress2(httpServletRequest.getParameter("maddress2"));
      memVO.setMaddress3(httpServletRequest.getParameter("maddress3"));
      memVO.setMaddress4(httpServletRequest.getParameter("maddress4"));
      memVO.setMaddress5(httpServletRequest.getParameter("maddress5"));
      memVO.setMemail(httpServletRequest.getParameter("memail"));
      
      
      log.info("register......");
      
      memService.insert(memVO);
   
      
   }
   @GetMapping("/join4")
   public void join4(Model model) {

      
   }
   
   @GetMapping("/like")
   public void like(Model model, HttpSession session) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }
      
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
   public String loginCheck(Model model, String mid, String mpw, HttpSession httpSession){

      if(httpSession.getAttribute("loginMem") != null){
         httpSession.removeAttribute("loginMem");
      }

      MemVO memVO = memService.loginOk(mid,mpw);

      if(memVO != null ){
         httpSession.setAttribute("loginMem",memVO);
         return "/user/index";
      }
      else{
         return "/user/loginfail";
      }

   }
   @GetMapping("/marketadd")
   public void marketadd(Model model) {

      
   }
   
   @GetMapping("/mypage1")
   public void mypage1(Model model, HttpSession session) {
	   
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }
	   else {
			  MemVO memVO = (MemVO) session.getAttribute("loginMem");
			  model.addAttribute("order",memOrderListService.getList(memVO.getMcode()));
		   
	   }
   }
   
   @GetMapping("/mypage2")
   public void mypage2(Model model ,HttpSession httpSession){

		MemVO memVO = (MemVO) httpSession.getAttribute("loginMem");
		MemVO memVO2 = memService.read(memVO.getMcode());

		model.addAttribute("mem",memVO2);
  
}
   @GetMapping("/updatemypage2")
   public void updatemypage2(Model model, HttpSession session) {

	   MemVO memVO = (MemVO) session.getAttribute("loginMem");
		MemVO memVO2 = memService.read(memVO.getMcode());

		model.addAttribute("mem",memVO2);
	   

		//model.addAttribute("mem", (MemVO) session.getAttribute("loginMem"));
		
		
      
   }
   @PostMapping("/updateOk")
   public void updateOk(Model model, HttpSession session,HttpServletRequest httpServletRequest) {
	   MemVO memVO = new MemVO();
	   MemVO memVO1 = (MemVO) session.getAttribute("loginMem");
	   memVO1.setMname(httpServletRequest.getParameter("mname"));
	      memVO1.setMpw(httpServletRequest.getParameter("mpw"));
	      memVO1.setMphone(httpServletRequest.getParameter("mphone"));
	      memVO1.setMaddress1(httpServletRequest.getParameter("maddress1"));
	      memVO1.setMaddress2(httpServletRequest.getParameter("maddress2"));
	      memVO1.setMaddress3(httpServletRequest.getParameter("maddress3"));
	      memVO1.setMaddress4(httpServletRequest.getParameter("maddress4"));
	      memVO1.setMaddress5(httpServletRequest.getParameter("maddress5"));
	      memVO1.setMemail(httpServletRequest.getParameter("memail"));
	   memService.modify(memVO1);
      
   }
   @GetMapping("/mypage3")
   public void mypage3(Model model, HttpSession session) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }
	  MemVO memVO = (MemVO) session.getAttribute("loginMem");
	  model.addAttribute("list",memReviewService.getList(memVO.getMcode()));
      
   }
   
   @GetMapping("/mypage4")
   public void mypage4(Model model, HttpSession session) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }
      
   }
   
   @GetMapping("/mypage5")
   public void mypage5(Model model, HttpSession session) {

	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   } 
   }
   
   @GetMapping("/today")
   public void today(Model model) {

      
   }
}

