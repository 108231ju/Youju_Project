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
<script language="javascript" src="/resources/user/JS/mypage4.js"
	type="text/javascript"></script>



</head>

<body>
	<%@include file="../user/includes/header.jsp"%>
	<%@include file="../user/includes/menu.jsp" %>

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
                        <th></th>
					</tr>
				</thead>
				<c:forEach items="${list}" var="question">
				<tbody>
					<tr>
                        <td>[<c:out value="${question.sname}"/>]
                        <br><c:out value="${question.pname}"/></td>
                        <td><c:out value="${question.state}"/></td>
                        <td id="question"><c:out value="${question.question}"/><input type="hidden" name="qnacode" value="<c:out value='${question.qnacode}'/>"></td>
                        <td><fmt:formatDate pattern="yyyy.MM.dd" value="${question.updatedate}"/></td>
                        <td><button id="delete1" onclick="location.href='/user/qdeleteOk?qnacode=${question.qnacode}'">X</button></td>
                    </tr>
                    <tr id="last">
                        <td></td>
                        <td><span>ㄴ답변</span></td>
                        <td id="answer"><c:out value="${question.answer}"/></td>
                        <td></td>       
                    </tr>
				</tbody>
				</c:forEach>
            </table> 
        </div>
	</div>
	<%@include file="../user/includes/footer.jsp"%>
</body>
<script>
	$("#delete").click(function(e){
		console.log($("[name='qnacode']").val());	
	});
</script>


</html>
