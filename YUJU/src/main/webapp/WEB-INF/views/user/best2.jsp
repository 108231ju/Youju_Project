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
	<%@include file="../user/includes/menu.jsp"%>
    <div id="contant">
        <div id="tag">
        	<a id="one">쇼핑몰 · 마켓</a>><a id="two"> 베스트</a>><a id="three"> 전체</a>
        </div>
        <nav id="catagory">
            <ul>
                <li id="option">상품옵션</li>
                <li id="sale"><input type="checkbox" name="salechk" value="salechk" id="salechk">세일</li>
                <li id="best">BEST</li>
                <li id="catagory1">쇼핑몰 · 마켓&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down1">
                    <ul>
                        <li id="all1" onclick="location.href='/user/best?best=1'">전체</li>
                        <li id="outer1" onclick="location.href='/user/best2?cateCodeRef=100&best=1'">아우터</li>
                        <li id="top1" onclick="location.href='/user/best2?cateCodeRef=200&best=1'">상의</li>
                        <li id="bottom1" onclick="location.href='/user/best2?cateCodeRef=300&best=1'">바지</li>
                        <li id="dress1">원피스</li>
                        <li id="skirt1" onclick="location.href='/user/best2?cateCodeRef=400&best=1'">스커트</li>
                        <li id="shoes1" onclick="location.href='/user/best2?cateCodeRef=500&best=1'">신발</li>
                        <li id="bag1" onclick="location.href='/user/best2?cateCodeRef=600&best=1'">가방</li>
                        <li id="jewelry1" onclick="location.href='/user/best2?cateCodeRef=700&best=1'">주얼리</li>
                        <li id="etc1" onclick="location.href='/user/best2?cateCodeRef=800&best=1'">잡화</li>
                        <li id="life1" onclick="location.href='/user/best2?cateCodeRef=900&best=1'">라이프웨어</li>
                        <li id="big1" onclick="location.href='/user/best2?cateCodeRef=1000&best=1'">빅사이즈</li>
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
			<c:forEach items="${list}" var="list">
				<div id="product" onclick="location.href='/user/product1?pcode=${list.pcode}'">
				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
				<br>
				<a id="sname">[<c:out value="${list.sname}"/>]</a>
				<br><a id="pname"><c:out value="${list.pname}"/></a> 
				<br><a id="price"><c:out value="${list.pprice}"/>원</a>
			</div>
			</c:forEach>
		</div>
    </div>
	<%@include file="../user/includes/footer.jsp"%>
</body>
</html>