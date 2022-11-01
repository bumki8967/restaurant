<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 네이버 로그인 -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>

<script type="text/javascript">
var naverLogin = new naver.LoginWithNaverId(
		{
			clientId	: "oQc3nNbiDdUptsCBn82b",
			//callbackUrl	: "http://localhost:8095/loginView",
			callbackUrl	: "http://localhost:8095/naver_callback",
			isPopup		: false,
			callbackHandle: false,
			loginButton	: {color: "green", type: 3, height: 45}  // 로그인 버튼의 타입을 지정 
		}
	);
		
	naverLogin.init();
	console.log("callback  ::  " + naverLogin.init());
		
	window.addEventListener('load', function() {
		naverLogin.getLoginStatus(function(status) {
			console.log("Status    ::  " + status);
			
			if (status) {
				console.log("Callback 처리 성공!!!");
				$("#user_id").val(naverLogin.user.getEmail());
				$("#name").val(naverLogin.user.getName());
				$("#birthday").val(naverLogin.user.getBirthday());
				$("#birthyear").val(naverLogin.user.getBirthyear());
				$("#gender").val(naverLogin.user.getGender());
				$("#tel").val(naverLogin.user.getMobile());
				$("#login_type").val("naver");
				
				$("#loginForm").attr('action', '/oauth/naver');
				$("#loginForm").submit();
			} else {
				console.log("Callback 처리 실패 ㅠ");
			}
		});
	});
</script>
</body>
</html>