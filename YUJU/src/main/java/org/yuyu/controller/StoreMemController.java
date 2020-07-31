package org.yuyu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.yuyu.domain.ProductVO;
import org.yuyu.domain.StoreMemVO;
import org.yuyu.service.ProductService;
import org.yuyu.service.StoreMemService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/storeMem/*")
@Log4j
@AllArgsConstructor
public class StoreMemController{
	
	private StoreMemService storeMemService;
	
	private ProductService productService
	;
	
	
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("member list.....");
		model.addAttribute("list",storeMemService.getList()); // List<storMem>
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

	@GetMapping("/logincheck")
	public String loginCheck2() {
		return "/storeMem/no-login-proc";
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
	public void updateProductPage(Model model){
		
	}
	
	
	
	@GetMapping("/searchforitem")
	public String searchforitem(Model model,@RequestParam("search") String search,RedirectAttributes rttr,HttpSession httpSession){
		
		StoreMemVO storeMemVO = (StoreMemVO) httpSession.getAttribute("loginStoreMem");
		List<ProductVO> plist =productService.getListForStore(storeMemVO.getScode());
		List<ProductVO> searchlist = new ArrayList<>();
		int check =0;
		if(search.equals("")) {
		}
		else {
			for(int i=0; i< plist.size();i++) {
				
				if(plist.get(i).getPname().contains(search)){
					searchlist.add(plist.get(i));
					log.info("searchitem"+plist.get(i).getPname());
					check++;
				}
			}
		}
		
		if(check > 0) {
			log.info(check);
			log.info("find Item");
			rttr.addFlashAttribute("result",searchlist.size());
			rttr.addFlashAttribute("searchlist",searchlist);
		}
		else {
			rttr.addFlashAttribute("result","2");
		}
		rttr.addFlashAttribute("search",search);
		return "redirect:/storeMem/update-product-page";
	}


	@GetMapping("/question-product-page")
	public void questionProductPage(){
	}
	
	@GetMapping("/register-product-page")
	public void registerProductPage(){
	}

	
	@GetMapping("/find-info-page")
	public void findInfoPage(){
	}

	
	@GetMapping("/find-info-page")
	public void findInfoPage(){
	}





}



