<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>join</title>
    <link rel="stylesheet" href="/resources/user/CSS/join1.css" />
    <link rel="stylesheet" href="/resources/user/CSS/join2.css" />
    <link rel="stylesheet" href="/resources/user/CSS/join3.css" />
    <script language="javascript" src="/resources/user/JS/join1.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
    


</head>

<body>
     <%@include file="../user/includes/header.jsp" %>
  <%@include file="../user/includes/menu.jsp" %>

    <div id="phone">
        <h1>회원가입</h1>
        <nav id="joinmenu">
            <ul>
                <li id="identity"><img
                        src="https://www.brandi.co.kr/static/3.47.2/images/ic-join-step-01-s@3x.png"><br>본인인증</li>
                <li id="agree"><img
                        src="https://www.brandi.co.kr/static/3.47.2/images/ic-join-step-02-40-s@3x.png"><br>정보수집동의</li>
                <li id="joinform"><img
                        src="https://www.brandi.co.kr/static/3.47.2/images/ic-join-step-03-40-s@3x.png"><br>정보입력</li>
                <li id="finish"><img
                        src="https://www.brandi.co.kr/static/3.47.2/images/ic-join-step-04-s@3x.png"><br>가입완료</li>
            </ul>
        </nav>

        <div id="phoneD">
            <img src="https://www.brandi.co.kr/static/3.47.2/images/h_icon_join_1_confirm_web(245)@3x.png">
            <br><a>브랜디 본인 인증</a>
            <ul>
                <li>14세미만 회원은 가입이 불가합니다.</li>
                <li>법인폰 사용자는 휴대폰 인증이 불가합니다.</li>
            </ul>
            <hr>
            <button id="btnphone" onclick="acyncMovePage()">휴대폰 인증</button>
        </div>
    </div>


  <%@include file="../user/includes/footer.jsp"%>
</body>
</html>