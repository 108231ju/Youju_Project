<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>beauty</title>
<script language="javascript"
	src="/resources/user/JS/jquery-1.9.1.min.js" type="text/javascript"></script>

<script language="javascript" src="/resources/user/JS/jquery-ui.min.js"
	type="text/javascript"></script>
<script language="javascript" src="/resources/user/JS/beauty.js"
	type="text/javascript"></script>
<link rel="stylesheet" href="/resources/user/CSS/beauty.css" />
</head>

<body>
	<%@include file="../user/includes/header.jsp"%>
	<%@include file="../user/includes/menu.jsp"%>
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
		<a id="title">Brandi Pick</a>		
		<a id="add" onclick="location.href='/user/beautyadd'">더보기</a>
		<a id="add2" onclick="location.href='/user/beautyadd'">></a>
		<div id="item">
			<div id="product">
				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
				<br>
				<a id="sname">[321g]</a> <br>
				<a id="pname">류즈 핀덕 어쩌고 이름</a> <br>
				<a id="price">22800</a>
			</div>
			<div id="product">
				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
				<br>
				<a id="sname">[321g]</a> <br>
				<a id="pname">류즈 핀덕 어쩌고 이름</a> <br>
				<a id="price">22800</a>
				</div>
			<div id="product">
				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
				<br>
				<a id="sname">[321g]</a> <br>
				<a id="pname">류즈 핀덕 어쩌고 이름</a> <br>
				<a id="price">22800</a>
				</div>
			<div id="product">
				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
				<br>
				<a id="sname">[321g]</a> <br>
				<a id="pname">류즈 핀덕 어쩌고 이름</a> <br>
				<a id="price">22800</a>
				</div>
			<div id="product">
				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
				<br>
				<a id="sname">[321g]</a> <br>
				<a id="pname">류즈 핀덕 어쩌고 이름</a> <br>
				<a id="price">22800</a>
				</div>
			<div id="product">
				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
				<br>
				<a id="sname">[321g]</a> <br>
				<a id="pname">류즈 핀덕 어쩌고 이름</a> <br>
				<a id="price">22800</a>
				</div>
			<div id="product">
				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
				<br>
				<a id="sname">[321g]</a> <br>
				<a id="pname">류즈 핀덕 어쩌고 이름</a> <br>
				<a id="price">22800</a>
				</div>
			<div id="product">
				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
				<br>
				<a id="sname">[321g]</a> <br>
				<a id="pname">류즈 핀덕 어쩌고 이름</a> <br>
				<a id="price">22800</a>
				</div>
			<div id="product">
				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
				<br>
				<a id="sname">[321g]</a> <br>
				<a id="pname">류즈 핀덕 어쩌고 이름</a> <br>
				<a id="price">22800</a>
				</div>
			<div id="product">
				<img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
				<br>
				<a id="sname">[321g]</a> <br>
				<a id="pname">류즈 핀덕 어쩌고 이름</a> <br>
				<a id="price">22800</a>
				</div>			
		</div>
	</div>
	<%@include file="../user/includes/footer.jsp"%>
</body>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
</html>