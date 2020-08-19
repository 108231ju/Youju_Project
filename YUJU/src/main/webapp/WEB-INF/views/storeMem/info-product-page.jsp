<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<<<<<<< HEAD
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
=======
>>>>>>> refs/heads/master
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="../storeMem/includes/header.jsp" %>
<!-- ============================================================== -->
<!-- Page wrapper -->
<!-- ============================================================== -->
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">

    </div>
    <!-- ============================================================== -->
    <!-- End Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Container fluid -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <!-- ============================================================== -->
        <!-- Start Page Content -->
        <!-- ============================================================== -->
        <div class="row">

            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title">상품 정보 조회/수정</h3>
                    </div>
                    <div class="col-md-11" style="align-self: center">
                        <div class="card border-danger">
                            <div class="card-header bg-danger">
                                <h3 class="mb-0 text-white text-center ">검색 조건</h3>
                            </div>
                            <div class="card-body text-center">
                                <span>
                                <label><strong class="card-title">상품번호 : </strong></label> <input type="text"/>
                                </span>
<<<<<<< HEAD
                                <span class="ml-lg-5 mr-lg-5" >
                                    <label><strong class="card-title">카테고리 : </strong></label>
                                    <select name="cateCodeGroup" class="p-1">
                                            <option value="">대분류 선택</option>
                                            <option value="100">아우터</option>
                                            <option value="200">상의</option>
                                            <option value="300">바지</option>
                                            <option value="400">스커트</option>
                                            <option value="500">신발</option>
                                            <option value="600">가방</option>
                                            <option value="700">주얼리</option>
                                            <option value="800">잡화</option>
                                            <option value="900">라이프웨어</option>
                                            <option value="1000">빅사이즈</option>
                                        </select>

                                        <select name="cateCodeRefGroup" class="p-1">
                                            <option value="">소분류 선택</option>
                                            <c:forEach items="${catelist}" var="list">
                                            	<option name="catecode" value="${list.cateCode}" date-coderef="${list.cateCodeRef}">${list.cateName}</option>
											</c:forEach>
                                        </select>
=======
                                <span class="ml-lg-5 mr-lg-5">
                                    <label><strong class="card-title">카테고리 : </strong></label>
                                    <select style="width:90px">
                                        <option>-</option>
                                        <option>대분류</option>
                                        <option></option>
                                    </select>
                                    <select style="width:90px">
                                        <option>-</option>
                                        <option>베스트</option>
                                        <option>브랜드</option>
                                    </select>
                                    <select style="width:90px">
                                        <option>-</option>
                                        <option>상의</option>
                                        <option>하의</option>
                                    </select>
>>>>>>> refs/heads/master
                                </span>
                                <span class="ml-lg-5 mr-lg-5">
                                    <label><strong class="card-title">상품 이름 : </strong></label> <input type="text"/>
                                </span>
                                <span class="ml-lg-5 mr-lg-5">
                                    <button type="button" class="btn btn-primary">검색</button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <h3 class="col-12 card-title">상품 정보 조회 결과</h3>
                    <div class="table-responsive p-2 text-center">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">상품번호</th>
                                <th scope="col">대표 이미지</th>
                                <th scope="col">이름</th>
                                <th scope="col">카테고리</th>
                                <th scope="col">업데이트 시간</th>
                                <th scope="col">
                                </th>
                            </tr>
                            </thead>
<<<<<<< HEAD
                            <tbody class="list">
=======
                            <tbody>
>>>>>>> refs/heads/master
                            <c:forEach items="${products}" var="product">
                            <tr>
<<<<<<< HEAD
                                <th scope="row">${product.pcode}</th>
                                <th scope="row">이미지</th>
                                <td><c:out value="${product.pname}"/></td>
                                <td><c:out value="${product.pprice}"/></td>
                                <td><fmt:formatDate pattern="yyyy/MM/dd" value="${product.updatedate}"/></td>
                                <td>
                                    <button  class="btn btn-primary btnMody" value="${product.pcode }">수정</button>
=======
                                <th scope="row">1</th>
                                <td><c:out value="${products.pname}"/></td>
                                <td><c:out value="${products.pprice}"/></td>
                                <td><c:out value="${products.cate1}"/></td>
                                <td>
                                    <button onclick="location.href='/storeMem/modify-product-page'">수정</button>
>>>>>>> refs/heads/master
                                </td>
                            </tr>
                            </c:forEach>
                        </table>
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
    <!-- End Container fluid -->
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
</body>
<script>
$(document).ready(function(){
	$(".list").on("click",".btnMody",function(){
		location.href="/storeMem/modify-product-page?pcode="+$(this).attr("value");
	});
	
    $("[name='cateCodeRefGroup']").children().hide();
    $("[name='cateCodeGroup']").change(function(){ 
    	$("[name='cateCodeRefGroup']").children().hide();
    		$("[name='cateCodeRefGroup']").find("[date-coderef='"+$(this).val()+"']").show();
    	
    });
});
</script>

</html>