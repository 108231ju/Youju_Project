<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<hr>
	<nav id="menu">
        <ul>
           <li onclick="location.href='/user/index'">HOME</li>
            <li onclick="location.href='/user/best?best=1'">BEST</li>
            <li onclick="location.href='/user/today?today=1'">하루배송</li>
            <li onclick="location.href='/user/market'">쇼핑몰·마켓</li>
            <li onclick="location.href='/user/brand'">브랜드</li>
            <li onclick="location.href='/user/beauty'">뷰티</li>
            <li onclick="location.href='/user/event'">EVENT</li>
        </ul>
    </nav>
	<hr>
