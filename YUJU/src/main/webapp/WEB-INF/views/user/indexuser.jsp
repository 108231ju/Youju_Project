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

            </div>
    </div>

    <script>
        $("#rolling").rolling(1519, 400, {
            autoscroll: 1,
            delay: 3500
        });
    </script>

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

</html>