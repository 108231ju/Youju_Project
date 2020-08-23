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
                   <div class="card-body">
                        <h3 class="card-title font-weight-bold text-center">주문 정보 조회/수정</h3>
                    </div>
                    <div class="col-md-11" style="align-self: center">
                        <div class="card border-danger">
                            <div class="card-header bg-danger">
                                <h3 class="mb-0 text-white text-center ">검색 조건</h3>
                            </div>
                            <div class="card-body text-center">
                            <div class="col-lg-10">                        
                                
                                <span class="ml-lg-5 mr-lg-5">
                                  <label><strong class="card-title">주문 번호 : </strong></label> <input type="text"/>
                                </span>
                                <span class="ml-lg-5 mr-lg-5"> 
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
                            </div>
                             <div class="col-lg-10">                        
                                <span class="ml-lg-5 mr-lg-5"> 
                                    <label><strong class="card-title">주문자 이름 : </strong></label> <input type="text"/>
                                </span>
                                <span class="ml-lg-5 mr-lg-5">
                                    <label><strong class="card-title">상품 이름 : </strong></label> <input type="text"/>
                                </span>
                            </div>
                             <div class="col-lg-10">                        
                               <button type="button" class="btn btn-primary">검색</button>
                            </div>
<!--                                 <span> -->
<!--                                 	<label><strong class="card-title">주문 번호 : </strong></label> <input type="text"/> -->
<!--                                 </span> -->
<!--                                 <span class="ml-lg-5 mr-lg-5" > -->
<!--                                     <label><strong class="card-title">카테고리 : </strong></label> -->
<!--                                     <select name="cateCodeGroup" class="p-1"> -->
<!--                                             <option value="">대분류 선택</option> -->
<!--                                             <option value="100">아우터</option> -->
<!--                                             <option value="200">상의</option> -->
<!--                                             <option value="300">바지</option> -->
<!--                                             <option value="400">스커트</option> -->
<!--                                             <option value="500">신발</option> -->
<!--                                             <option value="600">가방</option> -->
<!--                                             <option value="700">주얼리</option> -->
<!--                                             <option value="800">잡화</option> -->
<!--                                             <option value="900">라이프웨어</option> -->
<!--                                             <option value="1000">빅사이즈</option> -->
<!--                                         </select> -->

<!--                                         <select name="cateCodeRefGroup" class="p-1"> -->
<!--                                             <option value="">소분류 선택</option> -->
<%--                                             <c:forEach items="${catelist}" var="list"> --%>
<%--                                             	<option name="catecode" value="${list.cateCode}" date-coderef="${list.cateCodeRef}">${list.cateName}</option> --%>
<%-- 											</c:forEach> --%>
<!--                                         </select> -->
<!--                                 </span> -->
<!--                                 <br/> -->
<!--                                 <span class="ml-lg-5 mr-lg-5"> -->
<!--                                     <label><strong class="card-title">주문자 이름 : </strong></label> <input type="text"/> -->
<!--                                 </span> -->
<!--                                 <span class="ml-lg-5 mr-lg-5"> -->
<!--                                     <label><strong class="card-title">상품 이름 : </strong></label> <input type="text"/> -->
<!--                                 </span> -->
<!--                                 <span class="ml-lg-5 mr-lg-5"> -->
<!--                                     <button type="button" class="btn btn-primary">검색</button> -->
<!--                                 </span> -->
                                
                                
                            </div>
                        </div>
                    </div>
                    <h3 class="col-12 card-title text-center font-weight-bold">주문 정보 조회 결과</h3>
                    <div class="table-responsive p-2 text-center">
                        <table class="table">
                            <thead >
                            <tr>
                                <th scope="col" style="background-color:black; color:white;">주문 번호 </th>
                                <th scope="col" style="background-color:black;color:white;">주문 상세번호 </th>
                                <th scope="col" style="background-color:black;color:white;">주문자 이름(id)</th>
                                <th scope="col" style="background-color:black;color:white;">상품 이름</th>
                                <th scope="col" style="background-color:black;color:white;">상품 주문 수량</th>
                                <th scope="col" style="background-color:black;color:white;">주문 총 가격</th>
                                <th scope="col" style="background-color:black;color:white;">주문 처리 상태</th>
                                <th scope="col" style="background-color:black;color:white;">업데이트 시간</th>
                                <th scope="col" style="background-color:black;color:white;">
                                </th>
                            </tr>
                            </thead>
                            <tbody class="tbody">
                            <c:forEach items="${orderlist}" var="list">
                            <tr class="orderTr">
                                <td scope="row" name="ocode">${list.ocode}</td>
                                <td scope="row" name="onum">${list.onum}</td>
                                <td scope="row" name="minfo">${list.mname}(${list.mid})<input type="hidden" name="p_detail" value="${list.p_detail}"></td>
                                <td scope="row"name="pname">${list.pname}</td>
                                <td name="amount"><c:out value="${list.amount}"/></td>
                                <td name="price"><c:out value="${list.total}"/>원</td>
                                <td name ="stateP"><span><c:out value="${list.state}"/></td>
                                <td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.updatedate}"/></td>
                                <td>	
                                    <button  data-toggle="modal" data-target="#orderListModal" class="btn btn-primary detail"  >상세보기</button>
<!--                                 data-toggle="modal" data-target="#orderListModal" -->
                                </td>
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

	});
	
	
	$(".tbody").on("click",".detail",function(e){
		

		var modal2 = $("#orderListModal");
		
		var tr = $(this).parents(".orderTr");
		var appendTr = tr.clone(true);


		appendTr.text("");
		appendTr.removeClass("orderTr");
		if($("#modalorder").children().length > 2){
			$("#modalorder").children(":eq(0)").remove();
			$("#modalorder").children(":eq(0)").remove();
			$("#modalorder").children(":eq(0)").remove();
			$("#modalorder").children(":eq(0)").remove();
			$("#modalorder").children(":eq(0)").remove();
			$("#modalorder").children(":eq(0)").remove();
		}
		
		var ocodeTd="<td scope='row'>"+tr.children("[name='ocode']").text()+"</td>";		
		var onumTd="<td scope='row'>"+tr.children("[name='onum']").text()+"</td>";
		var pname="<td scope='row'>"+tr.children("[name='pname']").text()+"</td>";
		var detail="<td scope='row'>"+tr.children(8).children("[name='p_detail']").val()+"</td>"
		var amount = "<td scope='row'>"+tr.children("[name='amount']").text()+"</td>";
		var price = "<td scope='row'>"+tr.children("[name='price']").text()+"</td>";
		
		$("#modalorder").prepend(price);
		$("#modalorder").prepend(amount);
		$("#modalorder").prepend(detail);
		$("#modalorder").prepend(pname);
		$("#modalorder").prepend(onumTd);
		$("#modalorder").prepend(ocodeTd);
		
		
		var selectstate=tr.children("[name='stateP']").text();
		
		$(".ordermodal").append("<input type='hidden' id ='state' value='"+selectstate+"'/>");
		
		$("[name='thisState'] option").attr("selected",false);
		$("[name='thisState'] option[value='"+selectstate+"']").attr("selected",true);
		
		$("[name='thisState']").change(function(){
			$("#state").val($(this).val());
		});
		
		
		$("#state").remove();
		$(".modalorder").append(appendTr);
		

		modal2.show();
		var ocode  = $($(this).parents()[1]).children("[name='ocode']").text();
		var onum  = $($(this).parents()[1]).children("[name='onum']").text();
		
		$("#okokok").click(function(){
			location.href="/storeMem/modyState?ocode="+onum+"&onum="+onum+"&state="+$("#state").val();
		});
	});
	
});
</script>
</body>

</html>