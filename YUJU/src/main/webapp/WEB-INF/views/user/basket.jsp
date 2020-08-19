<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>basket</title>
<link rel="stylesheet" href="/resources/user/CSS/like.css" />
<link rel="stylesheet" href="/resources/user/CSS/basket.css" />
<script language="javascript" src="/resources/user/JS/basket.js" type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
</head>

<body>
	<%@include file="../user/includes/header.jsp"%>
	<%@include file="../user/includes/menu.jsp"%>
	<div id="phone">
		<nav>
			<ul>
				<li id="like2" onclick="acyncMovePage2();">찜한상품</li>
				<li id="basket2" onclick="acyncMovePage1();">장바구니</li>
			</ul>
			<hr>
		</nav>
		
		<div id="basketlist">	
			<div id="b_select">
				<input type="checkbox" name="ck1" value="all" id="ck1" onclick="checkAll();">
				<a id="all">전체선택</a>
				<button id="alldelete" onclick="location.href='/user/allbasketdeleteOk'">전체삭제</button>
			</div>
					
			<div>		
				<form id="form" action="/user/basketupdateOk" method="post">
					<a id="title">브랜디 배송상품</a>
					<c:forEach items="${list}" var="basket">
					<c:set var="sum" value="${basket.bamount}" />
					<table id="orderTB">
						<thead>
							<tr>
								<th id="sname2">
									[<c:out value="${basket.sname}" />]
								</th>
								<th id="null2"></th>
								<th id="amount2">수량</th>
								<th id="price2">주문금액</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td id="check">
									<input type="checkbox" name="ck2" value="all" id="ck2"> 
									<img src="https://image.brandi.me/cproduct/2020/06/26/17371833_1593146130_image1_M.jpg">
								</td>
								<td id="proname">
									<a id="pname2"><c:out value="${basket.pname}" /></a>
									<input type="hidden" id="pcode" name="pcode" class="pcode" value="<c:out value='${basket.pcode}' />"/>	
									<button id="nmbtn" onclick="location.href='/user/basketdeleteOk?pcode=${basket.pcode}'">X</button>
									<br> 
									<a id="nmdetail" class="p_detail"><c:out value="${basket.bcolor}" />/<c:out value="${basket.bsize}" /></a>
								</td>
								<td id="proamount">
									
									<input type="text" class="amount" id="bamount" name="bamount" value="<c:out value="${basket.bamount}"/>" /> 
									
									<button id="update" type="submit">수정하기</button>
									<input type='hidden' name='p_detail' value="<c:out value='${basket.bcolor}' />/<c:out value='${basket.bsize}' />"/>
									<input type='hidden' name='total' value="<c:out value='${basket.pprice*sum}' />"/>
								</td>
								<td id="prototal">
									<a class="proprice"><c:out value="${basket.pprice*sum}" /></a><a id="won">원</a> 
									<br>
									<button id="probtn" onclick="location.href='/user/buy'">바로주문</button>
								</td>
							</tr>
						</tbody>				
					</table>
					</c:forEach>
				</form>
				
				<a id="pricetitle">총 결제예상금액</a>
								
				<div id="alldiv">
					<a id="allsum">총 상품금액 <input id="realTotal"/>원 + 총 배송비 0 원</a>
				</div>
				<form id="actionform" method="post"></form>
				<button id="buy" >결제하기</button>
			</div>
		</div>
	</div>
	<%@include file="../user/includes/footer.jsp"%>
</body>
<script>
	$(document).ready(function() {
		var sum = 0;
		$(".proprice").each(function() {
			sum += Number($(this).text())
		});
		$("#realTotal").val(sum);
		
		
		var objForm = $("#actionform");
		
		$("#buy").click(function(e){			
			e.preventDefault(); //이벤트의 기본기능 제거
			var list = $("#form").children().clone(true);
			$("#actionform").append(list);
					
			var str ="";
			//input아닐때 <a></a> $("#아이디").text() , input -> $("#아이디").val()
			/*orderlist*/
			str += "<input type='hidden' name='mcode' value='"+${loginMem.getMcode()}+"'/>";
			str += "<input type='hidden' name='totalprice' value='"+$("#realTotal").val()+"'/>";
							
			console.log(str);
			$("#actionform").append(str);
			$("#actionform").attr("action","/user/buy");
			$("#actionform").submit();
				
		});
	});	
</script>
</html>