<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>mypage</title>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
<script language="javascript" src="/resources/user/JS/mypage4.js"
	type="text/javascript"></script>



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
				<li id="order4" onclick="acyncMovePage2();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-mypage-orderlist-s@3x.png"><br>
				<a>주문 / 배송조회</a></li>
				<li id="info4" onclick="acyncMovePage1();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-my-point-s@3x.png"><br>
				<a>내 정보</a></li>
				<li id="coupon4" onclick="acyncMovePage3();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-mypage-coupon-s@3x.png"><br>
				<a>리뷰</a></li>
				<li id="QandA4" onclick="acyncMovePage4();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-mypage-qna-s@3x.png"><br>
				<a>Q & A</a></li>
				<li id="FandQ4" onclick="acyncMovePage5();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-myshopping-faq-s@3x.png"><br>
				<a>FAQ</a></li>
			</ul>
		</nav>
		<div id="s_list4">
            <table>
				<thead>
					<tr>
						<th>상품명</th>
						<th>답변상태</th>
                        <th>내용</th>
                        <th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
                        <td>[아디다스]삼선쓰레빠</td>
                        <td>미답변</td>
                        <td>아이보리 비침 있나요?</td>
                        <td>2020.07.30</td>
                    </tr>
				</tbody>
            </table> 
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
