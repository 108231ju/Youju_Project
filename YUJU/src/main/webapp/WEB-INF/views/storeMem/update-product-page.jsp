<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../storeMem/includes/header.jsp"%>
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
					<div class="card-body">
						<h3 class="card-title">상품 등록</h3>
						<h6 class="card-subtitle mt-3">판매할 상품의 존재 유무 확인을 위하여 먼저
							검색해주시기 바랍니다.</h6>

						<div class="col-12">
							<form method="get" action="/storeMem/searchforitem"
								class="form-group mt-3 row">
								<input type="text" class="form-control col-5 mr-3" name="search" value="<c:out value='${search}'/>">
								<button type="submit" class="btn btn-primary">검색</button>
							</form>
							

						</div>
						<div id="searchresult"></div>
						<input id="addbtn" type="button" class="form-control btn-danger" value="추가" onclick="location.href='/storeMem/register-product-page'"/>
						<div class="table-responsive" id="resulttable">
							<table class="table">
								<thead class="thead-light">
									<tr>
										<th scope="col">#</th>
										<th scope="col">상품이미지</th>
										<th scope="col">상품코드</th>
										<th scope="col">상품명</th>
										<th scope="col">상품가격</th>
										<th scope="col">상품업데이트날짜</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${searchlist}" var="pro">
										<tr>
											<th scope="row">1</th>
											<td><c:out value="${pro.pimg}" /></td>
											<td><c:out value="${pro.pcode}" /></td>
											<td><c:out value="${pro.pname}" /></td>
											<td><c:out value="${pro.pprice}" /></td>
											<td><c:out value="${pro.updatedate}" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
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
<script
	src="/resources/admin/src/assets/libs/popper.js/dist/umd/popper.min.js"></script>
<script
	src="/resources/admin/src/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- apps -->
<!-- apps -->
<script src="/resources/admin/src/dist/js/app-style-switcher.js"></script>
<script src="/resources/admin/src/dist/js/feather.min.js"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script
	src="/resources/admin/src/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
<script
	src="/resources/admin/src/assets/extra-libs/sparkline/sparkline.js"></script>
<!--Wave Effects -->
<!-- themejs -->
<!--Menu sidebar -->
<script src="/resources/admin/src/dist/js/sidebarmenu.js"></script>
<!--Custom JavaScript -->
<script src="/resources/admin/src/dist/js/custom.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){ 
	$("#resulttable").hide();	
	$("#addbtn").hide();	
	
	var result = '<c:out value="${result}"/>';
	
	if(result === "1"){
		$("#searchresult").append("<p class='card-title'>검색 결과 <c:out value="${result}"/>  건이 발생하였습니다.</p>");
		$("#resulttable").show();	
		$("#addbtn").show();
	}
	else if(result === "2"){
		$("#searchresult").append("<p class='card-title'>검색 결과가 없습니다. 상품을 등록하시겠습니까?</p>");
		$("#addbtn").show();
	}
});

</script>
</body>

</html>