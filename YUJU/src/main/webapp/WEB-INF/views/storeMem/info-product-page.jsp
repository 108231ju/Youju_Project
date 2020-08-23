<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


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
                        <h3 class="card-title text-center font-weight-bold">상품 정보 조회/수정</h3>
                    </div>
                    <div class="col-md-11" style="align-self: center">
                        <div class="card border-danger">
                            <div class="card-header bg-danger">
                                <h3 class="mb-0 text-white text-center ">검색 조건</h3>
                            </div>
                            <div class="card-body text-center">
                                <span>
                                <label><strong class="card-title">상품번호 : </strong></label> <input id="searchItem" type="text" value=""/>
                                </span>

                                <span class="ml-lg-5 mr-lg-5 category" >
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
                                    <label><strong class="card-title mr-1">상품 이름 :</strong> </label><input id="searchpname" type="text" value=""/>
                                </span>
                                <span class="ml-lg-5 mr-lg-5">
                                    <button type="button" id="searchBtn" class="btn btn-primary">검색</button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <h3 class="col-12 card-title text-center font-weight-bold">상품 정보 조회 결과</h3>
                    <div class="table-responsive p-2 text-center">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">상품번호</th>
                                <th scope="col">대표 이미지</th>
                                <th scope="col">이름</th>
                                <th scope="col">색상/사이즈</th>
                                <th scope="col">카테고리</th>
                                <th scope="col">가격</th>
                                <th scope="col">업데이트 시간</th>
                                <th scope="col">
                                </th>
                            </tr>
                            </thead>

                            <tbody class="list">


                            <c:forEach items="${products}" var="product"  varStatus="status">
                            <tr>

                                <th scope="row">${product.pcode}</th>
                                <th scope="row"><img width="100" height="100" src="${pageContext.request.contextPath}${product.pimg}"/></th>
                                <td width="350"><a href="/user/product1?pcode=<c:out value='${product.pcode}'/>"><c:out value="${product.pname}"/></a></td>
                                <td>컬러 : <c:out value="${colorList[status.index]}"/> 사이즈 : <c:out value="${sizeList[status.index]}"/></td>
                                <td><c:out value="${cateList[status.index]}"/></td>
                                <td><c:out value="${product.pprice}"/> <input type="hidden" class="amountLs" value="${amountList[status.index]}"/></td>
                                <td><fmt:formatDate pattern="yyyy/MM/dd" value="${product.updatedate}"/></td>
                                <td>
                                    <button  class="btn btn-primary btnMody" value="${product.pcode}">수정</button>

                                </td>
                            </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>


        </div>
    </div>
    <footer class="footer text-center text-muted">
        All Rights Reserved by Adminmart. Designed and Developed by <a
            href="https://wrappixel.com">WrapPixel</a>.
    </footer>
</div>
</div>
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
	
	var result = '<c:out value="${result}"/>';
	var searchpcode = '<c:out value="${searchpcode}"/>';
	var searchpname = '<c:out value="${searchpname}"/>';
	
	if(result == "998"){
		$("#searchItem").val(searchpcode);
		
	}
	if(result == "999"){
		$("#searchpname").val(searchpname);
	}
	
	$(".list").on("click",".btnMody",function(){
		location.href="/storeMem/modify-product-page?pcode="+$(this).attr("value");
	});
	
    $("[name='cateCodeRefGroup']").children().hide();
    
    $("[name='cateCodeGroup']").change(function(){ 
    	$("[name='cateCodeRefGroup']").children().hide();
    		$("[name='cateCodeRefGroup']").find("[date-coderef='"+$(this).val()+"']").show();
    	
    });
    
    $(".amountLs").each(function(){
    	if($(this).val().split(",").indexOf("0") != -1 ){
    		$(this).parents("tr").children(":eq(2)").append("<span class ='noamount'>재고없음!</span>");
    		$(".noamount").css("color","red");
    		$(".noamount").css("margin-left","5px");
    		$(".noamount").css("float","right");
    	}
    });
    
    $("#searchBtn").click(function(){

        if($("#searchItem").val() != ""){
        	location.href="/storeMem/searchStoreProduct?pcode="+$("#searchItem").val()+"&pname=-999&cateCode=-999";
        }
        
        if($("#searchpname").val() != ""){
        	location.href="/storeMem/searchStoreProduct?pname="+$("#searchpname").val()+"&pcode=-999&cateCode=-999";
        }
        if($("[name='cateCodeRefGroup']").val() != ""){
        	location.href="/storeMem/searchStoreProduct?pname=-999&pcode=-999&cateCode="+$(".category").children("input").val();
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

    
});
</script>

</html>