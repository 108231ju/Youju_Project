package org.yuyu.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

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
import org.yuyu.domain.OrderListVO;
import org.yuyu.domain.ProductDetailVO;
import org.yuyu.domain.ProductImgVO;
import org.yuyu.domain.ProductQnAVO;
import org.yuyu.domain.ProductVO;
import org.yuyu.domain.StateVO;
import org.yuyu.domain.StoreMemVO;
import org.yuyu.domain.StoreOrderDetailVO;
import org.yuyu.service.CategoryService;
import org.yuyu.service.MemService;
import org.yuyu.service.OrderDetailService;
import org.yuyu.service.ProductDetailService;
import org.yuyu.service.ProductImgService;
import org.yuyu.service.ProductQnAService;
import org.yuyu.service.ProductService;
import org.yuyu.service.StoreMemService;
import org.yuyu.utils.UploadFileUtils;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/storeMem/*")
@Log4j
@AllArgsConstructor
public class StoreMemController {

	@Setter(onMethod_ = @Autowired)
	private StoreMemService storeMemService;

	@Setter(onMethod_ = @Autowired)
	private ProductService productService;

	@Setter(onMethod_ = @Autowired)
	private ProductDetailService productDetailService;

	@Setter(onMethod_ = @Autowired)
	private ProductImgService productImgService;

	@Setter(onMethod_ = @Autowired)
	private OrderDetailService orderService;

	@Setter(onMethod_ = @Autowired)
	private CategoryService categoryService;
	

	@Setter(onMethod_ = @Autowired)
	private MemService memService;
	

	@Setter(onMethod_ = @Autowired)
	private ProductQnAService qnaService;	

	@Resource(name = "uploadPath")
	private String uploadPath;

	@GetMapping("/list")
	public void list(Model model) {
		log.info("member list.....");
		model.addAttribute("list", storeMemService.getList()); // List<storMem>
	}

	@GetMapping("/register-proc")
	public void registerOk() {
	}

	@PostMapping("/register")
	public String register(StoreMemVO storeMemVO, RedirectAttributes rttr) {
		log.info("register......");

		storeMemService.insert(storeMemVO);

		return "/storeMem/register-proc";

	}

	@GetMapping("/get")
	public void get(@RequestParam("mcode") int mcode, Model model) {
		log.info("/get");
		model.addAttribute("mem", storeMemService.read(mcode));

	}

	@PostMapping("/modify")
	public String modify(StoreMemVO storeMemVO, RedirectAttributes rttr) {

		log.info("modify : " + storeMemVO.getScode());

		if (storeMemService.modify(storeMemVO) == true) {
		}
		return "redirect:/storeMem/info-mem-page";
	}

	@GetMapping("/remove")
	public String modify(HttpSession httpSession) {

		StoreMemVO storeMem = (StoreMemVO) httpSession.getAttribute("loginStoreMem");
		if (storeMemService.delete(storeMem.getScode()) != false) {
			log.info("remove : " + storeMem.getScode());
			httpSession.removeAttribute("loginStoreMem");
		}
		return "/storeMem/signout-proc";
	}

	@GetMapping("/index")
	public void index(HttpSession httpSession, Model model) {

		StoreMemVO storeMem = (StoreMemVO) httpSession.getAttribute("loginStoreMem");
		List<StateVO> states = orderService.selectState(storeMem.getScode());
		model.addAttribute("statelists", states);

		List<StoreOrderDetailVO> orderList = orderService.readPerStore(storeMem.getScode());
		
		model.addAttribute("orderlist", orderList);
		
		List<ProductQnAVO> qnas = qnaService.getList(storeMem.getScode());
		List<ProductVO> products = new ArrayList<>();
		List<MemVO> mems = new ArrayList<>();
		for(int i=0; i< qnas.size(); i++) {
			products.add(productService.getListForPcode(qnas.get(i).getPcode()));
			mems.add(memService.read(qnas.get(i).getMcode()));
		}
		
		model.addAttribute("products",products);
		model.addAttribute("qnas",qnas);
		model.addAttribute("mems",mems);
		

	}

	@GetMapping("/register-page")
	public void register() {
	}

	@GetMapping("/signout-page")
	public void signout() {
	}

	@GetMapping("/login-page")
	public void login() {
	}

	@GetMapping("/login-fail-proc")
	public void loginFail() {
	}

	@GetMapping("/no-login-proc")
	public void noLogin() {
	}

	@GetMapping("/logout-proc")
	public void logout(HttpSession httpSession) {
		httpSession.removeAttribute("loginStoreMem");
	}

	@GetMapping("/logincheck")
	public String loginCheck2() {
		return "/storeMem/no-login-proc";
	}

	@PostMapping("/logincheck")
	public String loginCheck(Model model, String sid, String spw, HttpSession httpSession) {
		

		

		if (httpSession.getAttribute("loginStoreMem") != null) {
			httpSession.removeAttribute("loginStoreMem");
		}

		StoreMemVO storeMemVO = storeMemService.login_check(sid, spw);

		if (storeMemVO != null) {
			httpSession.setAttribute("loginStoreMem", storeMemVO);

			StoreMemVO storeMem = (StoreMemVO) httpSession.getAttribute("loginStoreMem");
			List<StateVO> states = orderService.selectState(storeMem.getScode());
			model.addAttribute("statelists", states);

			List<StoreOrderDetailVO> orderList = orderService.readPerStore(storeMem.getScode());
			
			model.addAttribute("orderlist", orderList);
			
			List<ProductQnAVO> qnas = qnaService.getList(storeMem.getScode());
			List<ProductVO> products = new ArrayList<>();
			List<MemVO> mems = new ArrayList<>();
			for(int i=0; i< qnas.size(); i++) {
				products.add(productService.getListForPcode(qnas.get(i).getPcode()));
				mems.add(memService.read(qnas.get(i).getMcode()));
			}
			
			model.addAttribute("products",products);
			model.addAttribute("qnas",qnas);
			model.addAttribute("mems",mems);
			
			return "/storeMem/index";
		} else {
			return "/storeMem/login-fail-proc";
		}

	}

	@PostMapping("/uploadFormAction")
	public void uploadFormAction(MultipartFile[] pimg, Model model) {

		String uploadFolder = "C:\\upload\\";
		for (MultipartFile multipartFile : pimg) {
			log.info("---------------------------");
			log.info("Upload File name :" + multipartFile.getOriginalFilename());
			log.info("Upload File name :" + multipartFile.getSize());

			// 파일 저장
			File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());

			try {
				// transferTo()를 이용 해서 파일 저장 처리를 할 수 잇다.
				multipartFile.transferTo(saveFile);
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		}

	}

	@GetMapping("/info-mem-page")
	public void infoMemPage(Model model, HttpSession httpSession) {
		StoreMemVO storeMemVO = (StoreMemVO) httpSession.getAttribute("loginStoreMem");
		StoreMemVO storeMemVO2 = storeMemService.read(storeMemVO.getScode());

		model.addAttribute("smem", storeMemVO2);
	}

	@GetMapping("/info-delivery-page")
	public void infoDeliveryPage() {
	}
	
	@GetMapping("/searchStoreProduct")
	public String searchStoreProduct(@RequestParam("pcode") int pcode, String pname,Model model,String cateCode, HttpSession httpSession) {
		

		StoreMemVO storeMemVO = (StoreMemVO) httpSession.getAttribute("loginStoreMem");
		
		List<ProductVO> pcodeList = new ArrayList<ProductVO>();
	
		if(pcode != -999) {
			ProductVO productvo = productService.read(pcode);
			pcodeList.add(productvo);
			
			model.addAttribute("searchpcode", pcode);
			model.addAttribute("result", "998");
		}
		else{
			if(!pname.equals("-999")) {
				List<ProductVO> productAll = productService.getListForStore(storeMemVO.getScode());
				for(int i =0; i< productAll.size(); i++) {
					if(productAll.get(i).getPname().contains(pname)) {
						pcodeList.add(productAll.get(i));
					}
				}
				model.addAttribute("searchpname", pname);
				model.addAttribute("result", "999");
			}
			else {
				log.info("start****************************");
				pcodeList = productService.readByCateCode(cateCode,storeMemVO.getScode());
				log.info(pcodeList);
				model.addAttribute("result", "997");
			}
			
		}

		
		model.addAttribute("products", pcodeList);

		
		List<String> colorList = new ArrayList<>();
		List<String> sizeList = new ArrayList<>();
		List<String> cateNames = new ArrayList<>();
		List<String> amountList = new ArrayList<>();
		
		for(int i =0; i < pcodeList.size(); i++) {
			List<String> color = productDetailService.getProductColor(pcodeList.get(i).getPcode());
			Collections.reverse(color);
			colorList.add(String.join(",", color));
			List<String> size = productDetailService.getProductSize(pcodeList.get(i).getPcode());
			Collections.reverse(size);
			sizeList.add(String.join(",", size));
			
			List<String> amount = productDetailService.getProductAmount(pcodeList.get(i).getPcode());
			Collections.reverse(amount);
			amountList.add(String.join(",", amount));
			
			System.out.println(colorList.get(i) + "//"+sizeList.get(i));
			

			String cateName =  categoryService.getCateName(pcodeList.get(i).getPcode());
			String cateRefName = categoryService.getCateCodeName(pcodeList.get(i).getCateCode());
			
			cateNames.add(cateRefName +" > " + cateName);

			
			
		}
		model.addAttribute("colorList", colorList);
		model.addAttribute("sizeList", sizeList);
		model.addAttribute("cateList", cateNames);
		model.addAttribute("amountList", amountList);
		model.addAttribute("searchpcode", pcode);
		
		

		
		return "/storeMem/info-product-page";

	}

	@GetMapping("/info-order-page")
	public void infoOrderPage(Model model, HttpSession httpSession) {

		StoreMemVO storeMemVO = (StoreMemVO) httpSession.getAttribute("loginStoreMem");

		List<StoreOrderDetailVO> orderList = orderService.readPerStore(storeMemVO.getScode());
		
		model.addAttribute("orderlist", orderList);

	}

	@GetMapping("/modyState")
	public String modyStateProc(int ocode, int onum, String state, RedirectAttributes rttr) {
		int result = orderService.updateState(ocode, onum, state);
		if (result > 0) {
			System.out.println("업데이트 썽꽁 :) ");

		}

		return "redirect:/storeMem/info-order-page";

	}

	@GetMapping("/order-proc-page")
	public void orderProcPage(Model model, HttpSession httpSession) {

		StoreMemVO storeMemVO = (StoreMemVO) httpSession.getAttribute("loginStoreMem");
	}

	@GetMapping("/update-product-page")
	public void updateProductPage(Model model,HttpSession httpSession) {

		StoreMemVO storeMemVO = (StoreMemVO) httpSession.getAttribute("loginStoreMem");
		model.addAttribute("products", productService.getListForStore(storeMemVO.getScode()));

	}

	@GetMapping("/searchForItem")
	public String searchforitem(Model model, @RequestParam("search") String search, RedirectAttributes rttr,
			HttpSession httpSession) {

		StoreMemVO storeMemVO = (StoreMemVO) httpSession.getAttribute("loginStoreMem");
		List<ProductVO> plist = productService.getListForStore(storeMemVO.getScode());
		List<ProductVO> searchlist = new ArrayList<>();
		
		int check = 0;
		if (search.equals("")) {

		} else {
			for (int i = 0; i < plist.size(); i++) {

				if (plist.get(i).getPname().contains(search)) {
					searchlist.add(plist.get(i));
					log.info("searchitem" + plist.get(i).getPname());
					check++;
				}
			}
		}

		if (check > 0) {
			log.info(check);
			log.info("find Item");
			rttr.addFlashAttribute("result", searchlist.size());
			rttr.addFlashAttribute("searchlist", searchlist);
		} else {
			rttr.addFlashAttribute("result", "-1");
		}
		rttr.addFlashAttribute("search", search);
		return "redirect:/storeMem/update-product-page";
	}



	@GetMapping("/register-product-page")
	public void registerProductPage(Model model) {

		model.addAttribute("catelist", categoryService.getList());
		model.addAttribute("pcode", productService.showPcode());
	}

	@GetMapping("/info-product-page")
	public void infoProductPage(Model model, HttpSession httpSession) {

		StoreMemVO storeMemVO = (StoreMemVO) httpSession.getAttribute("loginStoreMem");
		model.addAttribute("products", productService.getListForStore(storeMemVO.getScode()));

		
		List<String> colorList = new ArrayList<>();
		List<String> sizeList = new ArrayList<>();
		List<String> cateNames = new ArrayList<>();
		List<String> amountList = new ArrayList<>();
		List<ProductVO> pcodeList = productService.getListForStore(storeMemVO.getScode());
		
		for(int i =0; i < pcodeList.size(); i++) {
			List<String> color = productDetailService.getProductColor(pcodeList.get(i).getPcode());
			Collections.reverse(color);
			colorList.add(String.join(",", color));
			List<String> size = productDetailService.getProductSize(pcodeList.get(i).getPcode());
			Collections.reverse(size);
			if(String.join(",", size).equals("L,S,M")) {

				sizeList.add("S,M,L");
			}
			else {
				sizeList.add(String.join(",", size));
			}
			
			
			
			List<String> amount = productDetailService.getProductAmount(pcodeList.get(i).getPcode());
			Collections.reverse(amount);
			amountList.add(String.join(",", amount));
			
			System.out.println(colorList.get(i) + "//"+sizeList.get(i));
			

			String cateName =  categoryService.getCateName(pcodeList.get(i).getPcode());
			String cateRefName = categoryService.getCateCodeName(pcodeList.get(i).getCateCode());
			
			cateNames.add(cateRefName +" > " + cateName);

			
			
		}
		model.addAttribute("colorList", colorList);
		model.addAttribute("sizeList", sizeList);
		model.addAttribute("cateList", cateNames);
		model.addAttribute("amountList", amountList);

		model.addAttribute("catelist", categoryService.getList());
		
	}

	@GetMapping("/modify-product-page")
	public void modifyProductPage(Model model, int pcode) {
		List<String> colorlist = productDetailService.getProductColor(pcode);
		List<String> sizelist = productDetailService.getProductSize(pcode);
		Collections.reverse(sizelist);
		Collections.reverse(colorlist);
		model.addAttribute("product", productService.read(pcode));
		model.addAttribute("details", productDetailService.readWithPcode(pcode));
		model.addAttribute("colors", String.join(",", colorlist));
		model.addAttribute("sizes", String.join(",", sizelist));
		model.addAttribute("catelist", categoryService.getList());
	}

	@PostMapping("/modify-product-proc")
	public void modifyProductPage(int pcode, String pname, int best, int today, int pprice, String catecode,
			String color, String size, String pcolor, String psize, String amount,MultipartFile file) throws IOException, Exception {

		ProductDetailVO productDetailVO = new ProductDetailVO();
		productDetailVO.setPcode(pcode);
		productDetailService.deleteProductDetail(pcode);

		ProductVO product = new ProductVO();
		product = productService.read(pcode);
		product.setPname(pname);
		product.setPprice(pprice);
		product.setToday(today);
		product.setBest(best);
		product.setCateCode(catecode);

		
    	String imgUploadPath = uploadPath + File.separator + "imgUpload";

    	String ymdPath = UploadFileUtils.calcPath(imgUploadPath);

    	String fileName = null;
    	
    	if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
    		fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);

        	product.setPimg(File.separator + "imgUpload" + ymdPath +File.separator + fileName);
        	product.setPthumbimg(File.separator + "imgUpload"+ymdPath +"S" +File.separator+"S_"+fileName);
    	}
    	else {
    		fileName = product.getPimg();	

        	product.setPimg(fileName);
        	fileName = product.getPthumbimg();	
        	product.setPthumbimg(fileName);
    	}
    	

		productService.modify(product);

		String[] sizes = {};
		String[] colors = {};

		if (!color.equals("")) {
			colors = color.split(",");
		}

		if (!size.equals("")) {
			sizes = size.split(",");
		}

		if (!size.equals("") && !color.equals("")) {
			colors = color.split(",");
			sizes = size.split(",");
		}

		String[] amounts = amount.split(",");

		int count = 0;

		for (int i = 0; i < colors.length; i++) {
			if (sizes.length == 0) {
				productDetailVO.setPsize("FREE");
				productDetailVO.setAmount(Integer.parseInt(amounts[i]));
				productDetailVO.setPcolor(colors[i]);
				productDetailService.insert(productDetailVO);
			} else {
				for (int j = 0; j < sizes.length; j++, count++) {
					if (count == amounts.length)
						break;
					productDetailVO.setPcolor(colors[i]);
					productDetailVO.setPsize(sizes[j]);
					productDetailVO.setAmount(Integer.parseInt(amounts[count]));
					productDetailService.insert(productDetailVO);
					log.info(productDetailVO);

				}

			}

		}
		

	}

	@GetMapping("/delete-product-proc")
	public void deleteProduct(int pcode) {
		productDetailService.deleteProductDetail(pcode);
		productService.delete(pcode);
	}

	@PostMapping("/register-product-proc")
	public void infoProductPagePost(HttpSession httpSession, int pcode, String color, String size, String pname,
			int pprice, String amount, String today, String best, String catecode, MultipartFile file) throws IOException, Exception {

		StoreMemVO storeMemVO = (StoreMemVO) httpSession.getAttribute("loginStoreMem");
		String[] sizes = {};
		String[] colors = {};

		if (!color.equals("")) {
			colors = color.split(",");
		}

		if (!size.equals("")) {
			sizes = size.split(",");
		}

		if (!size.equals("") && !color.equals("")) {
			colors = color.split(",");
			sizes = size.split(",");
		}

		ProductDetailVO productDetailVO = new ProductDetailVO();

		productDetailVO.setPcode(pcode);

		ProductVO productVO = new ProductVO();
		productVO.setPname(pname);
		productVO.setPprice(pprice);
		productVO.setScode(storeMemVO.getScode());
		productVO.setCateCode(catecode);
		productVO.setBest(Integer.parseInt(best));
		productVO.setToday(Integer.parseInt(today));
		
		
    	String imgUploadPath = uploadPath + File.separator + "imgUpload";

    	String ymdPath = UploadFileUtils.calcPath(imgUploadPath);

    	String fileName = null;
    	if(file != null) {
    		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
    		} else {
    		 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
    		}

    	productVO.setPimg(File.separator + "imgUpload" + ymdPath +File.separator + fileName);
    	productVO.setPthumbimg(File.separator + "imgUpload"+ymdPath + File.separator +"s" +File.separator+"s_"+fileName);

		productService.insert(productVO);

		String[] amounts = amount.split(",");
		int count = 0;

		for (int i = 0; i < colors.length; i++) {
			if (sizes.length == 0) {
				productDetailVO.setPsize("FREE");
				productDetailVO.setAmount(Integer.parseInt(amounts[i]));
				productDetailVO.setPcolor(colors[i]);
				productDetailService.insert(productDetailVO);
			} else {
				for (int j = 0; j < sizes.length; j++, count++) {
					if (count == amounts.length)
						break;
					productDetailVO.setPcolor(colors[i]);
					productDetailVO.setPsize(sizes[j]);
					productDetailVO.setAmount(Integer.parseInt(amounts[count]));
					productDetailService.insert(productDetailVO);
					log.info(productDetailVO);

				}

			}

		}

	}



	@GetMapping("/find-info-page")
	public void findInfoPage() {
	}

}
