<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../storeMem/includes/header.jsp"%>
<!-- ============================================================== -->
<!-- Page wrapper -->
<!-- ============================================================== -->
<div class="page-wrapper">
	<!-- ============================================================== -->
	<!-- Bread crumb and right sidebar toggle -->
	<!-- ============================================================== -->
	<div class="page-breadcrumb text-center">
			<div class=" text-center">
				<h3
					class="page-title text-truncate text-dark font-weight-medium mb-1"> <span style="font-style:bold"><c:out value='${loginStoreMem.sname}'/></span> 스토어 관리 페이지에 오신 것을 환영합니다. </h3>
			</div>
	</div>
	<!-- ============================================================== -->
	<!-- End Bread crumb and right sidebar toggle -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- Container fluid  -->
	<!-- ============================================================== -->
	<div class="container-fluid">
		<!-- *************************************************************** -->
		<!-- Start First Cards -->
		<!-- *************************************************************** -->
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<div class="card border-dark">
					<div style="background-color: #000000" class="card-header">
						<h4 class="mb-0 text-white">판매 현황</h4>
					</div>
					<div class="card-body row">
						<div class="text-center">
							<c:forEach items="${statelists}" var="list">
								<input type="hidden" class="stateName"
									name="<c:out value='${list.state}'/>" value="${list.count}"/>
							</c:forEach>
							<img style="width: 50%; margin-left: 30px"
								src="/resources/admin/pay_ready_icon.png" />
							<h3 class="card-title stateTx" name="결제준비중">0건</h3>
						</div>
						<img style="width: 8%" src="/resources/admin/next_icon.png" />
						<div class="text-center">
							<img style="width: 60%"
								src="/resources/admin/ready_product_icon.png" />
							<h3 class="card-title stateTx" name="상품준비중">0건</h3>
						</div>
						<img style="width: 8%" src="/resources/admin/next_icon.png">
						<div class="text-center">
							<img style="width: 60%"
								src="/resources/admin/ready_delivery_icon.png" />
							<h3 class="card-title stateTx" name="배송준비중">0건</h3>
						</div>
						<img style="width: 8%" class="col-sm-1"
							src="/resources/admin/next_icon.png">
						<div class="text-center">
							<img style="width: 60%"
								src="/resources/admin/deliverying_icon.png" />
							<h3 class="card-title stateTx" name="배송중">0건</h3>
						</div>
						<img style="width: 8%" src="/resources/admin/next_icon.png">
						<div class="text-center">
							<img style="width: 60%" src="/resources/admin/complete_icon.png" />
							<h3 class="card-title stateTx" name="배송완료">0건</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- *************************************************************** -->
		<!-- End First Cards -->
		<!-- *************************************************************** -->
		<!-- *************************************************************** -->
		<!-- Start Sales Charts Section -->
		<!-- *************************************************************** -->
		<div class="row">

			<div class="col-lg-6 col-md-12">
				<div class="card">
					<div class="card-body">
						<div class="mb-2">
							<span class="card-title" style="font-size:20px">최근 주문 정보 리스트</span>
							<span style="float:right" class="text-danger"><a href="/storeMem/info-order-page">더보기</a></span>
						</div>	
						<table class="table text-center">
							<thead >
								<tr>
									<th scope="col" style="background-color:black; color:white;">주문번호</th>
									<th scope="col" style="background-color:black; color:white;">상품 이름</th>
									<th scope="col" style="background-color:black; color:white;">주문자 이름</th>
									<th scope="col" style="background-color:black; color:white;">주문상태</th>
									<th scope="col" style="background-color:black; color:white;">주문날짜</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${orderlist}" var="list">
								<tr class="orderTr">
									<td scope="row" name="ocode">${list.ocode}</td>
									<td scope="row" name="pname">${list.pname}</td>
									<td scope="row" name="minfo">${list.mname}(${list.mid})</td>
									<td name="stateP">${list.state}</td>
									<td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.updatedate}"/></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-12">
				<div class="card">
					<div class="card-body">
						<div class="mb-2">
							<span class="card-title" style="font-size:20px">최근 문의 정보 리스트</span>
							<span style="float:right" class="text-danger"><a href="/storeMem/question--page">더보기</a></span>
						</div>
						<table class="table text-center">
							<thead class="thead-dark">
								<tr>
									<th scope="col" style="background-color:black; color:white;">문의번호</th>
									<th scope="col" style="background-color:black; color:white;">상품이름</th>
									<th scope="col" style="background-color:black; color:white;">문의자이름</th>
									<th scope="col" style="background-color:black; color:white;">문의내용</th>
									<th scope="col" style="background-color:black; color:white;">응답상태</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${qnas}" var="qna"  varStatus="status">
	                            <tr>
	                                <td scope="row" class="qnacode">${qna.qnacode}</td>
	                                <td scope="row" class="pname">${products[status.index].pname}</td>
	                                 <td scope="row" class="mname">${mems[status.index].mname}</td>
	                                <td scope="row" class="question" style="  display: block; text-overflow: ellipsis;  width: 200px; overflow:hidden;  white-space: nowrap;	">${qna.question}</td>
	                                <td scope="row" class="state">${qna.state}</td>
	                            </tr>
                            </c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>

		</div>

		<!-- *************************************************************** -->
		<!-- End Location and Earnings Charts Section -->
		<!-- *************************************************************** -->
		<!-- *************************************************************** -->

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
<!-- 로그아웃 모달창-->

<script src="/resources/admin/src/assets/libs/jquery/dist/jquery.min.js"></script>
<script
	src="/resources/admin/src/assets/libs/popper.js/dist/umd/popper.min.js"></script>
<script
	src="/resources/admin/src/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- apps -->
<!-- apps -->
<script src="/resources/admin/src/dist/js/app-style-switcher.js"></script>
<script src="/resources/admin/src/dist/js/feather.min.js"></script>
<script
	src="/resources/admin/src/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
<script src="/resources/admin/src/dist/js/sidebarmenu.js"></script>
<!--Custom JavaScript -->
<script src="/resources/admin/src/dist/js/custom.min.js"></script>
<!--This page JavaScript -->
<script src="/resources/admin/src/assets/extra-libs/c3/d3.min.js"></script>
<script src="/resources/admin/src/assets/extra-libs/c3/c3.min.js"></script>
<script
	src="/resources/admin/src/assets/libs/chartist/dist/chartist.min.js"></script>
<script
	src="/resources/admin/src/assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
<script
	src="/resources/admin/src/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.min.js"></script>
<script
	src="/resources/admin/src/assets/extra-libs/jvector/jquery-jvectormap-world-mill-en.js"></script>
<script
	src="/resources/admin/src/dist/js/pages/dashboards/dashboard1.min.js"></script>
<script>
	$(document).ready(function() {
		$(".stateName").each(function(){
			$(".stateTx[name="+$(this).attr("name")+"]").text($(this).val()+"건");
		});
	});
</script>
</body>

</html>