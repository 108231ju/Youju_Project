<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <script language="javascript" src="/resources/user/JS/jquery-1.9.1.min.js" type="text/javascript"></script>

    <script language="javascript" src="/resources/user/JS/jquery-ui.min.js" type="text/javascript"></script>
    <script language="javascript" src="/resources/user/JS/beauty.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/resources/user/CSS/beauty.css" />
</head>

<body>
      <%@include file="../user/includes/header.jsp" %>
    <hr>
    <nav id="menu">
        <ul>
<li onclick="location.href='/user/index'">HOME</li>
            <li onclick="location.href='/user/best'">BEST</li>
            <li onclick="location.href='/user/today'">하루배송</li>
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
                        src="https://image.brandi.me/home/banner/bannerImage_164546_1594605712.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_164545_1594605711.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_0_1594864616.jpg"></li>
                <li class="sp01"><img href="#" id="banner"
                        src="https://image.brandi.me/home/banner/bannerImage_164547_1594605712.jpg"></li>
            </ul>
        </div>
        <ul class="pages"></ul>
    </div>
    <div id="content">
        <a id="title">Brandi Pick</h3><a id="add" onclick="location.href='/user/beautyadd'">더보기</a><a id="add2" onclick="location.href='/user/beautyadd'">></a>
            <div id="item">

            </div>
    </div>
    <footer>
        <div id="tel">
            <h2>고객센터 1234-1234</h2>
            <a>영업시간 : AM 10:00 ~ PM 17:00 (주말 및 공유일 휴무)
                <br>점심시간 : PM 12:30 ~ PM 13:30</a>
        </div>
        <hr>
        <div id="address">
            <a>
                회사명 : ㈜브랜디 | 대표이사 : 서정민 | 사업자등록번호 : 220-88-93187 | 통신판매업신고 : 2016-서울강남-00359 | 호스팅사업자 : (주)브랜디
                <br>주소 : (06223) 서울특별시 강남구 테헤란로 32길 26 청송빌딩
                <br>개인정보관리책임자 : 윤석호(privacy@brandi.co.kr)
                <br>브랜디는 통신판매중개자로서 통신판매 당사자가 아니며, 판매자가 등록한 상품정보 및 거래에 브랜디는 책임을 지지 않습니다.
            </a>
        </div>
        <div id="agree">
            <a>이용약관</a>ㅣ<a>개인정보처리방침</a>ㅣ<a>사업자정보확인</a>
        </div>
    </footer>
</body>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->

</html>