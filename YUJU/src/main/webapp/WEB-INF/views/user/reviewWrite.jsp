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
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
<script language="javascript" src="/resources/user/JS/mypage3.js"
	type="text/javascript"></script>
	<link rel="stylesheet" href="/resources/user/CSS/mypage1.css" />
	<link rel="stylesheet" href="/resources/user/CSS/mypage3.css" />



</head>

<body>
	<%@include file="../user/includes/header.jsp"%>
<%@include file="../user/includes/menu.jsp" %>

	<div id="phone">
		<h1>마이페이지</h1>
		<nav id="pagemenu">
			<ul>
				<li id="order3" onclick="acyncMovePage2();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-mypage-orderlist-s@3x.png"><br>
				<a>주문 / 배송조회</a></li>
				<li id="info3" onclick="acyncMovePage1();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-my-point-s@3x.png"><br>
				<a>내 정보</a></li>
				<li id="coupon3" onclick="acyncMovePage3();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-mypage-coupon-s@3x.png"><br>
				<a>리뷰</a></li>
				<li id="QandA3" onclick="acyncMovePage4();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-mypage-qna-s@3x.png"><br>
				<a>Q & A</a></li>
				<li id="FandQ3" onclick="acyncMovePage5();"><img
					src="https://www.brandi.co.kr/static/3.47.4/images/ic-myshopping-faq-s@3x.png"><br>
				<a>FAQ</a></li>
			</ul>
		</nav>
		<!--  -->
		<div id="s_list3">
		<form method="post" action="/user/reviewinsertOk">
<c:forEach items="${list}" var="list">
			 <table>
				<thead>
					<tr>
						<th id="r_date">000000<input id="ocode" name="ocode" value="<c:out value='${list.ocode}'/>"/>
						<input id="scode" type="hidden" name="scode" value="<c:out value='${list.scode}'/>"/>
						<input id="pcode" type="hidden" name="pcode" value="<c:out value='${list.pcode}'/>"/>
						<input id="mcode" type="hidden" name="mcode" value="<c:out value='${list.mcode}'/>"/>
                            <br>
                            
                        </th>
                        <th></th>
					</tr>
				</thead>
				<tbody>
					<tr>
                        <td id="r_name">[<c:out value="${list.sname}"/>]<c:out value="${list.pname}"/></td>
                        <td id="r_detail"><c:out value="${list.p_detail}"/></td>
                    </tr>
                    <tr>
                        <td id="r_con"><textarea rows="8" cols="120" id="review" name="review"></textarea></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><button type="submit" id="insert">등록</button></td>
                    </tr>
				</tbody>
				</form>
            </table> 
            </c:forEach>
		</div>
	</div>
	<%@include file="../user/includes/footer.jsp"%>
</body>
<script>
	$("#insert").click(function(e){
		console.log($("[name='ocode']").val());
	})
</script>


</html>