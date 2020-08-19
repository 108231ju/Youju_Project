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
		
		<div id="s_list3">
		
<c:forEach items="${review}" var="review">
			 <table>
				<thead>
					<tr>
						<th id="r_date">000000<c:out value="${review.ocode}"/>
                            <br>
                            <fmt:formatDate pattern="yyyy.MM.dd" value="${review.updatedate}"/>
                        </th>
                        <th id="delete"><button id="delete1" onclick="location.href='/user/reviewdeleteOk?rcode=${review.rcode}'">X</button></th>
					</tr>
				</thead>
				<tbody>
					<tr>
                        <td id="r_name">[<c:out value="${review.sname}"/>]<c:out value="${review.pname}"/></td>
                        <td id="r_detail"><c:out value="${review.p_detail}"/></td>
                    </tr>
                    <tr>
                        <td id="r_con"><c:out value="${review.review}"/></td>
                        <td></td>
                    </tr>
				</tbody>
            </table> 
            </c:forEach>
		</div>
	</div>
	<%@include file="../user/includes/footer.jsp"%>
</body>
<script>
	
</script>


</html>