<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <script language="javascript" src="/resources/user/JS/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script language="javascript" src="/resources/user/JS/best.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/resources/user/CSS/best.css" />
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

    <div id="contant">
        <div id="tag">
        <a id="one">쇼핑몰 · 마켓</a>><a id="two"> 베스트</a>><a id="three"> 전체</a>
        </div>
        <nav id="catagory">
            <ul>
                <li id="option">상품옵션</li>
                <li id="today"><input type="checkbox" name="todaychk" value="todaychk" id="todaychk">하루</li>
                <li id="sale"><input type="checkbox" name="salechk" value="salechk" id="salechk">세일</li>
                <li id="best">BEST</li>
                <li id="catagory1">쇼핑몰 · 마켓&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down1">
                    <ul>
                        <li id="all1">전체</li>
                        <li id="outer1">아우터</li>
                        <li id="top1">상의</li>
                        <li id="bottom1">바지</li>
                        <li id="dress1">원피스</li>
                        <li id="skirt1">스커트</li>
                        <li id="shoes1">신발</li>
                        <li id="bag1">가방</li>
                        <li id="jewelry1">주얼리</li>
                        <li id="etc1">잡화</li>
                        <li id="life1">라이프웨어</li>
                        <li id="big1">빅사이즈</li>
                    </ul>
                </nav>
                <li id="catagory2">브랜드&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down2">
                    <ul>
                        <li id="all2">전체</li>
                        <li id="outer2">아우터</li>
                        <li id="top2">상의</li>
                        <li id="bottom2">바지</li>
                        <li id="dress2">원피스</li>
                        <li id="skirt2">스커트</li>
                        <li id="shoes2">신발</li>
                        <li id="bag2">가방</li>
                        <li id="jewelry2">주얼리</li>
                        <li id="etc2">잡화</li>
                        <li id="life2">라이프웨어</li>
                        <li id="big2">빅사이즈</li>
                        <li id="sports2">스포츠웨어</li>
                    </ul>
                </nav>
                <li id="catagory3">뷰티&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down3">
                    <ul>
                        <li id="all3">전체</li>
                        <li id="skin3">스킨케어</li>
                        <li id="makeup3">메이크업</li>
                        <li id="body3">바디케어</li>
                        <li id="hair3">헤어케어</li>
                        <li id="perfume3">향수</li>
                        <li id="acc3">미용소품</li>
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
<script>
   
    
</script>

</html>