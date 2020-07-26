<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Find StoreMember Page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="/resources/admin/login/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/admin/login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/admin/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/admin/login/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/admin/login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/admin/login/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/admin/login/css/util.css">
<link rel="stylesheet" type="text/css"
	href="/resources/admin/login/css/main.css">
<!--===============================================================================================-->
<style type="text/css">
@font-face {
	font-family: "font1";
	src: url("/resources/admin/GmarketSansTTFBold.ttf") format("truetype")
}

body {
	font-family: font1;
}
</style>
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div style="margin-top: 20%;" class="login100-pic js-tilt" data-tilt>
					<img src="/resources/admin/login/images/img-01.png" alt="IMG">
				</div>

				<div class="login100-form validate-form">

					<span class="login100-form-title"> YUJU 스토어 회원 정보 찾기
					</span>
					<div class="text-center" style="margin: 10px;">
						<h4>아이디 찾기</h4>
					</div>
					<form method="post" action="/storeMem/findIdCheck">
						<div class="wrap-input100 validate-input"
							data-validate="이름을 입력해주세요">
							<input class="input100" type="text" name="sname" placeholder="이름">
							<span class="focus-input100"></span> <span
								class="symbol-input100"> <i class="fa fa-envelope"
								aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validate-input p-t-10"
							data-validate="전화번호 입력해주세요">
							<input class="input100" type="password" name="sphone"
								placeholder="가입한 전화번호"> <span class="focus-input100"></span>
							<span class="symbol-input100"> <i class="fa fa-lock"
								aria-hidden="true"></i>
							</span>
						</div>

						<div class="container-login100-form-btn">
							<button type="submit" class="login100-form-btn">아이디 찾기</button>
						</div>
						<br>
						<hr>
						<br>
						<div class="text-center" style="margin: 10px;">
							<h4>비밀번호 찾기</h4>
						</div>
					</form>
					<form method="post" action="/storeMem/findPwCheck">

						<div class="wrap-input100 validate-input"
							data-validate="아이디를 입력해주세요">
							<input class="input100" type="text" name="sid" placeholder="아이디">
							<span class="focus-input100"></span> <span
								class="symbol-input100"> <i class="fa fa-envelope"
								aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validate-input p-t-10"
							data-validate="이름을 입력해주세요">
							<input class="input100" type="password" name="sname"
								placeholder="이름"> <span class="focus-input100"></span> <span
								class="symbol-input100"> <i class="fa fa-lock"
								aria-hidden="true"></i>
							</span>
						</div>

						<div class="container-login100-form-btn">
							<button type="submit" class="login100-form-btn">비밀번호 찾기
							</button>
						</div>

						<div class="text-center p-t-50">
							<a class="txt2" href="/storeMem/register-page"> 스토어회원 가입 <i
								class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
							</a>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>




	<!--===============================================================================================-->
	<script src="/resources/admin/login/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="/resources/admin/login/vendor/bootstrap/js/popper.js"></script>
	<script
		src="/resources/admin/login/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="/resources/admin/login/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="/resources/admin/login/vendor/tilt/tilt.jquery.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>
	<!--===============================================================================================-->
	<script src="/resources/admin/login/js/main.js"></script>

</body>
</html>