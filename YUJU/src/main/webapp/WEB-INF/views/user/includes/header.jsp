<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<header>
	<div>
		<img href="#" id="Adver"
			src="https://image.brandi.me/home/banner/bannerImage_148115_1590975673.jpg">
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
			<%
				if (session.getAttribute("loginMem") != null) {
			%>
			<a onclick="location.href='/user/logout'">로그아웃</a>ㅣ<a
				onclick="location.href='/user/mypage1'">마이페이지</a>ㅣ<a
				onclick="location.href='/user/like'">찜&장바구니</a>
			<%
				} else {
			%>
			<a onclick="location.href='/user/login'">로그인</a>ㅣ<a
				onclick="location.href='/user/join1'">회원가입</a>ㅣ<a
				onclick="location.href='/user/mypage1'">마이페이지</a>ㅣ<a
				onclick="location.href='/user/like'">찜&장바구니</a>
			<%
				}
			%>

		</div>
	</div>
</header>

