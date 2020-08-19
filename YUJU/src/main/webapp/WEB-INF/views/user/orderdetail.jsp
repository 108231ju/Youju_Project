<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>join</title>
    <link rel="stylesheet" href="/resources/user/CSS/orderdetail.css"" />
    <script language="javascript" src="/resources/user/JS/buy.js"" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>



</head>

<body>
   <%@include file="../user/includes/header.jsp" %>
  <%@include file="../user/includes/menu.jsp" %>
 
    <div id="phone">

        <div id="basketlist">

            <div>
                <a id="title">브랜디 배송상품</a>
       <c:forEach items="${list}" var="list">
                <table>
                    <thead>
                        <tr>
                            <th id="sname2">[<c:out value="${list.sname}" />]</th>
                            <th id="null2"></th>
                            <th id="amount2">수량</th>
                            <th id="price2">주문금액</th>
                            <th id="write"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td id="check">

                                <img src="https://image.brandi.me/cproduct/2020/06/26/17371833_1593146130_image1_M.jpg">
                            </td>
                            <td id="proname">
                                <a id="pname2"><c:out value="${list.pname}" /> </a>
                                <br>
                                <a id="nmdetail"><c:out value="${list.p_detail}" /></a>
                            </td>
                            <td id="proamount">
                                <c:out value="${list.amount}" />    
                            </td>
                            <td id="prototal">
                                <a id="proprice"><c:out value="${list.total}" />원</a>
                            
                            </td>
                            <td id="prototal">
                           
                            <input type="hidden" name="pcode" id="pcode" value="<c:out value="${list.pcode}" />">
                             <button id="reviewbtn" onclick="location.href='/user/reviewWrite?pcode=${list.pcode}&ocode=${list.ocode}'">리뷰쓰기</button>
                           
                            
                            </td>
                        </tr>

                    </tbody>
                    </c:forEach>
                </table>

                <a id="pricetitle">총 결제금액</a>
                <div id="alldiv">
                    <a id="allsum">총 상품금액<c:out value="${list2.totalprice}" /> 원 + 총 배송비 0 원 <span id="sumtotal">총 결제예상 금액 <c:out value="${list2.totalprice}" />원</span></a>
                </div>


</form>
            </div>
           
        </div>
    </div>
   <%@include file="../user/includes/footer.jsp"%>
</body>
<script>

</script>


</html>