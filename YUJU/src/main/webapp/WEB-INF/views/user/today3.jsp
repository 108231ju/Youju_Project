<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <script language="javascript" src="/resources/user/JS/jquery-1.9.1.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/resources/user/CSS/today.css" />
    <script language="javascript" src="/resources/user/JS/today.js" type="text/javascript"></script>
</head>

<body>
       <%@include file="../user/includes/header.jsp" %>
  <%@include file="../user/includes/menu.jsp" %>
    <div id="contant">
        <div id="tag">
            <a id="one">하루배송 </a><a id="two"></a>><a id="three"> 전체</a>
        </div>
      <%@include file="../user/includes/todayaside.jsp" %>
        <div id="item">
		 <c:forEach items="${list}" var="list">
			<div id="product" onclick="location.href='/user/product1?pcode=${list.pcode}'">
				<img
					src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
				<br>
				<a id="sname">[<c:out value="${list.sname}"/>]</a> <br>
				<a id="pname"><c:out value="${list.pname}"/></a> <br>
				<a id="price"><c:out value="${list.pprice}"/>원</a>
			</div>
			</c:forEach>
		</div>
    </div>
   <%@include file="../user/includes/footer.jsp"%>
</body>

</html>