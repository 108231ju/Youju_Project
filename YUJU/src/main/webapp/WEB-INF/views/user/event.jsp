<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>join</title>
    <link rel="stylesheet" href="/resources/user/CSS/event.css" />
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

    <div id="event">
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/14/1594702705_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/13/1594608393_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/13/1594605615_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/13/1594601089_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/10/1594366176_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/16/1594888638_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/09/1594261149_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/10/1594366625_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/13/1594604552_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/13/1594603696_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/10/1594360135_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/13/1594606024_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/09/1594269940_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/14/1594711759_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/16/1594889595_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/10/1594364231_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/10/1594351025_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/17/1594947692_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/10/1594351800_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/09/1594264695_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/19/1595153397_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/17/1594977698_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/06/30/1593510496_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/07/11/1594475368_banner.jpg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/06/07/1591505047_banner.jpeg"></div>
        <div id="list"><img href="#" id="eventimg"
            src="https://image.brandi.me/event/2020/03/17/1584428147_banner.jpg"></div>
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
</html>