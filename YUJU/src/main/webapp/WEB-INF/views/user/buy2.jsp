<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>join</title>
<link rel="stylesheet" href="/resources/user/CSS/buy.css" " />
<script language="javascript" src="/resources/user/JS/buy.js"
	" type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>



</head>

<body>
	<%@include file="../user/includes/header.jsp"%>
	<%@include file="../user/includes/menu.jsp" %>
	<div id="phone">
		<div id="basketlist">
			<div>
				<a id="title">브랜디 배송상품</a>
				<form id="form" action="/user/OrderOk2" method="post">
					
					<table id="orderTB">
						<thead>
							<tr>
								<th id="sname2"><c:out value="${list.sname}"/></th>
								<th id="null2"></th>
								<th id="null2"></th>
								<th id="amount2">수량</th>
								<th id="price2">주문금액</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td id="check">
									
									<img src="https://image.brandi.me/cproduct/2020/06/26/17371833_1593146130_image1_M.jpg">
								</td>
								<td id="proname">
									<a id="pname2"><c:out value='${list.pname}'/></a> 
									<input type="hidden" id="pcode" name="pcode" class="pcode" value="<c:out value='${list.pcode}'/>"/>
									<br> <a id="nmdetail" class="p_detail"><c:out value="${list.pcolor}"/>/<c:out value="${list.psize}"/></a>
								</td>
								<td>
									<input type='hidden' name='p_detail' value="<c:out value="${list.pcolor}"/>/<c:out value="${list.psize}"/>" />
									<input type='hidden' name='total' value="<c:out value="${list.btotal}"/>"/>
								</td>
								<td>
									<input id="amount" name="amount" value="<c:out value="${list.bamount}"/>" readonly/>
								</td>
								<td id="prototal">
									<a class="proprice"><c:out value="${list.btotal}"/></a>원 
									<br>
								</td>
							</tr>
						</tbody>
					</table>
				<a id="pricetitle">총 결제예상금액</a>
				<div id="alldiv">
					<a id="allsum">
					총 상품금액 <input id="totalprice" name="totalprice" value="<c:out value="${list.btotal}"/>" />원 + 총 배송비 0 원
					</a>
				</div>
			</div>
			<div id="s_list2">
				<h3>배송지 정보</h3>
				<div id="member2">
					<a id="text">이름</a> 
					<input type="text" id="name" name="mname" value="<c:out value="${mem.mname}"/>" readonly />
					<hr>
					<a id="text">핸드폰번호</a>
					<input type="text" id="phonenum" name="mphone" value="<c:out value="${mem.mphone}"/>" readonly />
					<hr>
					<a id="text">이메일</a>
					<input type="email" id="email" name="memail" value="<c:out value="${mem.memail}"/>" readonly />
					<hr>
					<a id="text">주소</a><br> <input type="text" id="sample4_post"
					name="maddress1" value="<c:out value="${mem.maddress1}"/>" readonly /> <br> <input
					type="text" id="sample4_roadAddress" name="maddress2" value="<c:out value="${mem.maddress2}"/>"
					readonly /> <input type="text" id="sample4_jibunAddress"
					name="maddress3" value="<c:out value="${mem.maddress3}"/>" readonly /> <input type="text"
					id="sample4_detailAddress" name="maddress4" value="<c:out value="${mem.maddress4}"/>" readonly />
					<input type="text" id="sample4_extraAddress" name="maddress5"
					value="<c:out value="${mem.maddress5}"/>" readonly />
				</div>
			<!--<button type="button" id="btnphone" onclick="location.href='/user/index'">결제하기</button>
	              -->
				<button id="buy">결제하기</button>
				</form>
			</div>
		</div>
	</div>
	<%@include file="../user/includes/footer.jsp"%>
</body>
<script>
	
</script>

</html>