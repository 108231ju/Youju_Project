<%@ page import="org.yuyu.domain.StoreMemVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html dir="ltr" lang="ko">

<head>
    <meta content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="yulim">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../resources/admin/src/assets/images/favicon.png">
    <title>YUJU</title>
    <!-- Custom CSS -->
    <link href="../resources/admin/src/assets/extra-libs/c3/c3.min.css" rel="stylesheet">
    <link href="../resources/admin/src/assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
    <link href="../resources/admin/src/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.css" rel="stylesheet"/>
    <!-- Custom CSS -->
    <link href="../resources/admin/src/dist/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <link href="../resources/admin/src/assets/extra-libs/datatables.net-bs4/css/dataTables.bootstrap4.css"
          rel="stylesheet">
    <link href="../resources/admin/src/dist/css/style.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="highlights/highlight.min.css">
    <![endif]-->
     <style type="text/css">
	     .uploadResult {
	         width: 100%;
	         background-color: slategray;
	     }
	     .uploadResult ul {
	         display: flex;
	         flex-flow: row;
	         justify-content: center;
	         align-items: center;
	     }
	     .uploadResult ul li {
	         list-style: none;
	         padding: 10px;
	     }
	     .uploadResult ul li img {
	         width: 200px;
	     }
 	</style>
</head>

<body style="background-color: #FFFFFF">

<!-- ============================================================== -->
<!-- Preloader - style you can find in spinners.css -->
<!-- ============================================================== -->
<div class="preloader">
    <div class="lds-ripple">
        <div class="lds-pos"></div>
        <div class="lds-pos"></div>
    </div>
</div>
<!-- ============================================================== -->
<!-- Main wrapper - style you can find in pages.scss -->
<!-- ============================================================== -->
<div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
     data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
    <!-- ============================================================== -->
    <!-- Topbar header - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <header class="topbar" data-navbarbg="skin6">
        <nav class="navbar top-navbar navbar-expand-md">
            <div class="navbar-header" data-logobg="skin6">
                <!-- This is for the sidebar toggle which is visible on mobile only -->
                <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i
                        class="ti-menu ti-close"></i></a>
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                <div class="navbar-brand">
                    <!-- Logo icon -->
                    <a href="/storeMem/index">
                        <b class="logo-icon">
                            <!-- Dark Logo icon -->
                            <img style="width:35%" src="../resources/admin/logoicon.png" alt="homepage"
                                 class="dark-logo"/>
                            <!-- Light Logo icon -->
                            <img style="width:35%" src="../resources/admin/logoicon.png" alt="homepage"
                                 class="light-logo"/>
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span class="logo-text">
                                <!-- dark Logo text -->
                                <img style="width:50%" src="../resources/admin/full_logo.png" alt="homepage"
                                     class="dark-logo"/>
                            <!-- Light Logo text -->
                                <img src="../resources/admin/src/assets/images/logo-light-text.png" class="light-logo"
                                     alt="homepage"/>
                            </span>
                    </a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Toggle which is visible on mobile only -->
                <!-- ============================================================== -->
                <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)"
                   data-toggle="collapse" data-target="#navbarSupportedContent"
                   aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i
                        class="ti-more"></i></a>
            </div>
            <!-- ============================================================== -->
            <!-- End Logo -->
            <!-- ============================================================== -->
            <div class="navbar-collapse collapse" id="navbarSupportedContent">
                <!-- ============================================================== -->
                <!-- toggle and nav items -->
                <!-- ============================================================== -->
                <ul class="navbar-nav float-left mr-auto ml-3 pl-1">
                    
                    
                </ul>
                <!-- ============================================================== -->
                <!-- Right side toggle and nav items -->
                <!-- ============================================================== -->
                <ul class="navbar-nav float-right">
                    <!-- ============================================================== -->
                    <!-- Search -->
                    <!-- ============================================================== -->
                    <li class="nav-item d-none d-md-block">
                        <a class="nav-link" href="javascript:void(0)">
                            <form>
                                <div class="customize-input">
                                    <input class="form-control custom-shadow custom-radius border-0 bg-white"
                                           type="search" placeholder="Search" aria-label="Search">
                                    <i class="form-control-icon" data-feather="search"></i>
                                </div>
                            </form>
                        </a>
                    </li>
                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            
                            <span class="ml-2 d-none d-lg-inline-block"><span>안녕하세요! </span> <span
                                    class="text-dark">${loginStoreMem.sname}</span> <i data-feather="chevron-down"
                                                                                       class="svg-icon"></i></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
                            
<!--                             <div class="dropdown-divider"></div> -->
                            <a class="dropdown-item" href="javascript:void(0)" data-toggle="modal"
                               data-target="#logoutModal"><i data-feather="power"
                                                             class="svg-icon mr-2 ml-1"></i>
                                로그아웃</a>
                        </div>
                    </li>
                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                </ul>
            </div>
        </nav>
    </header>
    <!-- ============================================================== -->
    <!-- End Topbar header -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <aside class="left-sidebar" data-sidebarbg="skin6">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar navigation-->
            <nav class="sidebar-nav">
                <ul id="sidebarnav">
                    <li class="sidebar-item"><a class="sidebar-link sidebar-link" href="../storeMem/index"
                                                aria-expanded="false"><i data-feather="home"
                                                                         class="feather-icon"></i><span
                            class="hide-menu" >메인 화면</span></a></li>
                    <li class="list-divider"></li>
                    <li class="nav-small-cap"><span class="hide-menu">상품 관리</span></li>
                    <li class="sidebar-item"><a class="sidebar-link" href="../storeMem/update-product-page"
                                                aria-expanded="false"><i data-feather="tag"
                                                                         class="feather-icon"></i><span
                            class="hide-menu">상품 등록
                                </span></a>
                    </li>
                    <li class="sidebar-item"><a class="sidebar-link" href="../storeMem/info-product-page"
                                                aria-expanded="false"><i data-feather="tag"
                                                                         class="feather-icon"></i><span
                            class="hide-menu">상품 조회/수정
                                </span></a>
                    </li>
                    <li class="nav-small-cap"><span class="hide-menu">주문  관리</span></li>
                    <li class="sidebar-item"><a class="sidebar-link" href="../storeMem/info-order-page"
                                                aria-expanded="false"><i data-feather="tag"
                                                                         class="feather-icon"></i><span
                            class="hide-menu">주문 정보 관리
                                </span></a>
                    </li>
<!--                     <li class="sidebar-item"><a class="sidebar-link" href="../storeMem/info-delivery-page" -->
<!--                                                 aria-expanded="false"><i data-feather="tag" -->
<!--                                                                          class="feather-icon"></i><span -->
<!--                             class="hide-menu">배송 관리 -->
<!--                                 </span></a> -->
<!--                     </li> -->
                    <li class="nav-small-cap"><span class="hide-menu">회원 정보 관리</span></li>
                    <li class="sidebar-item"><a class="sidebar-link" href="../storeMem/info-mem-page"
                                                aria-expanded="false"><i data-feather="tag"
                                                                         class="feather-icon"></i><span
                            class="hide-menu">회원 정보 관리
                                </span></a>
                    </li>
                    <li class="nav-small-cap"><span class="hide-menu">상품 Q&A 관리</span></li>
                    <li class="sidebar-item"><a class="sidebar-link" href="../storeMem/question-product-page"
                                                aria-expanded="false"><i data-feather="tag"
                                                                         class="feather-icon"></i><span
                            class="hide-menu">상품 문의 관리
                                </span></a>
                    </li>
                     <li class="nav-small-cap"><span class="hide-menu">상품 리뷰 관리</span></li>
                    <li class="sidebar-item"><a class="sidebar-link" href="../storeMem/review-product-page"
                                                aria-expanded="false"><i data-feather="tag"
                                                                         class="feather-icon"></i><span
                            class="hide-menu">상품 리뷰 관리
                                </span></a>
                    </li>
                </ul>
            </nav>
            <!-- End Sidebar navigation -->
        </div>
        <!-- End Sidebar scroll-->

    </aside>
    <!-- ============================================================== -->
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <div class="modal fade" role="dialog" id="logoutModal" tabindex="-1" aria-labelledby="LogoutModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="LogoutModalLabel"> 로그아웃 </h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body text-center">
                    <h4> 로그아웃 하시겠습니까?</h4> <br>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal"> 취소</button>
                    <button class="btn btn-default ok" type="button" id="modalModBtn" data-dismiss="modal"
                            onclick="location.href='/storeMem/logout-proc'"> 확인
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!-- logout 탈퇴 확인 모달 -->
    <div class="modal fade" role="dialog" id="signoutModal" tabindex="-1" aria-labelledby="SignOutModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="SignOutModalLabel"> 회원 탈퇴 </h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body text-center">
                    <h4> 회원 탈퇴 하시겠습니까?</h4> <br>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal"> 취소</button>
                    <button class="btn btn-default ok" type="button" id="modalModBtn" data-dismiss="modal"
                            onclick="location.href='/storeMem/remove'"> 확인
                    </button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" role="dialog" id="tableRemoveConFirm" tabindex="-1" aria-labelledby="TableRemoveModalLabel"
         aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="TableRemoveModalLabel"> 색상/ 사이즈 변경 </h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body text-center">
                    <h4> 옵션 변경 시 테이블 내용이 초기화 됩니다.변경하시겠습니까?</h4> <br>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal"> 취소</button>
                    <button class="btn btn-default ok" type="button" id="okbtn" data-dismiss="modal"> 확인
                    </button>
                </div>
            </div>
        </div>
    </div>
    
	<div class="modal fade" role="dialog" id="stateModModal" tabindex="-1" aria-labelledby="stateModyModalH"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="stateModyModalH"> 주문 상태 변경</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body text-center">
                	<input type="hidden" id="ocode" value=""/>
                	<input type="hidden" id ="onum" value=""/>
                	<input type="hidden" id ="state" value=""/>
                    <select name="thisState" class="p-1">
					                  	<option value="결제준비중">결제준비중</option>
					                   	<option value="상품준비중">상품준비중</option>
					                    <option value="배송준비중">배송준비중</option>
					              		<option value="배송중">배송중</option>
                                		<option value="배송완료">배송완료</option>
                    </select> 
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal"> 취소</button>
                    <button class="btn btn-default ok" type="button" id="modyOk" data-dismiss="modal"> 확인
                    </button>
                </div>
            </div>
        </div>
    </div>
    
    <div class="modal fade" role="dialog" id="orderListModal" tabindex="-1" aria-labelledby="orderListModalH"
         aria-hidden="true">
        <div class="modal-dialog modal-lg" style="max-width: 100%; width: auto; display: table;">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="orderListModalH"> 주문 내역 확인</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body text-center ordermodal">
                
                	<div class="table-responsive p-2 text-center">
                	
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">주문 번호 </th>
                                <th scope="col">주문 상세번호 </th>
                                <th scope="col">상품이름</th>
                                <th scope="col">색상/사이즈</th>
                                <th scope="col">구매 개수</th>
                                <th scope="col">주문 총 가격</th>
                                <th scope="col">주문 처리 상태</th>
                            </tr>
                            </thead>
                            <tbody class="orderlist">
                            <tr id="modalorder">
<%--                                 <td scope="row" name="ocode">${list.ocode}</td> --%>
<%--                                 <td scope="row" name="onum">${list.onum}</td> --%>
<%--                                 <td scope="row">${list.mname}(${list.mid}) </td> --%>
<%--                                 <td><c:out value="${list.amount}"/></td> --%>
<%--                                 <td><c:out value="${list.total}"/>원</td> --%>
<%--                                 <td name="state"><span><c:out value="${list.state}"/></span><button data-toggle="modal" --%>
<!--                                data-target="#stateModModal" class="stateMody btn btn-danger ml-2">변경</button></td> -->
                             <td> 
                             <select name="thisState" class="p-1">
			                  	<option value="결제준비중">결제준비중</option>
			                   	<option value="상품준비중">상품준비중</option>
			                    <option value="배송준비중">배송준비중</option>
			              		<option value="배송중">배송중</option>
                              		<option value="배송완료">배송완료</option>
		                    </select> 
		                    </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal"> 취소</button>
                    <button class="btn btn-default ok" type="button" id="okokok" data-dismiss="modal"> 확인
                    </button>
                </div>
            </div>
        </div>
    </div>
    
        <div class="modal fade" role="dialog" id="reviewItemModal" tabindex="-1" aria-labelledby="reviewItemModalT"
         aria-hidden="true">
        <div class="modal-dialog modal-lg" style="max-width: 100%; width: 800px; display: table;">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="reviewItemModalT"> 리뷰 내용 확인</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body text-center ordermodal">
                
                	<div class="table-responsive p-2 text-center">
                	
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">상품 번호 </th>
                                <th scope="col">상품이름</th>
                                <th scope="col">색상/사이즈</th>
                                <th scope="col">구매날짜</th>
                            </tr>
                            </thead>
                            <tbody class="orderlist">
                            <tr id="modalorder">
                             <td name="mopcode">상품번호</td>
                             <td name="mopname">이름</td>
                             <td name="mop_detail">색상/사이즈</td>
                             <td name="mopregdate">구매날짜</td>
                            </tr>
                        </table>
                         <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">리뷰 내용</th>
                            </tr>
                            </thead>
                            <tbody class="orderlist">
                            <tr id="modalorder">
                            <td name="m_review">
		                    </td>
                            </tr>
                        </table>
                    </div>
                        <button class="btn btn-danger deleteReviewBtn" type="button">삭제</button>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal"> 취소</button>
                    <button class="btn btn-default ok" type="button" id="okokok" data-dismiss="modal"> 확인
                    </button>
                </div>
            </div>
        </div>
    </div>
