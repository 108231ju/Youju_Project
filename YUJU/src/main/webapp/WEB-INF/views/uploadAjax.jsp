<%--
  Created by IntelliJ IDEA.
  User: noyulim
  Date: 2020/08/01
  Time: 1:41 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<div class="uploadDiv">
    <input type="file" name='uploadFile' multiple>
</div>
<button id="uploadBtn" >Uplaod</button>
<script
        src="https://code.jquery.com/jquery-3.5.1.js"
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous"></script>
<script>
    $(document).ready(function () {
        $("#uploadBtn").on("click",function (e) {
            var formData = new FormData();
            var inputFile = $("input[name='uploadFile']");
            var files = inputFile[0].files;
            console.log(files);
            console.log(files);
            for(var i =0; i<files.length; i++){
                formData.append("uploadFile",files[i]);
            }
            $.ajax({
                url: '/uploadAjaxAction2',
                processData: false,
                contentType: false, data: formData,
                type: 'POST',
                dataType: 'json',
                success: function (result) {
                    alert("Upload");
                }
            });
        });
    });
</script>
</body>
</html>