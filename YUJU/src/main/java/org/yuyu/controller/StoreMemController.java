package org.yuyu.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import lombok.Setter;
import net.coobird.thumbnailator.Thumbnailator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.yuyu.domain.*;
import org.yuyu.mapper.ProductDetailMapper;
import org.yuyu.service.ProductDetailService;
import org.yuyu.service.ProductImgService;
import org.yuyu.service.ProductService;
import org.yuyu.service.StoreMemService;

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
    public void index() {
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
    public String loginCheck(String sid, String spw, HttpSession httpSession) {

        if (httpSession.getAttribute("loginStoreMem") != null) {
            httpSession.removeAttribute("loginStoreMem");
        }

        StoreMemVO storeMemVO = storeMemService.login_check(sid, spw);

        if (storeMemVO != null) {
            httpSession.setAttribute("loginStoreMem", storeMemVO);
            return "/storeMem/index";
        } else {
            return "/storeMem/login-fail-proc";
        }

    }

    @PostMapping("C:\\\\upload\\\\")
    public void uploadFormAction(MultipartFile[] pimg, Model model) {

        String uploadFolder = "/Users/noyulim/upload";
        for (MultipartFile multipartFile : pimg) {
            log.info("---------------------------");
            log.info("Upload File name :" + multipartFile.getOriginalFilename());
            log.info("Upload File name :" + multipartFile.getSize());

            //파일 저장
            File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());

            try {
                //transferTo()를 이용 해서 파일 저장 처리를 할 수 잇다.
                multipartFile.transferTo(saveFile);
            } catch (Exception e) {
                log.error(e.getMessage());
            }
        }


    }


    @GetMapping("/info-product-page")
    public void infoProductPage(Model model) {

        log.info("info-product-page......s");
        model.addAttribute("products",productService.getListForStore(1));
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

    @GetMapping("/info-order-page")
    public void infoOrderPage() {
    }

    @GetMapping("/update-product-page")
    public void updateProductPage(Model model) {

        model.addAttribute("products",productService.getListForStore(1));



    }


    @GetMapping("/searchForItem")
    public String searchforitem(Model model, @RequestParam("search") String search, RedirectAttributes rttr, HttpSession httpSession) {

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
            rttr.addFlashAttribute("result", "2");
        }
        rttr.addFlashAttribute("search", search);
        return "redirect:/storeMem/update-product-page";
    }


    @GetMapping("/question-product-page")
    public void questionProductPage() {
    }

    @GetMapping("/register-product-page")
    public void registerProductPage(Model model) {
        model.addAttribute("pcode", productService.showPcode());
    }

    @PostMapping("/register-product-proc")
    public String registerProductProc(int pcode, String pname, String pprice, String pcolor, String psize, String amount, String today, String best, String cateCode, String cateCodeRef, String fileName, String uuid, String path, String type) {
        String[] colors = {};
        String[] sizes = {};


        ProductDetailVO productDetailVO = new ProductDetailVO();

        ProductImgVO productImgVO = new ProductImgVO();
        productDetailVO.setPcode(pcode);

        ProductVO productVO = new ProductVO();
        productVO.setPname(pname);
        productVO.setPprice(Integer.parseInt(pprice));
        productVO.setScode(1);
        productVO.setCateCode(cateCodeRef);
        productVO.setBest(Integer.parseInt(best));
        productVO.setToday(Integer.parseInt(today));


        productImgVO.setUuid(uuid);
        productImgVO.setUploadPath(path);
        productImgVO.setPcode(pcode);
        productImgVO.setFileName(fileName);


        log.info(fileName + "/" + path + "/" + uuid + "/" + type);

        productService.insert(productVO);
        productImgService.insert(productImgVO);

        String[] amounts = amount.split(",");
        int count = 0;

        if (!pcolor.equals("-9999")) {
            colors = pcolor.split(",");
        }

        if (!psize.equals("-9999")) {
            sizes = psize.split(",");
        }

        if (!psize.equals("-9999") && !pcolor.equals("-9999")){
            colors = pcolor.split(",");
            sizes = psize.split(",");
        }


        for (int i = 0; i < colors.length; i++) {

            for (int j = 0; j < sizes.length; j++, count++) {
                if (count == amounts.length)
                    break;
                productDetailVO.setPcolor(colors[i]);
                productDetailVO.setPsize(sizes[j]);
                productDetailVO.setAmount(Integer.parseInt(amounts[count]));

                productDetailService.insert(productDetailVO);

            }

        }

        return "/storeMem/info-product-page";


    }

    //이미지인지 판단 메소드
    private boolean checkImageType(File file) {
        try {
            String contentType = Files.probeContentType(file.toPath());
            return contentType.startsWith("image");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return false;
    }

    //년/월/일 폴더 생성
    private String getFolder() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        Date date = new Date();

        String str = sdf.format(date);

        return str.replace("-", File.separator);
    }

    @GetMapping("/uploadAjax")
    public void uploadAjax() {
        log.info("upload ajax");
    }

    @PostMapping(value = "/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public ResponseEntity<List<AttachFileDTO>> uploadAjaxPost(MultipartFile[] uploadFile) {

        List<AttachFileDTO> list = new ArrayList<>();
        log.info("update ajax post..............");

        String uploadFolder = "C:\\upload"; 

        String uploadFolderPath = getFolder();

        //make folder-----
        File uploadPath = new File(uploadFolder, uploadFolderPath);

        if (!uploadPath.exists()) {
            boolean result = uploadPath.mkdirs();
        }


        for (MultipartFile multipartFile : uploadFile) {
            AttachFileDTO attachFileDTO = new AttachFileDTO();

            String uploadFileName = multipartFile.getOriginalFilename();

            uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);

            log.info("only file name:" + uploadFileName);
            attachFileDTO.setFileName(uploadFileName);

            UUID uuid = UUID.randomUUID();
            uploadFileName = uuid.toString() + "_" + uploadFileName;


//            File saveFile = new File(uploadFolder,uploadFileName);

            try {
                File saveFile = new File(uploadPath, uploadFileName);
                multipartFile.transferTo(saveFile);

                attachFileDTO.setUuid(uuid.toString());
                attachFileDTO.setUploadPath(uploadFolderPath);

                if (checkImageType(saveFile)) {
                    attachFileDTO.setImage(true);

                    FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadFileName));
                    Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100, 100);
                    thumbnail.close();
                }
                list.add(attachFileDTO);
            } catch (Exception e) {
                log.error(e.getMessage());
            }

        }

        return new ResponseEntity<>(list, HttpStatus.OK);
    }

    @GetMapping("/display")
    @ResponseBody
    public ResponseEntity<byte[]> getFile(String fileName) {
        log.info("fileName:" + fileName);
        File file = new File("C:\\upload\\" + fileName);

        log.info("file:" + file);
        ResponseEntity<byte[]> result = null;
        try {
            HttpHeaders header = new HttpHeaders();
            header.add("Content-Type", Files.probeContentType((file.toPath())));
            result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    @PostMapping("/deleteFile")
    @ResponseBody
    public ResponseEntity<String> deleteFile(String fileName, String type) {

        log.info("deleteFile: " + fileName);
        File file;

        try {
            file = new File("C:\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));
            file.delete();
            if (type.equals("image")) {
                String largeFileName = file.getAbsolutePath().replace("s_", "");
                log.info("largeFileName: " + largeFileName);
                file = new File(largeFileName);
                file.delete();
            }

        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return new ResponseEntity<>(HttpStatus.OK);
        }

        return new ResponseEntity<String>("deleted", HttpStatus.OK);
    }


    @GetMapping("/modify-product-page")
    public void modifyProductPage(Model model) {
        model.addAttribute("pcode", 1);
    }


    @GetMapping("/find-info-page")
    public void findInfoPage() {
    }


}



