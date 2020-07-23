<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Register Page</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/resources/admin/login/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/admin/login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/admin/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/admin/login/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/resources/admin/login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/admin/login/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/admin/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="/resources/admin/login/css/main.css">
<!--===============================================================================================-->
<style type="text/css">
 @font-face {
      font-family: "font1";
      src: url("/resources/admin/GmarketSansTTFBold.ttf") format("truetype")
   }
   body { font-family: font1; }
   
</style>
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100 ">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt"  data-tilt>
					<img style="margin-top: 30%;" src="/resources/admin/login/images/img-01.png" alt="IMG">
				</div>

				<form class="login100-form validate-form" method="post" action="/storeMem/register">
					<span class="login100-form-title">
						YUJU 스토어회원 가입
					</span>

					<div class="wrap-input100 validate-input" data-validate = "아이디를 입력해주세요">
						<input class="input100" type="text" name="sid" placeholder="아이디">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "비밀번호를 입력해주세요">
						<input class="input100" type="text" name="spw" placeholder="비밀번호">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-unlock-alt" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "스토어 이름을 입력해주세요">
						<input class="input100" type="text" name="sname" placeholder="스토어 이름">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-home" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "대표자를 입력해주세요">
						<input class="input100" type="text" name="sowner" placeholder="대표자 이름">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "이메일을 입력해주세요">
						<input class="input100" type="email" name="semail" placeholder="이메일">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "연락처를 입력해주세요">
						<input class="input100" type="tel" name="sphone" placeholder="연락처">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-phone" aria-hidden="true"></i>
						</span>
					</div>


					
					<div class="container-login100-form-btn">
						<button type="submit" class="login100-form-btn">
							회원가입
						</button>
					</div>

					<div class="text-center p-t-45">
						<a class="txt2" href="/storeMem/login-page">
							로그인 하러 가기
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="/resources/admin/login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/resources/admin/login/vendor/bootstrap/js/popper.js"></script>
	<script src="/resources/admin/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/resources/admin/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/resources/admin/login/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="/resources/admin/login/js/main.js"></script>

</body>
</html>