<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/user/CSS/join3.css" />
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript" src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script> -->
    <script language="javascript" src="/resources/user/JS/join3.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
</head>

<body>

    <div id="phone2">
        <h1>회원가입</h1>
        <nav id="joinmenu2">
            <ul>
                <li id="identity2"><img
                        src="https://www.brandi.co.kr/static/3.47.2/images/ic-join-step-01-s@3x.png"><br>본인인증</li>
                <li id="agree2"><img
                        src="https://www.brandi.co.kr/static/3.47.2/images/ic-join-step-02-40-s@3x.png"><br>정보수집동의</li>
                <li id="joinform2"><img
                        src="https://www.brandi.co.kr/static/3.47.2/images/ic-join-step-03-40-s@3x.png"><br>정보입력</li>
                <li id="finish2"><img
                        src="https://www.brandi.co.kr/static/3.47.2/images/ic-join-step-04-s@3x.png"><br>가입완료</li>
            </ul>
        </nav>
        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <div>
            <form action="/user/join4"  method="post">
                <div id="member2">
                    <input type="text" placeholder="이름 입력 (필수)" id="name" name="mname" />
                    <input type="text" placeholder="아이디 입력 (필수)" id="id" name="mid" />
                    <hr>
                    <input type="text" placeholder="비밀번호 입력 (필수)" id="password" name="mpw" />
                    <input type="password" placeholder="비밀번호 재입력 (필수)" id="repassword" name="repassword" />
                    <hr>
                    <input type="text" placeholder="휴대폰 번호입력 (필수)" id="phonenum" name="mphone" />

                    <input type="email" placeholder="이메일 입력 (필수)" id="email" name="memail" />
                    <hr>
                	 <input type="text" id="sample4_post" placeholder="우편번호" name="maddress" readonly>
                    <input type="button" onclick="juso()" value="우편번호검색" id="sample4_btn">
                    <br><input type="text" id="sample4_roadAddress" placeholder="Street Address" name="maddress"
                        readonly>
                    <input type="text" id="sample4_jibunAddress" placeholder="Lot Number Address" name="maddress" readonly>
                    <input type="text" id="sample4_detailAddress" placeholder="Street Address (Line 2)"
                        name="maddress">
                    <input type="text" id="sample4_extraAddress" placeholder="Detailed Address" name="maddress"
                        readonly>
                    <hr>
                
                </div>
                <div>
                  
                </div>

                <button type="submit" >다음</button>
            </form>
            
            <!-- 
            
                        <form action="https://www.w3schools.com/action_page.php" id="memberform" method="get" name="frm">
                <div id="member2">
                    <input type="text" placeholder="이름 입력 (필수)" id="name" name="name" />
                    <input type="text" placeholder="아이디 입력 (필수)" id="id" name="id" />
                    <hr>
                    <input type="password" placeholder="비밀번호 입력 (필수)" id="password" name="password" />
                    <input type="password" placeholder="비밀번호 재입력 (필수)" id="repassword" name="repassword" />
                    <hr>
                    <input type="text" placeholder="휴대폰 번호입력 (필수)" id="phonenum" name="phonenum" />

                    <input type="email" placeholder="이메일 입력 (필수)" id="email" name="email" />
                    <hr>
                </div>
                <div class="sample4">
                    <input type="text" id="sample4_post" placeholder="우편번호" name="ZipCode" readonly>
                    <input type="button" onclick="juso()" value="우편번호검색" id="sample4_btn">
                    <br><input type="text" id="sample4_roadAddress" placeholder="Street Address" name="StreetAddr"
                        readonly>
                    <input type="text" id="sample4_jibunAddress" placeholder="Lot Number Address" name="Jibun" readonly>
                    <input type="text" id="sample4_detailAddress" placeholder="Street Address (Line 2)"
                        name="DetailAddr">
                    <input type="text" id="sample4_extraAddress" placeholder="Detailed Address" name="ExtraAddr"
                        readonly>
                    <hr>
                </div>

                <button type="button" id="next" onclick="chkSubmit()">다음</button>
            </form>
             
            -->



</body>
<script>
  
</script>

</html>