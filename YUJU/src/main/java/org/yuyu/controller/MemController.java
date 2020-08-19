package org.yuyu.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.yuyu.domain.LikeItemVO;
import org.yuyu.domain.MemProductListVO;
import org.yuyu.domain.MemVO;
import org.yuyu.domain.OrderDetailVO;
import org.yuyu.domain.OrderListVO;
import org.yuyu.domain.P_basketVO;
import org.yuyu.domain.ProductQnAVO;
import org.yuyu.domain.ReviewVO;
import org.yuyu.service.LikeItemService;
import org.yuyu.service.MemBasketListService;
import org.yuyu.service.MemLikeListService;
import org.yuyu.service.MemOrderListService;
import org.yuyu.service.MemProductListService;
import org.yuyu.service.MemQuestionListService;
import org.yuyu.service.MemReviewService;
import org.yuyu.service.MemService;
import org.yuyu.service.OrderDetailService;
import org.yuyu.service.OrderListService;
import org.yuyu.service.P_basketService;
import org.yuyu.service.ProductQnAService;
import org.yuyu.service.ProductService;
import org.yuyu.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user/*")
@Log4j
@AllArgsConstructor
public class MemController {
	private static final Logger logger = LoggerFactory.getLogger(MemController.class);
   @Inject MemProductListService memProductListService2;
	
   @Setter(onMethod_=@Autowired)
   private MemService memService; 
   
   @Setter(onMethod_=@Autowired)
   private MemReviewService memReviewService;
   
   @Setter(onMethod_=@Autowired)
   private MemOrderListService memOrderListService;
   
   @Setter(onMethod_=@Autowired)
   private MemQuestionListService memQuestionListService;
   
   @Setter(onMethod_=@Autowired)
   private MemBasketListService memBasketListService;
   
   @Setter(onMethod_=@Autowired)
   private MemLikeListService memLikeListService; 
   
   @Setter(onMethod_=@Autowired)
   private MemProductListService memProductListService;
   
   @Setter(onMethod_=@Autowired)
   private P_basketService p_basketService;

   @Setter(onMethod_=@Autowired)
   private OrderListService orderListService;

   @Setter(onMethod_=@Autowired)
   private OrderDetailService orderDetailService;
 
   @Setter(onMethod_=@Autowired)
   private ProductService productService;
  
   @Setter(onMethod_=@Autowired)
   private LikeItemService likeItemService;
  
   @Setter(onMethod_=@Autowired)
   private ProductQnAService productQnAService;
  
   @Setter(onMethod_=@Autowired)
   private LikeItemService likeitemService;

   @Setter(onMethod_=@Autowired)
   private ReviewService reviewService;
   
   
   
   
   @GetMapping("/index")
   public void index(Model model) {   
		   model.addAttribute("list",memProductListService.getList());
	   }
   @GetMapping("/nologin")
   public void nologin(Model model) {

      
   }
   @GetMapping("/basket")
   public void basket(Model model, HttpSession session) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }
	   MemVO memVO = (MemVO) session.getAttribute("loginMem");
	   model.addAttribute("list",memBasketListService.getList(memVO.getMcode()));
   }
   
   @PostMapping("/buy")
   public void buy(Model model, HttpSession session) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }
	   MemVO memVO = (MemVO) session.getAttribute("loginMem");
	   model.addAttribute("list",memBasketListService.getList(memVO.getMcode()));
	   MemVO memVO2 = memService.read(memVO.getMcode());
	   model.addAttribute("mem",memVO2);
   }
   
   
   @PostMapping("/OrderOk")
   public void OrderOk(Model model, HttpSession session, int totalprice, String pcode, @RequestParam("bamount") String amount, String p_detail, String total) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }
	   MemVO memVO = (MemVO) session.getAttribute("loginMem");
	   OrderListVO orderListVO = new OrderListVO();
	   orderListVO.setMcode(memVO.getMcode());
	   orderListVO.setTotalprice(totalprice);
	   	   
	   orderListService.insertSelectKey(orderListVO);
	   String[] pcodes = {};
	   pcodes = pcode.split(",");

	   String[] amounts = {};
	   amounts = amount.split(",");
	   
	   String[] p_details = {};
	   p_details = p_detail.split(",");
	   
	   String[] totals = {};
	   totals = total.split(",");
	   
	   //for문
	   OrderDetailVO orderDetailVO = new OrderDetailVO();
	   for(int i = 0;i<pcodes.length;i++) {
	   orderDetailVO.setPcode(Integer.parseInt(pcodes[i]));
	   orderDetailVO.setAmount(Integer.parseInt(amounts[i]));
	   orderDetailVO.setP_detail(p_details[i]);
	   orderDetailVO.setTotal(Integer.parseInt(totals[i]));
	   orderDetailService.insertfrombasket(orderDetailVO);
	   }
	   
	   
	   /*
	   OrderDetailVO orderDetailvo = new OrderDetailVO();
	   orderDetailvo.setPcode(pcode);
	   orderDetailvo.setAmount(amount);
	   orderDetailvo.setP_detail(p_detail);
	   orderDetailvo.setTotal(total);*/
	   
	  
   }
   @PostMapping("/OrderOk2")
   public void OrderOk2(Model model, HttpSession session, int totalprice, int pcode, int amount, String p_detail, int total, OrderDetailVO orderDetailVO) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }
	   MemVO memVO = (MemVO) session.getAttribute("loginMem");
	   OrderListVO orderListVO = new OrderListVO();
	   orderListVO.setMcode(memVO.getMcode());
	   orderListVO.setTotalprice(totalprice);
	   
	   orderListService.insertSelectKey(orderListVO);
	  
	   
	   OrderDetailVO orderDetailvo = new OrderDetailVO();
	   orderDetailvo.setPcode(pcode);
	   orderDetailvo.setAmount(amount);
	   orderDetailvo.setP_detail(p_detail);
	   orderDetailvo.setTotal(total);
	    orderDetailService.insertfrombasket(orderDetailVO);
	   
   }
   @PostMapping("/basketupdateOk")
   public void basketupdateOk(Model model, HttpSession session, int bamount) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }
	   MemVO memVO = (MemVO) session.getAttribute("loginMem");
	  P_basketVO p_basketVO = new P_basketVO();
	  p_basketVO.setMcode(memVO.getMcode());
	  p_basketVO.setBamount(bamount);
	      
	   p_basketService.modify(p_basketVO);
	   
	   
   }
   @GetMapping("/beauty")
   public void beauty(Model model) {

      
   }
   @GetMapping("/qwrite")
   public void Getqwrite(Model model,@RequestParam("pcode") int pcode, HttpSession session) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }else {
		   MemVO memvo = (MemVO) session.getAttribute("loginMem"); 
		MemProductListVO memProductListVO = memProductListService.view(pcode);
		model.addAttribute("view", memProductListVO);
		model.addAttribute("color",memProductListService.color(memProductListVO.getPcode()));
		model.addAttribute("size",memProductListService.size(memProductListVO.getPcode()));
		model.addAttribute("review",memProductListService.review(memProductListVO.getPcode()));
		model.addAttribute("read",memService.read(memvo.getMcode()));
	   
	   }
   }
   @PostMapping("/qinsertOk")
   public void Postwrite(Model model ,HttpSession session,  String question, int scode, int pcode) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }else {
	   MemVO memvo = (MemVO) session.getAttribute("loginMem");
	   log.info(memvo.getMname()+"************************************");
	   ProductQnAVO productQnAVO = new ProductQnAVO();
	   productQnAVO.setMcode(memvo.getMcode());
	   productQnAVO.setPcode(pcode);
	   productQnAVO.setScode(scode);
	   productQnAVO.setQuestion(question);
	   
	   
	   productQnAService.insertSelectKey(productQnAVO);
	   
	   }
	   
   }
   @GetMapping("/qdeleteOk")
   public void qdeleteOk(Model model ,HttpSession session,int qnacode) {
	   log.info(qnacode+"************************8");
	   // ProductQnAVO productQnAVO = new ProductQnAVO(); 
	     productQnAService.delete(qnacode);
	  
	   
   }

   @GetMapping("/beautyadd")
   public void beautyadd(Model model) {
	   
	   
   }
   @GetMapping("/test2")
   public void test2(Model model) {
	   
	   
   }
   @PostMapping("/test3")
   public void test3(Model model) {
	   
	   
   }
   /*
   @PostMapping("/buy")
   public void postbuy(Model model) {
	   
	   
   }
   @GetMapping("/buy")
   public void getbuy(Model model,HttpSession session, int pcode) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }else {
		   MemVO memvo = (MemVO) session.getAttribute("loginMem");
		   
		   log.info(pcode);
		  
	   }
	   
   }*/
   /*@PostMapping("/buy")
   public void postbuy(Model model,int pcode,HttpSession session, @RequestParam("btotal") int totalprice, @RequestParam("bamount") int amount, String bcolor,String bsize, @RequestParam("btotal") int total, String state) {
	   
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }else {
		   log.info(pcode); 
		   log.info(totalprice); 
		   log.info(amount); 
		   log.info(bcolor); 
		   log.info(bsize); 
		   log.info(total); 
		 
		   MemVO memvo = (MemVO) session.getAttribute("loginMem");
		   OrderListVO orderListVO = new OrderListVO();
		   orderListVO.setMcode(memvo.getMcode());
		   orderListVO.setTotalprice(totalprice); 
		   orderListService.insertSelectKey(orderListVO);
		   OrderDetailVO orderDetailVO = new OrderDetailVO();
		   orderDetailVO.setAmount(amount);
		   orderDetailVO.setOcode(orderListVO.getOcode());
		   orderDetailVO.setP_detail(bcolor+"/"+bsize);
		   orderDetailVO.setPcode(pcode);
		   orderDetailVO.setTotal(total);
		   log.info(orderDetailVO); 
		   orderDetailService.insertSelectKey(orderDetailVO);
		   
	   }
   }*/

  
   @PostMapping("/basketinsertOk")
   public void basketinsertOk(Model model,HttpServletRequest httpServletRequest ,HttpSession session, int pcode, int bamount, String bsize, String bcolor, int btotal) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }else {
	   MemVO memvo = (MemVO) session.getAttribute("loginMem");
	   log.info(memvo.getMname()+"************************************");
	   P_basketVO p_basketVO = new P_basketVO();
	   p_basketVO.setMcode(memvo.getMcode());
	   p_basketVO.setPcode(pcode);
	   p_basketVO.setBamount(bamount);
	   p_basketVO.setBsize(bsize);
	   p_basketVO.setBcolor(bcolor);
	   p_basketVO.setBtotal(btotal);
	   
	   p_basketService.insert(p_basketVO);
	   }
	   
   }
   @GetMapping("/basketdeleteOk")
   public void basketdeletOk(Model model ,int pcode) {
	   log.info(pcode+"************************8");
	   // ProductQnAVO productQnAVO = new ProductQnAVO(); 
	     p_basketService.delete(pcode);
	  
	   
   }
   @GetMapping("/allbasketdeleteOk")
   public void allbasketdeleteOk(Model model ,HttpSession session) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }else {
		   MemVO memvo = (MemVO) session.getAttribute("loginMem");
	  
	   // ProductQnAVO productQnAVO = new ProductQnAVO(); 
	   p_basketService.alldelete(memvo.getMcode());
	   }
	   
   }
   
   @GetMapping("/product1")
   public void product1(Model model, @RequestParam("pcode") int pcode) {
	//MemProductListVO memProductListVO2 = memProductListService.read(memProductListVO.getPcode());
	MemProductListVO memProductListVO = memProductListService.view(pcode);
	model.addAttribute("view", memProductListVO);	
	model.addAttribute("color",memProductListService.color(memProductListVO.getPcode()));
	model.addAttribute("size",memProductListService.size(memProductListVO.getPcode()));
	   
   }
   @GetMapping("/product2")
   public void product2(Model model, @RequestParam("pcode") int pcode) {
	   MemProductListVO memProductListVO = memProductListService.view(pcode);
		model.addAttribute("view", memProductListVO);
		model.addAttribute("color",memProductListService.color(memProductListVO.getPcode()));
		model.addAttribute("size",memProductListService.size(memProductListVO.getPcode()));
		model.addAttribute("review",memProductListService.review(memProductListVO.getPcode()));
   }
   @GetMapping("/product3")
   public void product3(Model model, @RequestParam("pcode") int pcode) {
	   MemProductListVO memProductListVO = memProductListService.view(pcode);
		model.addAttribute("view", memProductListVO);
		model.addAttribute("color",memProductListService.color(memProductListVO.getPcode()));
		model.addAttribute("size",memProductListService.size(memProductListVO.getPcode()));
		model.addAttribute("QandA",memProductListService.QandA(memProductListVO.getPcode()));
   }
   @PostMapping("/buy2")
   public void buy2(Model model, HttpSession session, int pcode, int bamount, int btotal, String pcolor, String psize, String sname, String pname) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }else {
		   MemVO memVO = (MemVO) session.getAttribute("loginMem");
	   
	   MemProductListVO memProductListVO = new MemProductListVO();
	   memProductListVO.setPcode(pcode);
	   memProductListVO.setBamount(bamount);
	   memProductListVO.setBtotal(btotal);
	   memProductListVO.setPcolor(pcolor);
	   memProductListVO.setPsize(psize);
	   memProductListVO.setSname(sname);
	   memProductListVO.setPname(pname);
	   memProductListVO.setMcode(memVO.getMcode());
	   model.addAttribute("list",memProductListVO);
	   
	   MemVO memVO2 = memService.read(memVO.getMcode());
	   model.addAttribute("mem",memVO2);
	   
	   
	   }
   }
	   
   @GetMapping("/marketadd")
   public void marketadd(Model model) {
	   model.addAttribute("list",memProductListService.getList());
	   
   }
   @GetMapping("/marketadd2")
   public void marketadd2(Model model, String catecode) {

	   model.addAttribute("list",memProductListService.getListForCatecode(catecode));
   }
   
   @GetMapping("/marketadd3")
   public void marketadd3(Model model, String cateCodeRef) {
	   
	   model.addAttribute("list",memProductListService.getListForcategory(cateCodeRef));
   }
   
   @GetMapping("/best")
   public void best(Model model, int best) {
	   model.addAttribute("list",memProductListService.getListForbest(best));
   }
   @GetMapping("/best2")
   public void best2(Model model,String cateCodeRef) {
	   model.addAttribute("list",memProductListService.getListForcategory(cateCodeRef));
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
	   }else {
		   MemVO memVO = (MemVO) session.getAttribute("loginMem");
			  model.addAttribute("like",memLikeListService.getList(memVO.getMcode()));
	   }
      
   }
   @GetMapping("/likedeleteOk")
   public void likedeleteOk(Model model ,HttpSession session,int pcode) {
	   log.info(pcode+"************************8");
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }else {
	   MemVO memvo = (MemVO) session.getAttribute("loginMem");
	   // ProductQnAVO productQnAVO = new ProductQnAVO(); 
	   likeitemService.delete(memvo.getMcode(), pcode);
	  
	   }
   }
   @PostMapping("/likeOk")
   public void postlike(Model model, HttpSession session, int pcode) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }else {
		   log.info(pcode); 
		   
		   MemVO memVO = (MemVO) session.getAttribute("loginMem");
		  
		   LikeItemVO likeItemVO = new LikeItemVO();
		   likeItemVO.setMcode(memVO.getMcode());
		   log.info(memVO.getMcode());
		   likeItemVO.setPcode(pcode);
		   log.info(likeItemVO); 
		   likeItemService.insert(likeItemVO);
	   }
	   
   }
   
   @GetMapping("/likeOk")
   public void likeOk(Model model) {
	   
	   
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
      
	   model.addAttribute("list",memProductListService.getList());
      
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
      model.addAttribute("list",memProductListService.getList());

      if(memVO != null ){
         httpSession.setAttribute("loginMem",memVO);
         return "/user/index";
         
      }
      else{
         return "/user/loginfail";
      }

   }
   
  
   
   
   @GetMapping("/mypage1")
   public void mypage1(Model model, HttpSession session) {
	   
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }
	   else {
			  MemVO memVO = (MemVO) session.getAttribute("loginMem");
			  model.addAttribute("list",orderListService.ListbyMcode(memVO.getMcode()));
	   }
   }
   @GetMapping("/orderdetail")
   public void orderdetail(Model model, int ocode) {
	
	   model.addAttribute("list",memOrderListService.getList(ocode));
	   model.addAttribute("list2",orderListService.read(ocode));

	   
   }
   @PostMapping("/orderdetail")
   public void postorderdetail(Model model, int ocode) {
	   
	   
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
	  model.addAttribute("review",memReviewService.getList(memVO.getMcode()));
      
   }
   @GetMapping("/reviewWrite")
   public void writereview(Model model, HttpSession session,int pcode, int ocode) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }
	  MemVO memVO = (MemVO) session.getAttribute("loginMem");
	 model.addAttribute("list",memOrderListService.read(memVO.getMcode(),pcode,ocode));
      
   }
   
  
   @GetMapping("/reviewdeleteOk")
   public void reviewdeleteOk(Model model, int rcode) {
	   reviewService.remove(rcode);
   } 
   @PostMapping("/reviewinsertOk")
   public void reviewWrite(HttpSession session, int ocode, int pcode, String review, int scode) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }
	  
	  MemVO memVO = (MemVO) session.getAttribute("loginMem");
	  ReviewVO reviewVO = new ReviewVO();
	  reviewVO.setMcode(memVO.getMcode());
	  reviewVO.setOcode(ocode);
	  reviewVO.setPcode(pcode);
	  reviewVO.setReview(review);
	  reviewVO.setScode(scode);
	  reviewService.insert(reviewVO);
   }
   
   @GetMapping("/mypage4")
   public void mypage4(Model model, HttpSession session) {
	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   }
	   MemVO memVO = (MemVO) session.getAttribute("loginMem");
		  model.addAttribute("list",memQuestionListService.getList(memVO.getMcode()));
   }
  
   @GetMapping("/mypage5")
   public void mypage5(Model model, HttpSession session) {

	   if(session.getAttribute("loginMem") == null) {
		   session.setAttribute("islogin", "1");   
	   } 
   }
   
   @GetMapping("/today")
   public void today(Model model, int today) {
	   model.addAttribute("list",memProductListService.getListFortoday(today));
      
   }
   @GetMapping("/today2")
   public void today2(Model model, int today, String cateCode) {
	   model.addAttribute("list",memProductListService.getListFortodaycategory(today,cateCode));
	 
   }
   @GetMapping("/today3")
   public void today3(Model model, int today,String cateCodeRef) {
	 
	   model.addAttribute("list",memProductListService.getListFortodaycategoryRef(today,cateCodeRef));
	   
   }
}

