<%@ page import="org.yuyu.domain.StoreMemVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html dir="ltr" lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
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
    <style type="text/css">
        .tablep-head-color{background-color :#4c5667; color: #fff; width: 15%;}
    </style>
    <![endif]-->
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
                    <!-- Notification -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle pl-md-3 position-relative" href="javascript:void(0)"
                           id="bell" role="button" data-toggle="dropdown" aria-haspopup="true"
                           aria-expanded="false">
                            <span><i data-feather="bell" class="svg-icon"></i></span>
                            <span class="badge badge-primary notify-no rounded-circle">5</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-left mailbox animated bounceInDown">
                            <ul class="list-style-none">
                                <li>
                                    <div class="message-center notifications position-relative">
                                        <!-- Message -->
                                        <a href="javascript:void(0)"
                                           class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                            <div class="btn btn-danger rounded-circle btn-circle"><i
                                                    data-feather="airplay" class="text-white"></i></div>
                                            <div class="w-75 d-inline-block v-middle pl-2">
                                                <h6 class="message-title mb-0 mt-1">Luanch Admin</h6>
                                                <span class="font-12 text-nowrap d-block text-muted">Just see
                                                        the my new
                                                        admin!</span>
                                                <span class="font-12 text-nowrap d-block text-muted">9:30 AM</span>
                                            </div>
                                        </a>
                                        <!-- Message -->
                                        <a href="javascript:void(0)"
                                           class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                                <span class="btn btn-success text-white rounded-circle btn-circle"><i
                                                        data-feather="calendar" class="text-white"></i></span>
                                            <div class="w-75 d-inline-block v-middle pl-2">
                                                <h6 class="message-title mb-0 mt-1">Event today</h6>
                                                <span
                                                        class="font-12 text-nowrap d-block text-muted text-truncate">Just
                                                        a reminder that you have event</span>
                                                <span class="font-12 text-nowrap d-block text-muted">9:10 AM</span>
                                            </div>
                                        </a>
                                        <!-- Message -->
                                        <a href="javascript:void(0)"
                                           class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                                <span class="btn btn-info rounded-circle btn-circle"><i
                                                        data-feather="settings" class="text-white"></i></span>
                                            <div class="w-75 d-inline-block v-middle pl-2">
                                                <h6 class="message-title mb-0 mt-1">Settings</h6>
                                                <span
                                                        class="font-12 text-nowrap d-block text-muted text-truncate">You
                                                        can customize this template
                                                        as you want</span>
                                                <span class="font-12 text-nowrap d-block text-muted">9:08 AM</span>
                                            </div>
                                        </a>
                                        <!-- Message -->
                                        <a href="javascript:void(0)"
                                           class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                                <span class="btn btn-primary rounded-circle btn-circle"><i
                                                        data-feather="box" class="text-white"></i></span>
                                            <div class="w-75 d-inline-block v-middle pl-2">
                                                <h6 class="message-title mb-0 mt-1">Pavan kumar</h6> <span
                                                    class="font-12 text-nowrap d-block text-muted">Just
                                                        see the my admin!</span>
                                                <span class="font-12 text-nowrap d-block text-muted">9:02 AM</span>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li>
                                    <a class="nav-link pt-3 text-center text-dark" href="javascript:void(0);">
                                        <strong>Check all notifications</strong>
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <!-- End Notification -->
                    <!-- ============================================================== -->
                    <!-- create new -->
                    <!-- ============================================================== -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i data-feather="settings" class="svg-icon"></i>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li class="nav-item d-none d-md-block">
                        <a class="nav-link" href="javascript:void(0)">
                            <div class="customize-input">
                                <select
                                        class="custom-select form-control bg-white custom-radius custom-shadow border-0">
                                    <option selected>EN</option>
                                    <option value="1">AB</option>
                                    <option value="2">AK</option>
                                    <option value="3">BE</option>
                                </select>
                            </div>
                        </a>
                    </li>
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
                            <img src="../resources/admin/src/assets/images/users/profile-pic.jpg" alt="user"
                                 class="rounded-circle"
                                 width="40">
                            <span class="ml-2 d-none d-lg-inline-block"><span>안녕하세요! </span> <span
                                    class="text-dark">${loginStoreMem.sname}</span> <i data-feather="chevron-down"
                                                                                       class="svg-icon"></i></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
                            <a class="dropdown-item" href="javascript:void(0)"><i data-feather="settings"
                                                                                  class="svg-icon mr-2 ml-1"></i>
                                Account Setting</a>
                            <div class="dropdown-divider"></div>
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
                            class="hide-menu">메인 화면</span></a></li>
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
                    <li class="nav-small-cap"><span class="hide-menu">주문/배송 관리</span></li>
                    <li class="sidebar-item"><a class="sidebar-link" href="../storeMem/info-order-page"
                                                aria-expanded="false"><i data-feather="tag"
                                                                         class="feather-icon"></i><span
                            class="hide-menu">주문 정보 관리
                                </span></a>
                    </li>
                    <li class="sidebar-item"><a class="sidebar-link" href="../storeMem/info-delivery-page"
                                                aria-expanded="false"><i data-feather="tag"
                                                                         class="feather-icon"></i><span
                            class="hide-menu">배송 관리
                                </span></a>
                    </li>
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