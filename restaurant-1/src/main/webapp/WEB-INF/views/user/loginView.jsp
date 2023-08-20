<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html class="no-js" lang="kor">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
   	<title>Kettle</title>
   
   	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="manifest" href="site.webmanifest">
	<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/image/favicon.ico">
	<!-- Place favicon.ico in the root directory -->
	<!-- CSS here -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nice-select.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/themify-icons.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/magnific-popup.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/meanmenu.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slick.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/default.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/responsive.css">

    <!-- BootStrap CSS-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
    <!-- BootStrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
   	<!-- Jquery -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!-- 카카로 로그인 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<!-- 네이버 로그인 
	<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
	-->
	<%-- <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script> --%>
	<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
    <style>
        .container {
            /* border: 1px solid black; */
            margin: auto;
            padding: auto;
        }

        .header_inner {
            position: relative;
            margin: 0 auto;
            box-sizing: border-box;
            margin-top: 110px;
            vertical-align: top;
            text-align: center;
        }


        .menu_wrap {
            /* border: 1px solid blue; */
            display: table;
            table-layout: fixed;
            width: 40%;
            margin: 3rem auto;
            border-collapse: collapse;
        }

        ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        a {
            color: black;
        }

        a:hover {
            text-decoration: none;
            color: black;
        }

        .menu_item {
            position: relative;
            display: table-cell;
            vertical-align: top;
            text-decoration: none;
        }

        .meni_id {
            display: block;
            position: relative;
            height: 61px;
            padding-top: 17px;
            border : 1px solid #e3e3e3;
            text-align: center;
            box-sizing: border-box;
        }

        .menu_text {
            position: relative;
            padding-left: 24px;
            font-size: 25px;
            font-weight: 500;
        }

        .id_pw_wrap, .keep_join_findPw_btn_area {
            /* border: 1px solid blue; */
            width: 35%;
            margin: 2rem auto;
        }

        .keep_check {
            margin: 2rem auto;
            /* font-size: 10px; */
        }

        .join_findPw, .btn_row {
            font-size: 15px;
            /* border: 1px solid red; */
            /* width: 100%; */
            text-align: center;
            /* margin: auto; */
            display: flex;
            align-items: center;
            justify-content: space-evenly;
            margin: 3rem;
        }
    </style>

	<script type="text/javascript">
		$(document).ready(function() {
			
			$("#keep").click(function(){
		         if( $(this).is(":checked")){
		            $("#keep").val("Y");
		         }else{
		        	 $("#keep").val("N");
		         }
		      });
			
			$("#login-btn").click(function() {
				var userId = $("#userId").val();
				var userPw = $("#userPw").val();
				var keep = $("#keep").val();
				
				if (userId == "") {
					alert("아이디를 입력해주세요.");
					userId.focus();
					return;
				} else if (userPw == "") {
					alert("비밀번호를 입력해주세요.");
					userPw.focus();
					return;
				} else {
					$.ajax({
						Type	:	"POST",
						url		:	"/user/login.do",
						dataType:	"JSON",
						data	:	{
							userId : userId,
							userPw : userPw,
							keep	: keep
						},
						success : function(data) {
							location.href="/";
						},
						error	: function(error) {
							alert("통신오류!!\n" + error);
							return;
						}
					});
				}
			});
		});
	</script>
</head>
<body>

	<header class="header3">
		<c:import url="${pageContext.request.contextPath }/assets/include/header.jsp" />
	</header>
	
	
    <div class="container">
        <div class="header_inner">
            <h1> 로그인 </h1>
        </div>
    </div>

	
    <div class="container">
        <div class="login_wrap">
			<form method="POST" id="loginForm">
				<input type="hidden" name="name" id="name" />
				<input type="hidden" name="birthday" id="birthday"/>
				<input type="hidden" name="gender" id="gender" />
				<input type="hidden" name="birthyear" id="birthyear" />
				<input type="hidden" name="tel" id="tel" />
				<input type="hidden" name="loginType" id="loginType" />

				<div class="id_pw_wrap">
					<!-- 아이디 입력 -->
					<div class="input_row id_area">
						<label for="inputId" class="visually-hidden">ID</label>
						<input type="text" id="userId" name="userId" class="form-control col-md-5" placeholder="아이디" required autofocus>
					</div>
		
					<!-- 비밀번호 입력 -->
					<div class="input_row pw_area">
						<label for="inputPassword" class="visually-hidden">Password</label>
						<input type="password" id="userPw" name="userPw" class="form-control" placeholder="비밀번호" required>
					</div>
				</div>
		
				<div class="keep_join_findPw_btn_area">
					<!-- 로그인 상태 유지 -->
					<div class="keep_check">
						<label> 
							<input type="checkbox" id="keep" name="keep" value="N"> 로그인 상태 유지 
						</label>
					</div>
		
					<!-- 회원가입 | 비밀번호 찾기-->
					<div class="join_findPw">
						<div class="join_area">
							<label for="join" class="visually-hidden">
								<a href="${pagecontext.request.contextPath }/user/userRegistView">
									회원가입
								</a>
							</label>
						</div>
		
						<div class="findPw_area">
							<label for="findPw" class="visually-hidden">
								<a href="${pagecontext.request.contextPath }/user/userFindPwView">
									비밀번호 찾기
								</a>
							</label>
						</div>
					</div>
				</div>
			</form>
                
			<!-- 로그인 버튼 -->
			<div class="btn_row">
				<button type="submit" class="w-100 btn btn-lg btn-primary" id="login-btn"> 로그인 </button>
			</div>    

			<!-- SNS 로그인 -->
			<div class="sns_login" style="width: 400px; margin: auto;">
				<span>
					<label for="kakao_login" class="visually-hidden">
						<a href="${kakaoAuthUrl }">
						 <!--<a href="javascript:kakao_Login();"> -->
							<%-- <img src="${pageContext.request.contextPath }/assets/image/kakao.png" alt="카카오로그인" />  --%>
							<img src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" alt="카카오로그인" /> 
						</a>
					</label>
					
					<label for="naver_login"  class="visually-hidden">
						<a href="${naverAuthUrl }">
							<img src="${pageContext.request.contextPath }/assets/image/naver.png" style="width: 183px; height: 45px;" alt="네이버로그인" />
						</a>	
							<%-- <div id="naverIdLogin"></div>  --%>
					</label>

					<label for="google_login"  class="visually-hidden">
						<a href="${googleAuthUrl }">
							<img src="${pageContext.request.contextPath }/assets/image/google.png" />
						</a>
					</label>

					<label for="facebook_login"  class="visually-hidden">
						<a href="javascript:alert('페이스북 로그인 기능 준비 중 입니다.');">
							<img src="${pageContext.request.contextPath }/assets/image/facebook.png" />
						</a>
					</label>

					<label for="apple_login"  class="visually-hidden">
						<a href="javascript:alert('애플 로그인 기능 준비 중 입니다.');">
							<img src="${pageContext.request.contextPath }/assets/image/apple.png" style="width: 309px; height: 40px;">
						</a>
					</label>
				</span>
			</div>
        </div>
    </div>
    
   	<footer>
		<c:import url="${pageContext.request.contextPath }/assets/include/footer.jsp" />
	</footer>
	

	<!-- 카카오 로그인 스크립트 -->
	<script type="text/javascript">
		
		function kakao_Login() {
			$("#loginForm").attr('action', '/snsLogin/kakao');
			$("#loginForm").submit();
		}
	
		<!--
		Kakao.init('7b99ff594cc2cef168bb1d8358a0c07f');

		function kakao_Login() {
			Kakao.Auth.login({
				success : function (auth) {
					Kakao.API.request({
						url	: '/v2/user/me',
						success : function (response) {
							var account = response.kakao_account;
							
							$("#userId").val(account.email);
							$("#name").val(account.profile.nickname);
							$("#birthday").val(account.birthday);
							$("#gender").val(account.gender);
							$("#loginType").val("kakao");

							$("#loginForm").attr('action', '/snsLogin/kakao');
							$("#loginForm").submit();
						},
						fail : function (error) {
							alert("Error!!\n" + error);
						},
					})
				},
				fail : function (error) {
					alert("Error!!\n" + error);
				}
			});
		}
		-->
	</script>

	<!-- 네이버 로그인 초기화 스크립트 -->
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
	--%>
	</script>
	

	
</body>
</html>