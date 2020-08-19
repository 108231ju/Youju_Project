<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../storeMem/includes/header.jsp" %>
<!-- ============================================================== -->
<!-- Page wrapper -->
<!-- ============================================================== -->
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-7 align-self-center">
                <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">상품 정보 변경</h4>

            </div>
            <%--                    <div class="col-5 align-self-center">--%>
            <%--                        <div class="customize-input float-right">--%>
            <%--                            <select class="custom-select custom-select-set form-control bg-white border-0 custom-shadow custom-radius">--%>
            <%--                                <option selected>Aug 19</option>--%>
            <%--                                <option value="1">July 19</option>--%>
            <%--                                <option value="2">Jun 19</option>--%>
            <%--                            </select>--%>
            <%--                        </div>--%>
            <%--                    </div>--%>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <!-- ============================================================== -->
        <!-- Start Page Content -->
        <!-- ============================================================== -->
        <div class="row">

            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title"> 상품 정보 등록</h4>
                        <h6 class="card-subtitle"></h6>
                    </div>
                    <div class="table-responsive p-4">
                        <form role="form" action="/storeMem/uploadFormAction" method="post"
                              enctype="multipart/form-data">
                            <table class="table text-center">
                                <tbody>
                                <tr>
                                    <td style="background-color: #27282b; color: #fff; width: 15%">상품 등록 번호</td>
                                    <td COLSPAN="2"><input class="form-control col-3" name="pcode"
                                                           value="<c:out value='${pcode}'/>" readonly/>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background-color: #27282b; color: #fff; width: 15%">상품 이름</td>
                                    <td COLSPAN="2"><input class="form-control col-3" type="text" name="pname"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background-color: #27282b; color: #fff; width: 15%">상품 사이즈</td>


                                    <td COLSPAN="2">
                                        <div class="row">
                                            <input type="hidden" name="psize" value=""/>
                                            <input class="form-control col-3 ml-3" type="text" />
                                            <button id="sizebtn" class="form-control btn btn-primary ml-3 col-sm-1" type="button">+</button>
                                        </div>
                                        <div id ="sizelist" >

                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background-color: #27282b; color: #fff; width: 15%">상품 색깔</td>
                                    <td COLSPAN="2">
                                        <div class="row">
                                            <input type="hidden" name="pcolor" value=""/>
                                            <input class="form-control col-3 ml-3" type="text" />
                                            <button id="colorbtn" class="form-control btn btn-primary ml-3 col-sm-1" type="button">+</button>
                                        </div>
                                        <div id ="colorlist" >

                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background-color: #27282b; color: #fff; width: 15%">상품 가격</td>
                                    <td COLSPAN="2"><input class="form-control col-3" type="text" name="pprice"/></td>
                                </tr>
                                <tr>
                                    <td style="background-color: #27282b; color: #fff; width: 15%">상품 이미지</td>
                                    <style type="text/css">
                                        .uploadResult {
                                            width: 100%;
                                            background-color: slategray;
                                        }

                                        .uploadResult ul {
                                            display: flex;
                                            flex-flow: row;
                                            justify-content: center;
                                            align-items: center;
                                        }

                                        .uploadResult ul li {
                                            list-style: none;
                                            padding: 10px;
                                        }

                                        .uploadResult ul li img {
                                            width: 200px;
                                        }
                                    </style>
                                    <td width="200">
                                        <div class="uploadResult">
                                            <ul></ul>
                                        </div>
                                    </td>
                                    <td class="col-5">
                                        <div class="form-group uploadDiv row">
                                            <input type='file' name='uploadFile' multiple/>
                                            <input type='button' name='deleteFile' value="파일 삭제"/>
                                        </div>
                                    </td>

                                </tr>
                                </tbody>
                            </table>

                            <div>
                                <button class="btn-primary btn" type="submit"> 상품 등록</button>
                            </div>
                        </form>

                    </div>

                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End PAge Content -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Right sidebar -->
        <!-- ============================================================== -->
        <!-- .right-sidebar -->
        <!-- ============================================================== -->
        <!-- End Right sidebar -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Container fluid  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- footer -->
    <!-- ============================================================== -->
    <footer class="footer text-center text-muted">
        All Rights Reserved by Adminmart. Designed and Developed by <a
            href="https://wrappixel.com">WrapPixel</a>.
    </footer>
    <!-- ============================================================== -->
    <!-- End footer -->
    <!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Page wrapper -->
<!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<script src="/resources/admin/src/assets/libs/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap tether Core JavaScript -->
<script src="/resources/admin/src/assets/libs/popper.js/dist/umd/popper.min.js"></script>
<script src="/resources/admin/src/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- apps -->
<!-- apps -->
<script src="/resources/admin/src/dist/js/app-style-switcher.js"></script>
<script src="/resources/admin/src/dist/js/feather.min.js"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="/resources/admin/src/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
<script src="/resources/admin/src/assets/extra-libs/sparkline/sparkline.js"></script>
<!--Wave Effects -->
<!-- themejs -->
<!--Menu sidebar -->
<script src="/resources/admin/src/dist/js/sidebarmenu.js"></script>
<!--Custom JavaScript -->
<script src="/resources/admin/src/dist/js/custom.min.js"></script>
<script>
    $(document).ready(function () {

        var formObj = $("form[role='form']");

        $("button[type='submit']").on("click", function () {
            e.preventDefault();
            console.log("submit clicked");
        });


        $("#sizebtn").on("click", function (e) {
            e.preventDefault();
            $("#sizelist").append("<div class=\"row mt-2 ml-2\"><input class=\"form-control  col-3\" type=\"text\" /><button id=\"colorbtn\" class=\"form-control btn btn-outline-primary ml-3 col-sm-1\" type=\"button\">-</button></div>");

        });
        $("#colorbtn").on("click", function (e) {
            e.preventDefault();
            $("#colorlist").append("<div class=\"row mt-2 ml-2\"><input class=\"form-control  col-3\" type=\"text\" /><button id=\"colorbtn\" class=\"form-control btn btn-outline-primary ml-3 col-sm-1\" type=\"button\">-</button></div>");

        });
        var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
        var maxSize = 5242880; // 5MB
        //
        function checkExtension(fileName, fileSize) {
            if (fileSize >= maxSize) {
                alert("파일 사이즈 초과");
                return false;
            }

            if (regex.test(fileName)) {
                alert("해당 종류의 파일은 업로드 할 수 없습니다.");
                return false;
            }

            return true;
        }

        $("input[name='deleteFile']").on("click", function () {
        });
        function showUploadedFile(uploadResultArr) {
            if (!uploadResultArr || uploadResultArr.length == 0) {
                return;
            }
            var uploadUL = $(".uploadResult ul");

            var str = "";

            $(uploadResultArr).each(function (i, obj) {
                if (obj.image) {
                    var fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);

                    str += "<li><div>";
                    str += "<img src='/display?fileName=" + fileCallPath + "'>";
                    str += "</div>";
                    str += "</li>"
                } else {
                    alert("이미지 파일 업로드 오류");
                }
            });
            uploadUL.append(str);
        }

        $("input[type='file']").change(function (e) {
            var formData = new FormData();
            var inputFile = $("input[name='uploadFile']");

            var files = inputFile[0].files;


            for (var i = 0; i < files.length; i++) {
                if (!checkExtension(files[i].name, files[i].size)) {
                    return false;
                }
                formData.append("uploadFile", files[i]);
            }

            $.ajax({

                url: '/uploadAjaxAction',
                processData: false,
                contentType: false,
                data: formData,
                type: 'POST',
                dataType: 'json',
                success: function (result) {
                    showUploadedFile(result);
                }
            });


        });
    });
</script>
</body>


</html>