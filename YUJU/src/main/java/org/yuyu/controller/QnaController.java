package org.yuyu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.yuyu.domain.MemVO;
import org.yuyu.domain.OrderListVO;
import org.yuyu.domain.ProductQnAVO;
import org.yuyu.domain.ProductVO;
import org.yuyu.domain.ReviewVO;
import org.yuyu.domain.StoreMemVO;
import org.yuyu.service.MemService;
import org.yuyu.service.OrderListService;
import org.yuyu.service.ProductQnAService;
import org.yuyu.service.ProductService;
import org.yuyu.service.ReviewService;
import org.yuyu.service.StoreMemService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/storeMem/*")
@Log4j
@AllArgsConstructor
public class QnaController {

	@Setter(onMethod_ = @Autowired)
	private ReviewService reviewService;
	

	@Setter(onMethod_ = @Autowired)
	private StoreMemService storeMemService;

	@Setter(onMethod_ = @Autowired)
	private ProductService productService;
	
	@Setter(onMethod_ = @Autowired)
	private MemService memService;

	@Setter(onMethod_ = @Autowired)
	private OrderListService orderService;
	
	@Setter(onMethod_ = @Autowired)
	private ProductQnAService qnaService;	
	
	@Resource(name = "uploadPath")
	private String uploadPath;

	@PostMapping("/reply-question-proc")
	public void replyProc(Model model, @Param("qnacode")int qnacode,String question, String answer, HttpSession httpSession) {
		StoreMemVO storeMemVO = (StoreMemVO) httpSession.getAttribute("loginStoreMem");
		log.info("sjfla;fdjkasdfjalsfl;asd"+answer);
		ProductQnAVO productQnAVO = qnaService.read(qnacode);
		productQnAVO.setQnacode(qnacode);
		productQnAVO.setQuestion(question);
		productQnAVO.setAnswer(answer);
		productQnAVO.setState("응답완료");
		qnaService.modify(productQnAVO);
		
		
		
	}
	

	@GetMapping("/reply-question-page")
	public void replyQuestionPage(Model model, @Param("qnaCode")int qnaCode,HttpSession httpSession) {
		StoreMemVO storeMemVO = (StoreMemVO) httpSession.getAttribute("loginStoreMem");
		ProductQnAVO productQnAVO = qnaService.read(qnaCode);
		MemVO memVO = memService.read(productQnAVO.getMcode());
		ProductVO product = productService.read(productQnAVO.getPcode());
		model.addAttribute("product", product);
		model.addAttribute("qna", productQnAVO);
		model.addAttribute("mem", memVO);
		
	}

	@GetMapping("/question-product-page")
	public void questionProductPage(Model model, HttpSession httpSession) {

		StoreMemVO storeMemVO = (StoreMemVO) httpSession.getAttribute("loginStoreMem");
		
		List<ProductQnAVO> qnas = qnaService.getList(storeMemVO.getScode());
		List<ProductVO> products = new ArrayList<>();
		List<OrderListVO> orders = new ArrayList<>();
		List<MemVO> mems = new ArrayList<>();
		for(int i=0; i< qnas.size(); i++) {
			products.add(productService.getListForPcode(qnas.get(i).getPcode()));
			mems.add(memService.read(qnas.get(i).getMcode()));
		}
		
		model.addAttribute("products",products);
		model.addAttribute("qnas",qnas);
		model.addAttribute("mems",mems);
		
		
		
	}





}
