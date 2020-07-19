<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <script language="javascript" src="/resources/user/JS/jquery-1.9.1.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/resources/user/CSS/beautyadd.css" />
    <script language="javascript" src="/resources/user/JS/beautyadd.js" type="text/javascript"></script>
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
                    onclick="location.href='/user/mypage1'">마이페이지</a>ㅣ<a onclick="location.href='/user/like'">찜&장바구니</a>
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
    <div id="contant">
        <div id="tag">
            <a id="one">뷰티 </a><a id="two"></a>><a id="three"> 전체</a>
        </div>
        <nav id="catagory">

            <ul>
                <li id="option">상품옵션</li>
                <li id="sale"><input type="checkbox" name="salechk" value="salechk" id="salechk">세일</li>
                <li id="best">CATEGORIES</li>
                <li id="catagory1">전체</li>
                <li id="catagory2">스킨케어&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down2">
                    <ul>
                        <li id="all2">전체</li>
                        <li id="skin2">스킨/토너</li>
                        <li id="essence2">에센스/앰플</li>
                        <li id="cream2">크림</li>
                        <li id="etc2">기타</li>
                    </ul>
                </nav>
                <li id="catagory3">메이크업&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down3">
                    <ul>
                        <li id="all3">전체</li>
                        <li id="base3">베이스</li>
                        <li id="lip3">립</li>
                        <li id="eye3">아이</li>
                    </ul>
                </nav>
                <li id="catagory4">바디케어&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down4">
                    <ul>
                        <li id="all4">전체</li>
                        <li id="cream4">로션/크림</li>
                        <li id="scrub4">워시/스크럽</li>
                    </ul>
                </nav>
                <li id="catagory5">헤어케어&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down5">
                    <ul>
                        <li id="all5">전체</li>
                        <li id="shampoo5">샴푸/린스</li>
                        <li id="treatment5">트리트먼트</li>
                        <li id="essence5">스타일링/에센스</li>
                    </ul>
                </nav>
                <li id="catagory6">향수&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down6">
                    <ul>
                        <li id="all6">전체</li>
                        <li id="perfume6">향수</li>
                        <li id="defuser6">디퓨저/방향제</li>
                    </ul>
                </nav>
                <li id="catagory7">미용소품&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down7">
                    <ul>
                        <li id="all7">전체</li>
                        <li id="tool7">뷰티툴</li>
                        <li id="nail7">네일</li>
                        <li id="etc7">기타</li>
                    </ul>
                </nav>

            </ul>
        </nav>
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

</html>