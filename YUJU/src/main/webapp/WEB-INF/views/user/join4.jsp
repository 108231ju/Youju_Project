<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/user/CSS/join4.css" />
</head>

<body>
    <header>
        <div>
            <img href="#" id="Adver" src="https://image.brandi.me/home/banner/bannerImage_148115_1590975673.jpg">
        </div>
        <div id="top">
            <div id="logo" onclick="location.href='/user/index'">
                <img src="https://www.brandi.co.kr/static/3.47.2/images/logo@3x.png">
            </div>
            <div>
                <form method="GET" action="#" id="search">
                    <button id="btn">검색</button>
                    <input id="input" type="text" name="q">
                </form>
            </div>
            <div id="login">
                <a onclick="location.href='/user/login'">로그인</a>ㅣ<a onclick="location.href='/user/join1'">회원가입</a>ㅣ<a
                    href="#">마이페이지</a>ㅣ<a href="#">찜</a>
            </div>

        </div>
    </header>
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

    
    <div id="phone4">
        <h1>회원가입</h1>
        <nav id="joinmenu4">
            <ul>
                <li id="identity4"><img
                        src="https://www.brandi.co.kr/static/3.47.2/images/ic-join-step-01-s@3x.png"><br>본인인증</li>
                <li id="agree4"><img
                        src="https://www.brandi.co.kr/static/3.47.2/images/ic-join-step-02-40-s@3x.png"><br>정보수집동의</li>
                <li id="joinform4"><img
                        src="https://www.brandi.co.kr/static/3.47.2/images/ic-join-step-03-40-s@3x.png"><br>정보입력</li>
                <li id="finish4"><img
                        src="https://www.brandi.co.kr/static/3.47.2/images/ic-join-step-04-s@3x.png"><br>가입완료</li>
            </ul>
        </nav>
        <div id="phoneD">
            <img src="https://image.brandi.me/common/200115_pc_join_finish_3x.png">
           <div id="thanks"><br><a>브랜디 회원 가입을 축하드립니다!</a></div>
           
            <hr>
            <button id="btnphone" onclick="location.href='/user/index'">쇼핑하러가기</button>
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

</html>