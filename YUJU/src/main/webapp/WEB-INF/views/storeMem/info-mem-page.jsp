<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../storeMem/includes/header.jsp" %>
<!-- ============================================================== -->
<!-- Page wrapper -->
<!-- ============================================================== -->
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-7 align-self-center">
                <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">회원 정보 처리</h4>

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
                        <h4 class="card-title"> 기본 정보 변경</h4>
                        <h6 class="card-subtitle"></h6>
                    </div>
                    <div class="table-responsive p-4">
                        <form action="/storeMem/modify" method="post">
                        <table class="table text-center">
                            <tbody>
                            <tr>
                                <td style="background-color: #27282b; color: #fff; width: 15%">스토어 등록 번호</td>
                                <td ><input class="form-control col-7" name="scode" value="<c:out value='${smem.scode}'/>" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color: #27282b; color: #fff; width: 15%">스토어 이름</td>
                                <td><input class="form-control col-7" name="sname" value="<c:out value='${smem.sname}'/>"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color: #27282b; color: #fff; width: 15%">스토어 아이디</td>
                                <td><input class="form-control col-7" name="sid" value="<c:out value='${smem.sid}'/>"
                                           readonly/></td>
                            </tr>
                            <tr>
                                <td style="background-color: #27282b; color: #fff; width: 15%">스토어 비밀번호</td>
                                <td><input class="form-control col-7" type="password" name="spw" value="<c:out value='${smem.spw}'/>"/></td>
                            </tr>
                            <tr>
                                <td style="background-color: #27282b; color: #fff; width: 15%">스토어 비밀번호 확인</td>
                                <td><input class="form-control col-7" type="password" name="spw_confirm"
                                           value="<c:out value='${smem.spw}'/>"/></td>
                            </tr>
                             <tr>
                                <td style="background-color: #27282b; color: #fff; width: 15%">대표자 이름</td>
                                <td><input class="form-control col-7" name="sowner" value="<c:out value='${smem.sowner}'/>"/>
                                </td>
                            </tr>

                            <tr>
                                <td style="background-color: #27282b; color: #fff; width: 15%">스토어 연락처</td>
                                <td><input class="form-control col-7" type="tel" name="sphone" value="<c:out value='${smem.sphone}'/>"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color: #27282b; color: #fff; width: 15%">스토어 이메일</td>
                                <td><input class="form-control col-7" type="email" name="semail" value="<c:out value='${smem.semail}'/>"/>
                                </td>
                            </tr>

                            </tbody>
                        </table>
                        <div>
                            <button class="btn-primary btn" type="submit"> 회원정보 변경 </button>
                            <a style="margin-left: 20px" class="text-danger" data-toggle="modal"
                               data-target="#signoutModal"> 회원 탈퇴</a>
                        </div>
                        </form>
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

</html>