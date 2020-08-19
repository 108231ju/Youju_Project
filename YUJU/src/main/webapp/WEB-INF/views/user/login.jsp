<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="/resources/user/CSS/login.css" />
</head>

<body>
      <%@include file="../user/includes/header.jsp" %>
   <%@include file="../user/includes/menu.jsp" %>
    <div id="loginf">
        <form action="/user/loginOk" method="post" id="loginform">
            <h1>오늘 사면 내일 도착!
                <br><span>무료배송으로 내일 받는 브랜디 LOGIN</span></h1>
            <input type="text" placeholder="아이디 입력" id="id" name="mid" />
            <input type="password" placeholder="비밀번호 입력" id="password" name="mpw" />
            <button id="btn1">로그인</button>
            <button id="btn2">회원가입</button>
            <a id="find">아이디 찾기</a>ㅣ<a id="findp">비밀번호 찾기</a>
        </form>
        <hr>
        <div id="SNS">
            <h3>간편로그인 / 가입</h3>
            <a id="btn3"><img id="facebook"
                    src="https://www.brandi.co.kr/static/3.47.2/images/facebook-logo.png">Facebook으로 계속하기</a>
            <a id="btn4"><img id="google" src="https://www.brandi.co.kr/static/3.47.2/images/google-logo.png">Google
                계정으로 계속하기</a>
            <a id="btn5"><img id="apple" src="https://www.brandi.co.kr/static/3.47.2/images/appleLogo@3x.png">Apple로
                계속하기</a>
        </div>
    </div>

 <%@include file="../user/includes/footer.jsp"%>
</body>

</html>