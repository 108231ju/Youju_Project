package org.yuyu.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.yuyu.domain.MemVO;
import org.yuyu.domain.OrderDetailVO;
import org.yuyu.domain.OrderListVO;
import org.yuyu.domain.ProductDetailVO;
import org.yuyu.domain.ProductImgVO;
import org.yuyu.domain.ProductVO;
import org.yuyu.domain.ReviewVO;
import org.yuyu.domain.StateVO;
import org.yuyu.domain.StoreMemVO;
import org.yuyu.domain.StoreOrderDetailVO;
import org.yuyu.service.CategoryService;
import org.yuyu.service.MemService;
import org.yuyu.service.OrderDetailService;
import org.yuyu.service.OrderListService;
import org.yuyu.service.ProductDetailService;
import org.yuyu.service.ProductImgService;
import org.yuyu.service.ProductService;
import org.yuyu.service.ReviewService;
import org.yuyu.service.StoreMemService;
import org.yuyu.utils.UploadFileUtils;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/storeMem/*")
@Log4j
@AllArgsConstructor
public class ReviewController {

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
	private OrderDetailService orderDetailService;
	
	@Resource(name = "uploadPath")
	private String uploadPath;


	@GetMapping("/reply-reviews-page")
	public void replyQuestionPage(HttpSession httpSession, @Param("rcode") int rcode) {

		StoreMemVO storeMemVO = (StoreMemVO) httpSession.getAttribute("loginStoreMem");
	}
	@GetMapping("/deleteReview")
	public void deleteReview(HttpSession httpSession, @Param("rcode") int rcode) {
		
		reviewService.remove(rcode);
		
	}

	@GetMapping("/review-product-page")
	public void questionProductPage(Model model, HttpSession httpSession) {

		StoreMemVO storeMemVO = (StoreMemVO) httpSession.getAttribute("loginStoreMem");
		
		List<ReviewVO> reviews = reviewService.getListByScode(storeMemVO.getScode());
		log.info("sdfsdfsfsd"+reviews.size());
		List<ProductVO> products = new ArrayList<>();
		List<OrderListVO> orders = new ArrayList<>();
		List<OrderDetailVO> orderDetails = new ArrayList<>();
		List<MemVO> mems = new ArrayList<>();
		for(int i=0; i< reviews.size(); i++) {
			products.add(productService.getListForPcode(reviews.get(i).getPcode()));
			log.info("jsdfjsdlfdjs"+products.get(i));
			mems.add(memService.read(reviews.get(i).getMcode()));
			orders.add(orderService.read(reviews.get(i).getOcode()));
			orderDetails.add(orderDetailService.readByPcode(reviews.get(i).getOcode(),reviews.get(i).getPcode()));
		}
		
		model.addAttribute("products",products);
		model.addAttribute("reviews",reviews);
		model.addAttribute("orders",orders);
		model.addAttribute("details",orderDetails);
		model.addAttribute("mems",mems);
		
		
		
	}





}
