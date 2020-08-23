<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="../storeMem/includes/header.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- ============================================================== -->
<!-- Page wrapper  -->
<!-- ============================================================== -->
<div class="page-wrapper">
 
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <!-- ============================================================== -->
        <!-- Start Page Content -->
        <!-- ============================================================== -->
        <div class="row">

            <div class="col-12">
                <div class="card">
                   <div class="card-body text-center">
                        <h3 class="card-title font-weight-bold ">상품 문의 관리</h3>
                    </div>
                    <div class="col-md-11" style="align-self: center">
                        <div class="card border-danger">
                            <div class="card-header bg-danger">
                                <h3 class="mb-0 text-white text-center ">검색 조건</h3>
                            </div>
                            <div class="card-body text-center">
                                <span>
                                <label><strong class="card-title">문의 번호 : </strong></label> <input type="text"/>
                                </span>
                                <span class="ml-2">
                                <label><strong class="card-title">상품 이름 : </strong></label> <input type="text"/>
                                </span>
                                <span class="ml-2 mr-lg-5">
                                    <label><strong class="card-title">문의자 이름 : </strong></label> <input type="text"/>
                                </span>
                                <span class="ml-lg-5 mr-lg-5">
                                    <button type="button" class="btn btn-primary">검색</button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <h3 class="col-12 card-title font-weight-bold text-center">상품 문의 리스트</h3>
                    <div class="table-responsive p-2 text-center">
                    
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col" style="background-color:black; color:white;">문의 번호</th>
                                <th scope="col" style="background-color:black; color:white;">상품코드</th>
                                <th scope="col" style="background-color:black; color:white;">상품이름</th>
                                <th scope="col" style="background-color:black; color:white;">문의자 이름 (id)</th>
                                <th scope="col" style="background-color:black; color:white;">문의 날짜</th>
                                <th scope="col" style="background-color:black; color:white;">응답상태</th>
                            </tr>
                            </thead>
                            <tbody class="qnaList">
                           <c:forEach items="${qnas}" var="qna"  varStatus="status">
                            <tr>
                                <td scope="row" class="qnacode">${qna.qnacode}</td>
                                <td scope="row" class="pcode">${qna.pcode}</td>
                                <td scope="row" class="pname"><a href="/storeMem/reply-question-page?qnaCode=<c:out value='${qna.qnacode}'/>">${products[status.index].pname}</a></td>
                                 <td scope="row" class="mname">${mems[status.index].mname}</td>
                                <td scope="row" class="regdate"><fmt:formatDate pattern="yyyy/MM/dd" value="${qna.updatedate}"/></td>
                                <td scope="row" class="state">${qna.state}</td>
                            </tr>
                            </c:forEach>
                        </table>
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
	$(".state").each(function(){
		if($(this).text() == "미답변"){
			$(this).css("color","red");
		}
	});
	
});
</script>
</body>

</html>