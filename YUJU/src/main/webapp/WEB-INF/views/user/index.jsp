<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <script language="javascript" src="/resources/user/JS/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script language="javascript" src="/resources/user/JS/jquery-ui.min.js" type="text/javascript"></script>
    <script language="javascript" src="/resources/user/JS/jq.rolling.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/resources/user/CSS/index.css" />
</head>

<body>
   <%@include file="../user/includes/header.jsp" %>
   <%@include file="../user/includes/menu.jsp" %>

    <div>
        <div id="rolling">
            <ul>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_2_1592531989.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_6_1592532510.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_0_1592542786.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_154451_1592186650.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_2_1591345434.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_154084_1592186365.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_155022_1592188158.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_153769_1592186235.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_2_1592298206.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_154022_1592186348.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_2_1592187365.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_155808_1592531536.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_154146_1592186375.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_154177_1592186519.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_0_1591599336.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_2_1592187044.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_154599_1592186899.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_155512_1592384425.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_154476_1592186678.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_155727_1592470608.jpg"></li>



            </ul>
        </div>
        <ul class="pages"></ul>
    </div>
    <div id="content">
        <a id="title">[페스타] 브랜디는 하루배송</a><a id="titleB">오늘 사고 내일 바로 입자!</a><a id="add" href="#">더보기</a><a id="add2"
            href="#">></a>
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

    <script>
        $("#rolling").rolling(1519, 400, {
            autoscroll: 1,
            delay: 3500
        });
    </script>

   <%@include file="../user/includes/footer.jsp"%>
</body>

</html>