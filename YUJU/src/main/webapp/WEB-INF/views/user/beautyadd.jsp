<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>beauty</title>
    <script language="javascript" src="/resources/user/JS/jquery-1.9.1.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/resources/user/CSS/beautyadd.css" />
    <script language="javascript" src="/resources/user/JS/beautyadd.js" type="text/javascript"></script>
</head>

<body>
    <%@include file="../user/includes/header.jsp" %>
   	<%@include file="../user/includes/menu.jsp"%>
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
 			<div id="product">
 				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                <br><a id="sname">[321g]</a>
                <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                <br><a id="price">22800</a>
            </div>
 			<div id="product">
 				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                <br><a id="sname">[321g]</a>
                <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                <br><a id="price">22800</a>
            </div>
 			<div id="product">
 				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                <br><a id="sname">[321g]</a>
                <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                <br><a id="price">22800</a>
            </div>
 			<div id="product">
 				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                <br><a id="sname">[321g]</a>
                <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                <br><a id="price">22800</a>
            </div>
 			<div id="product">
 				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                <br><a id="sname">[321g]</a>
                <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                <br><a id="price">22800</a>
            </div>
 			<div id="product">
 				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                <br><a id="sname">[321g]</a>
                <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                <br><a id="price">22800</a>
            </div>
 			<div id="product">
 				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                <br><a id="sname">[321g]</a>
                <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                <br><a id="price">22800</a>
            </div>
 			<div id="product">
 				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                <br><a id="sname">[321g]</a>
                <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                <br><a id="price">22800</a>
            </div>
 			<div id="product">
 				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                <br><a id="sname">[321g]</a>
                <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                <br><a id="price">22800</a>
            </div>
 			<div id="product">
 				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                <br><a id="sname">[321g]</a>
                <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                <br><a id="price">22800</a>
            </div>              
        </div>
    </div>
    <%@include file="../user/includes/footer.jsp"%>
</body>
</html>