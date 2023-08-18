<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<%-- <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script> --%>
<!-- Jquery -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div id="naverIdLogin"></div>

<form method="POST" id="loginForm">
	<input type="hidden" name="userId" id="userId" />
	<input type="hidden" name="userPw" id="userPw" />
	<input type="hidden" name="name" id="name" />
	<input type="hidden" name="birthday" id="birthday"/>
	<input type="hidden" name="gender" id="gender" />
	<input type="hidden" name="birthyear" id="birthyear" />
	<input type="hidden" name="tel" id="tel" />
	<input type="hidden" name="loginType" id="loginType" />

</form>



<script type="text/javascript">
<%--
	var naverLogin = new naver.LoginWithNaverId(
			{
				clientId	: "oQc3nNbiDdUptsCBn82b",
				callbackUrl	: "http://localhost:8095/callback",
				callbackHandle: false,
				loginButton	: {color: "green", type: 3, height: 45}  // 로그인 버튼의 타입을 지정 
			}
		);
	
	naverLogin.init();
		
	window.addEventListener('load', function() {
		naverLogin.getLoginStatus(function(status) {
			if (status) {
				console.log("Callback 처리 성공!!!");
				$("#user_id").val(naverLogin.user.getEmail());
				$("#name").val(naverLogin.user.getName());
				$("#birthday").val(naverLogin.user.getBirthday());
				$("#birthyear").val(naverLogin.user.getBirthyear());
				$("#gender").val(naverLogin.user.getGender());
				$("#tel").val(naverLogin.user.getMobile());
				$("#login_type").val("naver");

				console.log("email		==		" + naverLogin.user.getEmail());
				console.log("name		==		" + naverLogin.user.getName());
				console.log("birthyear	==		" + naverLogin.user.getBirthyear());
				console.log("birthday	==		" + naverLogin.user.getBirthday());
				console.log("gender		==		" + naverLogin.user.getGender());
				console.log("tel		==		" + naverLogin.user.getMobile());
				
				//console.log("전소오오오오오오오옹");
				//return;

				$("#loginForm").attr('action', '/login/naver');
				$("#loginForm").submit();
			} else {
				console.log("Callback 처리 실패 ㅠ");
			}
		});
	});
	--%>
</script>
</body>
</html>