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
	<input type="hidden" name="user_id" id="user_id" />
	<input type="hidden" name="name" id="name" />
	<input type="hidden" name="birthday" id="birthday"/>
	<input type="hidden" name="gender" id="gender" />
	<input type="hidden" name="birthyear" id="birthyear" />
	<input type="hidden" name="tel" id="tel" />
	<input type="hidden" name="login_type" id="login_type" />

</form>



<script type="text/javascript">

console.log("callback");
<%--
	var naver_id_login = new naver_id_login("oQc3nNbiDdUptsCBn82b", "http://localhost:8095/callback");
	// 접근 토큰 값 출력
	//alert(naver_id_login.oauthParams.access_token);
	// 네이버 사용자 프로필 조회
	naver_id_login.get_naver_userprofile("naverSignInCallback()");
	// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		function naverSignInCallback() {
			$("#user_id").val(naver_id_login.getProfileData('email'));
			

			console.log("email	===		" + naver_id_login.getProfileData('email'));
			console.log("gender	===		" + naver_id_login.getProfileData('gender'));
			console.log("name	===		" + naver_id_login.getProfileData('name'));
			console.log("age	===		" + naver_id_login.getProfileData('age'));
			console.log("mobile	===		" + naver_id_login.getProfileData('mobile'));
			console.log("birthyear	===		" + naver_id_login.getProfileData('birthyear'));
			console.log("birthday	===		" + naver_id_login.getProfileData('birthday'));

			console.log(naver_id_login.getProfileData);
	}
	--%>










var naverLogin = new naver.LoginWithNaverId(
		{
			clientId	: "oQc3nNbiDdUptsCBn82b",
			//callbackUrl	: "http://localhost:8095/loginView",
			callbackUrl	: "http://localhost:8095/callback",
			isPopup		: false,
			callbackHandle: false,
			loginButton	: {color: "green", type: 3, height: 45}  // 로그인 버튼의 타입을 지정 
		}
	);
		console.log("callback---3");
	naverLogin.init();
		
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

				console.log("email	==		" + naverLogin.user.getEmail());
				console.log("name	==		" + naverLogin.user.getName());
				console.log("birthyear	==		" + naverLogin.user.getBirthyear());
				console.log("birthday	==		" + naverLogin.user.getBirthday());
				console.log("gender	==		" + naverLogin.user.getGender());
				console.log("tel	==		" + naverLogin.user.getMobile());
				
				console.log("전소오오오오오오오옹");
				return;

				//$("#loginForm").attr('action', '/oauth/naver');
				//$("#loginForm").submit();
			} else {
				console.log("Callback 처리 실패 ㅠ");
			}
		});
	});
	
</script>
</body>
</html>