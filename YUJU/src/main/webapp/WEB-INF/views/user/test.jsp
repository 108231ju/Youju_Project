<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/user/CSS/test.css" />
    <script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
</head>
<body>
    <a href="#" id="toggle">Contact</a>
    <div id="contact">
        Contact me!
    </div>
    <br>
    <a href="#" id="toggle1">Contact</a>
    <div id="contact1">
        Contact me!
    </div>
</body>
<script>
    $(function()
{
     $("a#toggle").click(function()
     {
         $("#contact").slideToggle();
         return false;
     }); 
});
$(function()
{
     $("a#toggle1").click(function()
     {
         $("#contact1").slideToggle();
         return false;
     }); 
});
</script>
</html>