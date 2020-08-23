<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../storeMem/includes/header.jsp"%>
<!-- ============================================================== -->
<!-- Page wrapper -->
<!-- ============================================================== -->
<div class="page-wrapper">
	<!-- ============================================================== -->
	<!-- Bread crumb and right sidebar toggle -->
	<!-- ============================================================== -->

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
					<div class="card-body text-center">
						<h2 class="card-title font-weight-bold ">상품 정보 등록</h2>

					</div>
					<form role="form" action="/storeMem/register-product-proc"
						method="post" enctype="multipart/form-data">
						<div class="table-responsive p-4">
							<table class="table text-center">
								<tbody>
									<tr>
										<td style="background-color: #27282b; color: #fff; width: 15%">상품
											등록 번호</td>
										<td COLSPAN="2"><input class="form-control col-7"
											name="pcode" value="<c:out value='${pcode}'/>" readonly /></td>
									</tr>
									<tr>
										<td style="background-color: #27282b; color: #fff; width: 15%">상품
											이름</td>
										<td COLSPAN="2"><input class="form-control col-7"
											type="text" name="pname" /></td>
									</tr>
									<tr>
										<td style="background-color: #27282b; color: #fff; width: 15%">상품
											옵션 추가</td>
										<td COLSPAN="2" class="text-left">
											<div class="form-check form-check-inline m-2">

												<div class="custom-control custom-checkbox m-2">
													<input type="checkbox" class="custom-control-input"
														id="checkColor" checked disabled> <label
														class="custom-control-label" for="checkColor">색상</label>
												</div>

												<div class="custom-control custom-checkbox m-2">
													<input type="checkbox" class="custom-control-input"id="checkSize">
													 <label class="custom-control-label" for="checkSize">사이즈</label>
												</div>
											</div>
											<div id="inputOptions">
											<input type="text" class="form-control col-7 mb-2" id="color"name="color" value="" placeholder="ex) 빨강,파랑,녹색... " />
											<input type="hidden" class="form-control col-7" id="size" name="size" value="" placeholder="ex) S,M,L,XL or 250/255/260" /> 
												<button type="button" id="goMakeCheckTable" class="btn btn-primary mt-2" data-toggle="modal" data-target="#tableRemoveConFirm">적용</button>
											</div>
											<div class="table-responsive mt-2 col-10">
												<table id="optionCheckResult" class="table">
													<thead id="optionCheckResultTr" class="thead-light">
														<tr>
														</tr>
													</thead>
													<tbody id="tbody">
													</tbody>
												</table>
											</div>
										</td>
									</tr>
									<tr>
										<td style="background-color: #27282b; color: #fff; width: 15%">상품
											옵션 2</td>
										<td COLSPAN="2" class="text-left">
											<div class="form-check form-check-inline m-2">
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="today"> <input type="hidden" name="today"
														value="0"> <label class="custom-control-label"
														for="today">하루배송</label>
												</div>
												<div class="custom-control custom-checkbox m-2">
													<input type="checkbox" class="custom-control-input"
														id="best"> <input type="hidden" name="best"
														value="0"> <label class="custom-control-label"
														for="best">베스트</label>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td style="background-color: #27282b; color: #fff; width: 15%">카테고리</td>
										<td COLSPAN="2" class="text-left category"><select
											name="cateCodeGroup" class="p-1">
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
										</select> <select name="cateCodeRefGroup" class="p-1">
												<option value="">소분류 선택</option>
												<c:forEach items="${catelist}" var="list">
													<option name="catecode" value="${list.cateCode}"
														date-coderef="${list.cateCodeRef}">${list.cateName}</option>
												</c:forEach>
										</select></td>
									</tr>

									<tr>
										<td style="background-color: #27282b; color: #fff; width: 15%">상품
											가격</td>
										<td COLSPAN="2"><input class="form-control col-7"
											type="text" name="pprice" /></td>
									</tr>
									<tr>
										<td style="background-color: #27282b; color: #fff; width: 15%">상품
											이미지</td>
										<td class="text-left">
											<div class="inputArea">
												<label for="pImg">이미지</label> <input type="file" id="pImg"
													name="file" />
												<div class="select_img">
													<img id="productImg" src="" />
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>

							<div>
								<button class="btn-primary btn" type="submit">상품 등록</button>
							</div>
						</div>
					</form>

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
	var formObj = $("form[role='form']");
	
	//사이즈 , 색깔 부분
	$("#optionCheckResult").hide();
	
	$("#checkColor").on("click",function() {
		if ($("#checkColor").is(":checked") == true) {
			$("#color").attr("type", "text");
		} else if ($("#checkColor").is(":checked") == false) {
			$("#color").attr("type","hidden");
		}
	});
	
	$("#checkSize").on("click",function() {
		if ($("#checkSize").is(":checked") == true) {
			$("#size").attr("type", "text");
		} else if ($("#checkSize").is(":checked") == false) {
			$("#size").attr("type","hidden");
		}
	});
	
	
	
	$("#okbtn").on("click",function(e) {
		$("#optionCheckResult").show();
		var tr = $("#optionCheckResult").children(0).children(0);
		var colnum = 0;
		var colorArr = $("#color").val().split(',');
		var sizeArr = $("#size").val().split(',');
		tr.html("");
		tr.append("<th scope=\"col\">#</th>");
		
		if ($("#checkColor").is(":checked") == true) {
			tr.append("<th scope=\"col\">상품 색상</th>");
			colnum = 1;
		}
		
		if ($("#checkSize").is(":checked") == true) {
			tr.append("<th scope=\"col\">상품 사이즈</th>");
			colnum = 2;
		}
		
		if (($("#checkSize").is(":checked") == true)&& ($("#checkColor").is(":checked") == true)) {
			colnum = 3;
		}
		
		tr.append("<th scope=\"col\">판매 가능 재고</th>");
		
		var tbody = $("#tbody");
		tbody.html("");
		
		if (colnum == 1) {
			var tags = "";
			for (var j = 0; j < colorArr.length; j++) {
				tags += "<tr name='items'>"
				tags += "<td>"+ (j + 1)+ "</td><td><input type='text' class='form-control ' name='pcolor' value='" + colorArr[j] + "'/></td><td><input type='text' name='amount' class='form-control'/></td>";
				tags += "</tr>";
			}
			tags += "<input type='hidden' class='form-control' name='psize' value='-9999'/>";
			tbody.html(tags);
		} else if (colnum == 2) {
			var tags = "";
			for (var j = 0; j < sizeArr.length; j++) {
				tags += "<tr>"
				tags += "<td>"+ (j + 1)+ "</td><td><input type='text' class='form-control ' name='psize' value='" + sizeArr[j] + "'/></td><td><input type='text' name='amount' class='form-control'/></td>";
				tags += "</tr>";
			}
			tags += "<input type='hidden' class='form-control' name='pcolor' value='-9999'/>";
			tbody.html(tags);
		} else if (colnum == 3) {
			var tags = "";
			var totalCount = 1;
			for (var j = 0; j < sizeArr.length; j++) {
				for (var k = 0; k < colorArr.length; k++) {
					tags += "<tr>";
					tags += "<td>"+ totalCount+ "</td>";
					tags += "<td><input type='text' class='form-control' name='pcolor' value='" + colorArr[k] + "'/></td>";
					tags += "<td><input type='text' class='form-control' name='psize' value='" + sizeArr[j] + "'/></td>";
					tags += "<td><input type='text' class='form-control' name='amount' /></td>";
					tags += "</tr>";
					totalCount++;
				}
			}
			tbody.html(tags);
		}
	});
	
	
	
	

	$("[name='cateCodeRefGroup']").children().hide();
	
	$("[name='cateCodeGroup']").change(function() {$("[name='cateCodeRefGroup']").children().hide();
		$("[name='cateCodeRefGroup']").find("[date-coderef='" + $(this).val()+ "']").show();
	});
	
	$("[name='cateCodeRefGroup']").change(function() {
		$(".category").children("input").remove();
		$(".category").append(
			" <input type='hidden' name='catecode' value='"+ $("[name='cateCodeRefGroup']").val()+ "'>");
	});

	

	$("#best").on("click", function() {
		if ($("#best").is(":checked") == true) {
			$("input[name='best']").attr("value", "1");
		} else if ($("#best").is(":checked") == false) {
			$("input[name='best']").attr("value", "0");
		}
	});
	$("#today").on("click", function() {
		if ($("#today").is(":checked") == true) {
			$("input[name='today']").attr("value", "1");
		} else if ($("#today").is(":checked") == false) {
			$("input[name='today']").attr("value", "0");
		}
	});

	$("#pImg").change(function(){
		if(this.files && this.files[0]){
			var reader = new FileReader;
			reader.onload = function(data){
				$(".select_img img").attr("src",data.target.result).width(500);
				
			}
			reader.readAsDataURL(this.files[0]);
			$(this).css("width","100px");
			$(this).css("height","100px");
		}
	});
});
</script>
</body>


</html>