<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/user/CSS/join2.css" />
    <script language="javascript" src="/resources/user/JS/join2.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
</head>

<body>

    <div id="phone1">
        <h1>회원가입</h1>
        <nav id="joinmenu1">
            <ul>
                <li id="identity1"><img
                        src="https://www.brandi.co.kr/static/3.47.2/images/ic-join-step-01-s@3x.png"><br>본인인증</li>
                <li id="agree1"><img
                        src="https://www.brandi.co.kr/static/3.47.2/images/ic-join-step-02-40-s@3x.png"><br>정보수집동의</li>
                <li id="joinform1"><img
                        src="https://www.brandi.co.kr/static/3.47.2/images/ic-join-step-03-40-s@3x.png"><br>정보입력</li>
                <li id="finish1"><img
                        src="https://www.brandi.co.kr/static/3.47.2/images/ic-join-step-04-s@3x.png"><br>가입완료</li>
            </ul>
        </nav>
        <div id="content">
            <a id="contenta">가입 약관 동의</a>
            <hr>
            <input type="checkbox" name="check-all" value="all" id="check-all" onclick="checkAll();"><a>모두 동의</a>
            <div id="content1">
                <div><input type="checkbox" name="all" value="all" id="ex_chk"><a>브랜디 약관 동의
                        <span>(필수)</span></a><a id="show" onclick="window.open('../HTML/information.html','정보동의')">내용보기</a></div>
                <div><input type="checkbox" name="all2" value="all" id="ex_chk"><a>개인정보수집 및 이용에 대한 안내
                        <span>(필수)</span></a><a id="show" onclick="window.open('../HTML/information.html','정보동의')">내용보기</a></div>
                <div><input type="checkbox" name="second" value="all" id="ex_chk"><a>이벤트/마케팅 수신 동의
                        <span>(선택)</span></a><a id="show" onclick="window.open('../HTML/information.html','정보동의')">내용보기</a></div>
                <div><input type="checkbox" name="third" value="all" id="ex_chk"><a>야간 혜택 알림 수신 동의
                        <span>(선택)</span></a><a id="show" onclick="window.open('../HTML/information.html','정보동의')">내용보기</a></div>
            </div>
            <hr>
            <button id="next" onclick="acyncMovePage()">다음</button>
        </div>
    </div>

</body>
<script>
   

    //alert(e.length);
    // TODO
    // ajax option
</script>

</html>