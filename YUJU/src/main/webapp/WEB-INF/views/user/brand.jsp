<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <script language="javascript" src="/resources/user/JS/jquery-1.9.1.min.js" type="text/javascript"></script>
    
    <script language="javascript" src="/resources/user/JS/jquery-ui.min.js" type="text/javascript"></script>
    <script language="javascript" src="/resources/user/JS/brand.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/resources/user/CSS/brand.css" />
</head>

<body>
    <%@include file="../user/includes/header.jsp" %>
    <hr>
   <nav id="menu">
        <ul>
           <li onclick="location.href='/user/index'">HOME</li>
            <li onclick="location.href='/user/best?best=1'">BEST</li>
            <li onclick="location.href='/user/today?today=1'">하루배송</li>
            <li onclick="location.href='/user/market'">쇼핑몰·마켓</li>
            <li onclick="location.href='/user/brand'">브랜드</li>
            <li onclick="location.href='/user/beauty'">뷰티</li>
            <li onclick="location.href='/user/event'">EVENT</li>
        </ul>
    </nav>
    <hr>

    <div>
        <div id="rolling">
            <ul id="sp">
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_166383_1594951151.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_163537_1594605641.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_2_1594605641.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_166028_1594632162.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_165675_1594607080.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_166036_1594949017.jpg"></li>
            </ul>
        </div>
        <ul class="pages"></ul>
    </div>
    <div id="content">
        <a id="title">베스트</h3><a id="add" onclick="location.href='/user/brandadd'">더보기</a><a id="add2" onclick="location.href='/user/brandadd'">></a> 
        <div id="item">
 <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
        </div>
    </div>
   <%@include file="../user/includes/footer.jsp"%>
</body>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
</html>