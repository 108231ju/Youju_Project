<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html lang="ko">
<head>
<meta charset="UTF-8">
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<!-- <P>  The time on the server is ${serverTime}. </P> -->
<c:forEach items="${list}" var="mem">
	<p><c:out value="${mem.rcode}"/></p>
	<p><c:out value="${mem.ocdoe}"/></p>
</c:forEach>
</body>
</html>
