<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="../storeMem/includes/header.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- ============================================================== -->
<!-- Page wrapper  -->
<!-- ============================================================== -->
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-7 align-self-center">
                <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">주문 정보 처리</h4>
                <div class="d-flex align-items-center">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb m-0 p-0">
                            <li class="breadcrumb-item"><a href="index.html" class="text-muted">상품 정보 수정</a></li>
                            <li class="breadcrumb-item text-muted active" aria-current="page">상품 정보 삭제</li>
                        </ol>
                    </nav>
                </div>
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
                        <h3 class="card-title">주문 정보 조회/수정</h3>
                    </div>
                    <div class="col-md-11" style="align-self: center">
                        <div class="card border-danger">
                            <div class="card-header bg-danger">
                                <h3 class="mb-0 text-white text-center ">검색 조건</h3>
                            </div>
                            <div class="card-body text-center">
                                <span>
                                <label><strong class="card-title">주문 번호 : </strong></label> <input type="text"/>
                                </span>
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
                                </span>
                                <span class="ml-lg-5 mr-lg-5">
                                    <label><strong class="card-title">주문자 이름 : </strong></label> <input type="text"/>
                                </span>
                                <span class="ml-lg-5 mr-lg-5">
                                    <button type="button" class="btn btn-primary">검색</button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <h3 class="col-12 card-title">주문 정보 조회 결과</h3>
                    <div class="table-responsive p-2 text-center">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">주문 번호 </th>
                                <th scope="col">주문 상세번호 </th>
                                <th scope="col">주문자 이름(id)</th>
                                <th scope="col">상품 주문 수량</th>
                                <th scope="col">주문 총 가격</th>
                                <th scope="col">주문 처리 상태</th>
                                <th scope="col">업데이트 시간</th>
                                <th scope="col">
                                </th>
                            </tr>
                            </thead>
                            <tbody class="list">
                           
                            <c:forEach items="${orderlist}" var="list">
                            <tr>
                                <td scope="row" name="ocode">${list.ocode}</td>
                                <td scope="row" name="onum">${list.onum}</td>
                                <td scope="row">${list.mname}</td>
                                <td><c:out value="${list.amount}"/></td>
                                <td><c:out value="${list.total}"/>원</td>
                                <td><span><c:out value="${list.state}"/></span><button data-toggle="modal"
                               data-target="#stateModModal" class="stateMody btn btn-danger ml-2">변경</button></td>
                                <td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.updatedate}"/></td>
                                <td>
                                    <button  class="btn btn-primary btnMody" value="${list.ocode}" data-onum="${list.onum}">상세보기</button>
                                </td>
                            </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
 


        </div>
        <!-- <select name="stateGroup" class="p-1">
					                  	<option value="결제준비중" selected>결제준비중</option>
					                   	<option value="상품준비중">상품준비중</option>
					                    <option value="배송준비중">배송준비중</option>
					              		<option value="배송중">배송중</option>
                                		<option value="배송완료">배송완료</option>
                                	</select> -->
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
<!-- End Page wrapper  -->
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
$(document).ready(function(){
	$(".list").on("click",".btnMody",function(){
		location.href="/storeMem/order-proc-page?ocode="+$(this).attr("value")+"&onum="+$(this).attr("data-onum");
	});
	
	var modal = $("#stateModModal");
	
	$(".stateMody").click(function(e){
		e.preventDefault();
		var ocode  = $($(this).parents()[1]).children("[name='ocode']").text();
		var onum  = $($(this).parents()[1]).children("[name='onum']").text();
		var state = $(this).siblings().text();
		$("#state").val($(this).siblings().text());
		$("[name='thisState'] option").attr("selected",false);
		$("[name='thisState'] option[value='"+state+"']").attr("selected",true);
		$("#ocode").val(ocode);
		$("#onum").val(onum);
		var state2 ="";
		$("[name='thisState']").change(function(){
			$("#state").val($(this).val());
		});
		modal.show();
		console.log(state2);
		$("#modyOk").click(function(){
			location.href="/storeMem/modyState?ocode="+onum+"&onum="+onum+"&state="+$("#state").val();
		});
	});
	
});
</script>
</body>

</html>