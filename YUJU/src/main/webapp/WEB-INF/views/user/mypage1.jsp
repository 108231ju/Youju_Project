<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>mypage</title>
<link rel="stylesheet" href="/resources/user/CSS/mypage1.css" />
<link rel="stylesheet" href="/resources/user/CSS/mypage2.css" />
<link rel="stylesheet" href="/resources/user/CSS/mypage3.css" />
<link rel="stylesheet" href="/resources/user/CSS/mypage4.css" />
<link rel="stylesheet" href="/resources/user/CSS/mypage5.css" />
<script language="javascript" src="/resources/user/JS/mypage1.js"
	type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>



</head>

<body>
	<%@include file="../user/includes/header.jsp"%>
	<%@include file="../user/includes/menu.jsp" %>

	<div id="phone">
		<h1>마이페이지</h1>
		<nav id="pagemenu">
			<ul>
				<li id="order" onclick="acyncMovePage2();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-mypage-orderlist-s@3x.png"><br>
					<a>주문 / 배송조회</a></li>
				<li id="info" onclick="acyncMovePage1();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-my-point-s@3x.png"><br>
					<a>내 정보</a></li>
				<li id="coupon" onclick="acyncMovePage3();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-mypage-coupon-s@3x.png"><br>
					<a>리뷰</a></li>
				<li id="QandA" onclick="acyncMovePage4();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-mypage-qna-s@3x.png"><br>
					<a>Q & A</a></li>
				<li id="FandQ" onclick="acyncMovePage5();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-myshopping-faq-s@3x.png"><br>
					<a>FAQ</a></li>
			</ul>
		</nav>
		<div id="s_list1">
			<c:forEach items="${list}" var="list">
				<table>
					<thead>
						<tr>
							<th id="date">00000000<c:out value="${list.ocode}" /> | 
							<fmt:formatDate pattern="yyyy.MM.dd" value="${list.updatedate}" /></th>
							
							
							<th id="add"></th>
							<th id="add"></th>
							<th id="add" name="ocode" onclick="location.href='/user/orderdetail?ocode=${list.ocode}'">주문상세보기></th>
						
						</tr>
					</thead>
					<tbody>				
								<tr>
									
									
									<td id="null"></td>
									<td id="i_price">주문금액</td>
									<td id="i_state">진행상황</td>
									<td id="price"></td>
								</tr>
								<tr>
									
									<td id="price"></td>
									<td id="price"><c:out value="${list.totalprice}" />원</td>
									<td id="state"><c:out value="${list.state}" /></td>
									<td id="price"></td>
								</tr>
							
						
					</tbody>
				</table>
			</c:forEach>
		</div>
	</div>


	</div>


	<%@include file="../user/includes/footer.jsp"%>
</body>
<script>
$("#add").click(function(e){
	console.log($("[name='ocode']").val());	
});
</script>


</html>