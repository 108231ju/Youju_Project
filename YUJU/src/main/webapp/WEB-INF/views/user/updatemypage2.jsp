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
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
<script language="javascript" src="/resources/user/JS/updatemypage2.js"
	type="text/javascript"></script>
   <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


</head>

<body>
	<%@include file="../user/includes/header.jsp"%>
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
					<hr>
					<a id="text">이메일</a><input type="email" id="email" name="memail"
						/>
					<hr>
					<a id="text">주소</a> <br> <input type="text" id="sample4_post"
						name="maddress1"
						readonly /> <br>
						 <input type="button" onclick="juso()" value="우편번호검색" id="sample4_btn">
						<br> <input type="text" id="sample4_roadAddress"
						name="maddress2"
						readonly /> <input type="text" id="sample4_jibunAddress"
						name="maddress3"
						readonly /> <input type="text" id="sample4_detailAddress"
						name="maddress4"
						readonly /> <input type="text" id="sample4_extraAddress"
						name="maddress5" />
					<hr>
				</div>

				<button type="submit" id="btnphone"
					onclick="location.href='/user/updateOk'">수정</button>
			</form>
		</div>
	</div>
	<footer>
		<div id="tel">
			<h2>고객센터 1234-1234</h2>
			<a>영업시간 : AM 10:00 ~ PM 17:00 (주말 및 공유일 휴무) <br>점심시간 : PM
				12:30 ~ PM 13:30
			</a>
		</div>
		<hr>
		<div id="address">
			<a> 회사명 : ㈜브랜디 | 대표이사 : 서정민 | 사업자등록번호 : 220-88-93187 | 통신판매업신고 :
				2016-서울강남-00359 | 호스팅사업자 : (주)브랜디 <br>주소 : (06223) 서울특별시 강남구
				테헤란로 32길 26 청송빌딩 <br>개인정보관리책임자 : 윤석호(privacy@brandi.co.kr) <br>브랜디는
				통신판매중개자로서 통신판매 당사자가 아니며, 판매자가 등록한 상품정보 및 거래에 브랜디는 책임을 지지 않습니다.
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