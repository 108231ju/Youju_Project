<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <script language="javascript" src="/resources/user/JS/jquery-1.9.1.min.js" type="text/javascript"></script>
    
    <script language="javascript" src="/resources/user/JS/jquery-ui.min.js" type="text/javascript"></script>
    <script language="javascript" src="/resources/user/JS/market.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/resources/user/CSS/market.css" />
</head>

<body>
      <%@include file="../user/includes/header.jsp" %>
    <%@include file="../user/includes/menu.jsp" %>

    <div>
        <div id="rolling">
            <ul id="sp">
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_3_1594951588.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_164937_1594605733.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_165744_1594606618.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_165409_1594605814.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_165257_1594605758.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_164938_1594605733.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_163876_1594605605.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_2_1594605931.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_3_1594606117.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_6_1594606178.jpg"></li>
            </ul>
        </div>
        <ul class="pages"></ul>
    </div>
 
    <script> 
        $("#rolling").rolling(1519, 400, {
            autoscroll: 1,
            delay: 3500
        });
    </script>
   <div id="content">
        <a id="title">Brandi Pick</h3><a id="add" onclick="location.href='/user/marketadd'">더보기</a><a id="add2" onclick="location.href='/user/marketadd'">></a> 
            <div id="item">
             <c:forEach items="${list}" var="list">
 				<div id="product" onclick="location.href='/user/product1?pcode=${list.pcode}'">
 				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[<c:out value="${list.sname}"/>]</a>
                    <br><a id="pname"><c:out value="${list.pname}"/></a>
                    <br><a id="price"><c:out value="${list.pprice}"/>원</a>
                </div>
  </c:forEach>
            </div>
    </div>
   <%@include file="../user/includes/footer.jsp"%>
</body>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
</html>