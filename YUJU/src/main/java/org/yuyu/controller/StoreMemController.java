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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

@Controller
@RequestMapping("/storeMem/*")
@Log4j
@AllArgsConstructor
public class StoreMemController{
	
	private StoreMemService storeMemService;
	
	
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("member list.....");
		model.addAttribute("list",storeMemService.getList());
	}


	@GetMapping("/register-proc")
	public void registerOk(){
	}


	@PostMapping("/register")
	public String register(StoreMemVO storeMemVO, RedirectAttributes rttr) {
		log.info("register......");
		
		storeMemService.insert(storeMemVO);

		return "/storeMem/register-proc";
		
	}
	
	@GetMapping("/get")
	public void get(@RequestParam("mcode") int mcode,Model model) {
		log.info("/get");
		model.addAttribute("mem",storeMemService.read(mcode));
		
	}
	
	@PostMapping("/modify")
	public String modify(StoreMemVO storeMemVO, RedirectAttributes rttr) {

		log.info("modify : "+ storeMemVO.getScode());

		if(storeMemService.modify(storeMemVO) == true){
		}
		return "redirect:/storeMem/info-mem-page";
	}
	
	@GetMapping("/remove")
	public String modify(HttpSession httpSession) {

		StoreMemVO storeMem = (StoreMemVO)httpSession.getAttribute("loginStoreMem");
		if(storeMemService.delete(storeMem.getScode()) != false) {
			log.info("remove : "+ storeMem.getScode());
			httpSession.removeAttribute("loginStoreMem");
		}
		return "/storeMem/signout-proc";
	}
	
	@GetMapping("/index")
	public void index(){
	}

	@GetMapping("/register-page")
	public void register(){
	}
	@GetMapping("/signout-page")
	public void signout(){
	}


	@GetMapping("/login-page")
	public void login(){
	}

	@GetMapping("/login-fail-proc")
	public void loginFail(){
	}

	@GetMapping("/no-login-proc")
	public void noLogin(){
	}

	@GetMapping("/logout-proc")
	public void logout(HttpSession httpSession){
		httpSession.removeAttribute("loginStoreMem");
	}

	@PostMapping("/logincheck")
	public String loginCheck(String sid, String spw, HttpSession httpSession){

		if(httpSession.getAttribute("loginStoreMem") != null){
			httpSession.removeAttribute("loginStoreMem");
		}

		StoreMemVO storeMemVO = storeMemService.login_check(sid,spw);

		if(storeMemVO != null ){
			httpSession.setAttribute("loginStoreMem",storeMemVO);
			return "/storeMem/index";
		}

		else{
			return "/storeMem/login-fail-proc";
		}

	}
	
	@GetMapping("/info-product-page")
	public void infoProductPage(){
	}
	
	@GetMapping("/info-mem-page")
	public void infoMemPage(Model model ,HttpSession httpSession){
		StoreMemVO storeMemVO = (StoreMemVO) httpSession.getAttribute("loginStoreMem");
		StoreMemVO storeMemVO2 = storeMemService.read(storeMemVO.getScode());

		model.addAttribute("smem",storeMemVO2);
	}
	
	@GetMapping("/info-delivery-page")
	public void infoDeliveryPage(){
	}
	@GetMapping("/info-order-page")
	public void infoOrderPage(){
	}

	@GetMapping("/update-product-page")
	public void updateProductPage(){
	}



	@GetMapping("/question-product-page")
	public void questionProductPage(){
	}

	
	@GetMapping("/find-info-page")
	public void findInfoPage(){
	}





}



