<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../storeMem/includes/header.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<h4
					class="page-title text-truncate text-dark font-weight-medium mb-1">상품
					문의 정보</h4>
				<div class="d-flex align-items-center">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb m-0 p-0">
							<li class="breadcrumb-item"><a href="index.html"
								class="text-muted">상품 정보 수정</a></li>
							<li class="breadcrumb-item text-muted active" aria-current="page">상품
								정보 삭제</li>
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
						<h3 class="card-title">상품 문의 관리</h3>
					</div>
					<div class="col-md-11" style="align-self: center">
					<div class="table-responsive p-4">
							<table class="table text-center">
								<tbody>
								<tr>
										<td style="background-color: #27282b; color: #fff; width: 15%">문의 번호</td>
										<td><input id="qnacode" type='text' value='${qna.qnacode}'/></td>
									</tr>
									<tr>
										<td style="background-color: #27282b; color: #fff; width: 15%">문의자</td>
										<td>
										<table class="table">
											<thead class="thead-dark">
												<tr>
													<th scope="col">문의자 이름</th>
													<th scope="col">문의자 연락처</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td scope="row" name="onum">${mem.mname}</td>
													<td scope="row" name="onum">${mem.mphone}</td>
												</tr>
											</tbody>
										</table>
										</td>
									</tr>
									<tr>
										<td style="background-color: #27282b; color: #fff; width: 15%">상품 정보</td>
										<td>
											<table class="table">
											<thead class="thead-dark">
												<tr>
													<th scope="col">상품이름</th>
													<th scope="col">문의 날짜</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td scope="row" name="onum">${product.pname }</td>
													<td scope="row" name="onum"><fmt:formatDate pattern="yyyy/MM/dd" value="${qna.regdate}"/></td>
												</tr>
											</tbody>
										</table>
										</td>
									</tr>
									<tr>
										<td style="background-color: #27282b; color: #fff; width: 15%">문의 내용</td>
										<td><textarea id="ques" style="resize: none; overflow-x:hidden; overflow-y:auto;" rows="5" cols="50">${qna.question}</textarea></td>
									</tr>
									<tr>
										<td style="background-color: #27282b; color: #fff; width: 15%">문의 응답</td>
										<td><textarea id="answer" style="resize: none;" rows="5" cols="50">${qna.answer}</textarea></td>
									</tr>
									
								</tbody>
							</table>
							
							<form role="form" action="/storeMem/reply-question-proc" method="post" >
								
							</form>

							<div>
								<button class="btn-primary btn" type="submit">응답 등록</button>
							</div>
						</div>
<!-- 						<div class="table-responsive p-2 text-center"> -->
<!-- 							<table class="table"> -->

<!-- 								<tbody class="list"> -->
<!-- 									<tr> -->
<!-- 										<tb>구매 정보</tb> -->
<!-- 										<tb> -->
<!-- 										<table class="table"> -->
<!-- 											<thead class="thead-dark"> -->
<!-- 												<tr> -->
<!-- 													<th scope="col">상품이름</th> -->
<!-- 													<th scope="col">색상/사이즈</th> -->
<!-- 													<th scope="col">구매날짜</th> -->
<!-- 												</tr> -->
<!-- 											</thead> -->
<!-- 											<tbody> -->
<!-- 												<tr> -->
<!-- 													<td scope="row" name="onum">상품이름</td> -->
<!-- 													<td scope="row" name="onum">색상/사이즈</td> -->
<!-- 													<td scope="row" name="onum">문의자이름</td> -->
<!-- 												</tr> -->
<!-- 											</tbody> -->
<!-- 										</table> -->
<!-- 										</tb> -->

<!-- 									</tr> -->
<!-- 									<tr> -->
<!-- 										<td style="background-color: #27282b; color: #fff; width: 15%">상품 -->
<!-- 											이름</td> -->
<!-- 										<td scope="row" name="onum">문의자이름</td> -->
<!-- 									</tr> -->
<!-- 									<tr> -->
<!-- 										<td style="background-color: #27282b; color: #fff; width: 15%">상품 -->
<!-- 											이름</td> -->
<!-- 										<td scope="row" name="onum">문의자이름</td> -->
<!-- 									</tr> -->
<!-- 									<tr> -->
<!-- 										<td style="background-color: #27282b; color: #fff; width: 15%">상품 -->
<!-- 											이름</td> -->
<!-- 										<td scope="row" name="onum">문의자이름</td> -->
<!-- 									</tr> -->
<!-- 							</table> -->
<!-- 						</div> -->
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
<script>
	$(document).ready(function() {
	$("[type='submit']").click(function(e){
		e.preventDefault();
		$("[role='form']").append("<input type='hidden' name='question' value='"+$("#ques").text()+"'/>");
		$("[role='form']").append("<input type='hidden' name='answer' value='"+$("#answer").val()+"'/>");
		$("[role='form']").append("<input type='hidden' name='qnacode' value='"+$("#qnacode").val()+"'/>");
		
		console.log($("[role='form']"))
		$("[role='form']").submit();
	});

	});
</script>
</body>

</html>