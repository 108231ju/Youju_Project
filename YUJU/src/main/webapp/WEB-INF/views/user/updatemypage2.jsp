<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>mypage</title>
<link rel="stylesheet" href="/resources/user/CSS/updatemypage2.css" />
<link rel="stylesheet" href="/resources/user/CSS/mypage1.css" />
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
<script language="javascript" src="/resources/user/JS/updatemypage2.js"
	type="text/javascript"></script>
   <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


</head>

<body>
	<%@include file="../user/includes/header.jsp"%>
	<%@include file="../user/includes/menu.jsp" %>
	<div id="phone">
		<h1>마이페이지</h1>
		<nav id="pagemenu">
			<ul>
				<li id="order2" onclick="acyncMovePage2();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-mypage-orderlist-s@3x.png"><br>
					<a>주문 / 배송조회</a></li>
				<li id="info2" onclick="acyncMovePage1();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-my-point-s@3x.png"><br>
					<a>내 정보</a></li>
				<li id="coupon2" onclick="acyncMovePage3();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-mypage-coupon-s@3x.png"><br>
					<a>리뷰</a></li>
				<li id="QandA2" onclick="acyncMovePage4();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-mypage-qna-s@3x.png"><br>
					<a>Q & A</a></li>
				<li id="FandQ2" onclick="acyncMovePage5();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-myshopping-faq-s@3x.png"><br>
					<a>FAQ</a></li>
			</ul>
		</nav>
		<div id="s_list2">
			<form action="/user/updateOk" method="post">
				<div id="member2">
					<a id="text">이름</a> <input type="text" id="name" name="mname"
						 />
					<hr>
					<a id="text">아이디</a><input type="text" id="id" name="mid"
						value="<c:out value='${mem.mid}'/>" readonly />
					<hr>
					<a id="text">비밀번호</a><input type="text" id="password" name="mpw"
						/> <a id="text">비밀번호 확인</a><input
						type="password" placeholder="비밀번호 재입력 (필수)" id="repassword"
						name="repassword" />
					<hr>
					<a id="text">핸드폰번호</a><input type="text" id="phonenum"
						name="mphone"  />
				</div>
				<div id="member2">
					<a id="text">이메일</a><input type="email" id="email" name="memail"
						/>
					<hr>
					<a id="text">주소</a> <br><br><br> <input type="text" id="sample4_post"
						name="maddress1"
						readonly />
						 <input type="button" onclick="juso()" value="우편번호검색" id="sample4_btn">
						<br> <input type="text" id="sample4_roadAddress"
						name="maddress2"
						readonly /> <input type="text" id="sample4_jibunAddress"
						name="maddress3"
						readonly /> <input type="text" id="sample4_detailAddress"
						name="maddress4"
						 /> <input type="text" id="sample4_extraAddress"
						name="maddress5" readonly/>
					
				</div>

				<button type="submit" id="btnphone"
					onclick="location.href='/user/updateOk'">수정</button>
			</form>
		</div>
	</div>
	<%@include file="../user/includes/footer.jsp"%>
</body>
<script>
	
</script>


</html>