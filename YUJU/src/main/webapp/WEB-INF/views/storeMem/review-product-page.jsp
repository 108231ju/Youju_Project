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
                        <h3 class="card-title font-weight-bold">상품 리뷰 관리</h3>
                    </div>
                    <div class="col-md-11" style="align-self: center">
                        <div class="card border-danger">
                            <div class="card-header bg-danger">
                                <h3 class="mb-0 text-white text-center ">검색 조건</h3>
                            </div>
                            <div class="card-body text-center">
                                <span>
                                <label><strong class="card-title">리뷰 번호 : </strong></label> <input type="text"/>
                                </span>
                                <span>
                                <label><strong class="card-title">상품 이름 : </strong></label> <input type="text"/>
                                </span>
                                <span class="ml-lg-5 mr-lg-5">
                                    <label><strong class="card-title">작성자 이름 : </strong></label> <input type="text"/>
                                </span>
                                <span class="ml-lg-5 mr-lg-5">
                                    <button type="button" class="btn btn-primary">검색</button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <h3 class="col-12 card-title font-weight-bold text-center">리뷰 작성 리스트</h3>
                    <div class="table-responsive p-2 text-center">
                    
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col" style="background-color:black; color:white;">리뷰번호</th>
                                <th scope="col" style="background-color:black; color:white;">주문번호</th>
                                <th scope="col" style="background-color:black; color:white;">상품번호</th>
                                <th scope="col" style="background-color:black; color:white;">상품이름</th>
                                <th scope="col" style="background-color:black; color:white;">작성자 이름 (id)</th>
                                <th scope="col" style="background-color:black; color:white;">작성 날짜</th>
                            </tr>
                            </thead>
                            <tbody class="qnaList">
                           <c:forEach items="${reviews}" var="review"  varStatus="status">
                            <tr>
                                <td scope="row" class="rcode">${review.rcode}<input type="hidden" class="reviewText" value='${review.review}'/></td>
                                <td scope="row" class="ocode">${orders[status.index].ocode}-${details[status.index].onum}<input type="hidden" class="orderdate" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${orders[status.index].regdate}"/>'/></td>
                                <td scope="row" class="pcode">${review.pcode}</td>
                                <td scope="row" class="pname"><a href="" data-toggle="modal"  data-target="#reviewItemModal" >${products[status.index].pname}</a></td>
                                 <td scope="row" class="mname">${mems[status.index].mname}</td>
                                <td scope="row" class="regdate"><fmt:formatDate pattern="yyyy/MM/dd" value="${review.updatedate}"/><input type="hidden" class="p_detail" value='${details[status.index].p_detail}'/></td>

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
	$(".qnaList").on("click",".pname",function(e){
		var pcode = $(this).siblings(".pcode").text();
		var pname = $(this).text();
		var p_detail = $(this).siblings(".regdate").children(".p_detail").val();
		var orderList = $(this).siblings(".ocode").children().val()
		var review = $(this).siblings(".rcode").children().val();
		var rcode = $(this).siblings(".rcode").text()
		
		$("[name='mopcode']").text(pcode);
		$("[name='mopname']").text(pname);
		$("[name='mop_detail']").text(p_detail);
		$("[name='mopregdate']").text(orderList);
		$("[name='m_review']").text(review);
		
		$(".deleteReviewBtn").click(function(){
			location.href="/storeMem/deleteReview?rcode="+rcode;
			
		});
		
	});
	
	
});
</script>
</body>

</html>