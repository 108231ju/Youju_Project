<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <link rel="stylesheet" href="/resources/user/CSS/product2.css" />
    <script language="javascript" src="/resources/user/JS/product.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>

</head>

<body>
  <%@include file="../user/includes/header.jsp" %>
  <%@include file="../user/includes/menu.jsp" %>
   <div id="content">
		<div id="p_img">
			<img
				src="https://image.brandi.me/cproduct/2020/03/24/14859033_1585031849_image1_L.jpg">
		</div>

		<form action="/user/basketinsertOk" method="post">
			<div id="p_detail">
				<!--<c:out value="${view}"/>-->
				<input type="hidden" id="pcode" name="pcode" value="${view.pcode}" />
				<a id="sname">[${view.sname}]</a> <br> <a id="pname">${view.pname}</a>
				<br> <a id="price">${view.pprice}원</a>
				<hr>
				<br> <a id="sale">상품 할인쿠폰을 적용하면 최대 900원 할인 받을 수 있어요!</a> <br>
				<br>
				<hr>
				<br> <a id="deli">배송 브랜디 배송 </a> 
				<br> <a id="deli2">서울지역 내일 새벽 7시 전 도착 예정</a> 
				<br> <a id="deli3">하루배송 상품 2개 이상 오늘 밤9시 전결제 시</a> 
				<br> <a id="deli4">(해당 배송 서비스는 앱에서 결제 시 적용됩니다)</a> 
				<br> <a id="deli5">전체 지역 모레 도착 예정</a> 
				<br> <a id="deli6">하루배송 상품 내일 오후 2시 전 결제 시</a> 
				<br><br>
				<hr>
				<br> <a id="plus">적립금 132원 최대 2,000원 추가 적립 <br>기본 1% +
					하루배송 상품 2개 이상 결제 시 추가 적립
				</a> <br><br>
				<hr>
				<br> <a id="color">색상</a> 
				<select id="s_color" name="bcolor">
					<c:forEach items="${color}" var="color">
						<option>${color.pcolor}</option>
					</c:forEach>
				</select> 
				<br> <a id="size">사이즈</a> 
				<select id="s_size" name="bsize">
					<c:forEach items="${size}" var="size">
						<option>${size.psize}</option>
					</c:forEach>
				</select> 
				<br> <a id="bamount">수량</a> 
				<input type="button" id="m"
					onClick="javascript:this.form.amount.value--;" value="-"> 
				<input type="text" id="s_amount" name="amount" value="1" /> 
				<input type="button" value="+" id="p" onClick="javascript:this.form.amount.value++;"> 
				<br> <br>
				<hr>
				<br>
				<!--         총<input id="totalprice" value="<c:out value='1'/>"/>개의 상품 | 
        총 금액<input id="totalprice" value="<c:out value='${view.pprice}'/>"/>원 -->

				<a id="totalamount1">총</a><input id="totalamount" name="bamount" value="<c:out value='1'/>" readonly /> 
				<a id="totalamount1">개의 상품 | 총 금액</a></a><input id="totalprice" name="btotal" value="<c:out value='${view.pprice}'/>" readonly /><a id="totalamount1">원</a> 
				<br> <br>
				<button id="basket" type="submit">장바구니 담기</button>
		</form>

		<form id="actionform1" method="post"></form>
		<button id="buynow">바로 구매하기</button>

		<form id="actionform2" method="post"></form>
		<button id="like">❤</button>

	</div>
    <div id="menu1">
    <nav>
        <ul>
            <li id="info2" onclick="location.href='/user/product1?pcode=${view.pcode}'">상품정보</li>
            <li id="review2" onclick="location.href='/user/product2?pcode=${view.pcode}'">리뷰</li>
            <li id="QandA2" onclick="location.href='/user/product3?pcode=${view.pcode}'">Q&A</li>
           
        </ul>
        
    </nav>

    <div id="s_list3">
        <a id="s_riview">리뷰</a>
         <c:forEach items="${review}" var="review">
        <table>
            <thead>
                <tr>
                    <th id="r_date">000000${review.rcode}
                        <br>
                        <fmt:formatDate pattern="yyyy.MM.dd" value="${review.updatedate}"/>
                    </th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td id="r_name">[${review.sname}]${review.pname}</td>
                    <td id="r_detail">${review.p_detail}</td>
                </tr>
                <tr>
                    <td id="r_con">${review.review}</td>
                    <td></td>
                </tr>
            </tbody>
        </table> 
        </c:forEach>
    </div>
</div>
</div>
   <%@include file="../user/includes/footer.jsp"%>
      <script type="text/javascript">
  	$(document).ready(function() {
		$("#p").click(function() {
			var price = <c:out value="${view.pprice}"/>;
			console.log("ㅎ현주");
			var amount = $("#s_amount").val();

			console.log(price + "/" + amount);

			var totalprice = price * amount;
			$("#totalprice").val(totalprice);
			$("#totalamount").val(amount);
			});

	$("#m").click(function() {
		var amount = $("#s_amount").val();
		
		if (parseInt(amount) < 1) {alert("no minus ");
			$("#s_amount").val(1);
			return;
		} else if (parseInt(amount) >= 1) {
			var price = <c:out value="${view.pprice}"/>;
			console.log("ㅎ현주");
			console.log(price + "/" + amount);

			var totalprice = price * amount;
			$("#totalprice").val(totalprice);
			$("#totalamount").val(amount);
		}
			});

	var objForm = $("#actionform1");
	
	$("#buynow").click(function(e){
		e.preventDefault(); //이벤트의 기본기능 제거
		
		var str ="";
		//input아닐때 <a></a> $("#아이디").text() , input -> $("#아이디").val()
		str += "<input type='hidden' name='mcode' value='"+${loginMem.getMcode()}+"'/>";
		str += "<input type='hidden' name='pcode' value='"+$("#pcode").val()+"'/>";
		str += "<input type='hidden' name='bamount' value='"+$("#totalamount").val()+"'/>";
		str += "<input type='hidden' name='btotal' value='"+$("#totalprice").val()+"'/>";
		str += "<input type='hidden' name='psize' value='"+$("#s_size").val()+"'/>";
		str += "<input type='hidden' name='pcolor' value='"+$("#s_color").val()+"'/>";
		str += "<input type='hidden' name='sname' value='"+$("#sname").text()+"'/>";
		str += "<input type='hidden' name='pname' value='"+$("#pname").text()+"'/>";
		
		console.log(str);
		$("#actionform1").append(str);
		$("#actionform1").attr("action","/user/buy2");
		$("#actionform1").submit();
		
		
	});
	
	
	var objForm = $("#actionform2");

	$("#like").click(function(e) 
			{e.preventDefault(); //이벤트의 기본기능 제거

		var str = "";
		//input아닐때 <a></a> $("#아이디").text() , input -> $("#아이디").val()
		str += "<input type='hidden' name='mcode' value='" 
		+ ${loginMem.getMcode()}+"'/>";
		
		str += "<input type='hidden' name='pcode' value='"
				+ $("#pcode").val()
				+ "'/>";
		console.log(str);
		$("#actionform2").append(str);
		$("#actionform2").attr("action","/user/likeOk");
		$("#actionform2").submit();

	});
});
	</script>
</body>

</html>