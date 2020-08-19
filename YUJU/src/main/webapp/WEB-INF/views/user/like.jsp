<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>join</title>
    <link rel="stylesheet" href="/resources/user/CSS/like.css" />
    <link rel="stylesheet" href="/resources/user/CSS/basket.css" />
    <script language="javascript" src="/resources/user/JS/like.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>



</head>

<body>
      <%@include file="../user/includes/header.jsp" %>
   <%@include file="../user/includes/menu.jsp" %>

    <div id="phone">
        <nav>
            
            <ul>
                <li id="like"  onclick="location.href='/user/like'">찜한상품</li>
                <li id="basket"  onclick="location.href='/user/basket'">장바구니</li>
            </ul>
            <hr>
        </nav>
        <div id="likelist">
        <c:forEach items="${like}" var="like">
            <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                <button id="delete" onclick="location.href='/user/likedeleteOk?pcode=${like.pcode}'" >X</button>
                <br><a id="sname">[<c:out value="${like.sname}" />]</a>
                <br><a id="pname"><c:out value="${like.pname}" /></a>
                <br><a id="price"><c:out value="${like.pprice}" /></a>
            </div>
            </c:forEach>
        </div>
    </div>


  <%@include file="../user/includes/footer.jsp"%>
</body>
<script>
   
</script>


</html>