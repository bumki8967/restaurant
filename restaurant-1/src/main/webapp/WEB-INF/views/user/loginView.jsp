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

	/* sign in FORM */
	#logreg-forms {
		width: 550px;
		margin: 10vh auto;
		/* background-color: #f3f3f3; */
		/* box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24); */
		transition: all 0.3s cubic-bezier(.25, .8, .25, 1);
	}
	
	#logreg-forms form {
		width: 100%;
		max-width: 485px;
		padding: 15px;
		margin: auto;
	}
	
	#logreg-forms .form-control {
		position: relative;
		box-sizing: border-box;
		height: auto;
		padding: 10px;
		font-size: 16px;
	}
	
	#logreg-forms .form-control:focus {
		z-index: 2;
	}
	
	#logreg-forms .form-signin input[type="email"] {
		margin-bottom: -1px;
		border-bottom-right-radius: 0;
		border-bottom-left-radius: 0;
	}
	
	#logreg-forms .form-signin input[type="password"] {
		border-top-left-radius: 0;
		border-top-right-radius: 0;
	}
	
	#logreg-forms .social-login {
	    width: 450px;
	    margin: 0 auto;
	    margin-bottom: 14px;
	    display: flex;
	    justify-content: space-between;
	}
	
	#logreg-forms .social-btn {
		font-weight: 100;
		color: white;
		width: 210px;
		font-size: 1.5rem;
	}
	
	#logreg-forms a {
		display: block;
		padding-top: 10px;
		color: lightseagreen;
	}
	
	#logreg-form .lines {
		width: 200px;
		border: 1px solid red;
	}
	
	#logreg-forms button[type="submit"] {
		margin-top: 10px;
	}
	
	#logreg-forms .kakao-btn {
		background-color: #fee500;
	}
	
	#logreg-forms .naver-btn {
		background-color : #03c75b;
	}
	
	#logreg-forms .facebook-btn {
		background-color: #3C589C;
	}
	
	#logreg-forms .google-btn {
		background-color: #DF4B3B;
	}
	
	#logreg-forms .form-reset, #logreg-forms .form-signup {
		display: none;
	}
	
	#logreg-forms .form-signup .social-btn {
		width: 210px;
	}
	
	#logreg-forms .form-signup input {
		margin-bottom: 2px;
	}
	
	.form-signup .social-login {
		width: 210px !important;
		margin: 0 auto;
	}
	
	/* Mobile */
	@media screen and (max-width:500px) {
		#logreg-forms {
			width: 300px;
		}
		#logreg-forms  .social-login {
			width: 200px;
			margin: 0 auto;
			margin-bottom: 10px;
		}
		#logreg-forms  .social-btn {
			font-size: 1.3rem;
			font-weight: 100;
			color: white;
			width: 200px;
			height: 56px;
		}
		#logreg-forms .social-btn:nth-child(1) {
			margin-bottom: 5px;
		}
		#logreg-forms .social-btn span {
			display: none;
		}
		#logreg-forms  .kakao-btn:after {
			content: 'Kakao';
		}
		#logreg-forms  .naver-btn:after {
			content:  'Naver';
		}
		#logreg-forms  .facebook-btn:after {
			content: 'Facebook';
		}
		#logreg-forms  .google-btn:after {
			content: 'Google+';
		}
	}
	</style>

	<script type="text/javascript">
		$(document).ready(function() {

			$("#keep").click(function() {
				if ($(this).is(":checked")) {
					$("#keep").val("Y");
				} else {
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
						Type : "POST",
						url : "/user/login.do",
						dataType : "JSON",
						data : {
							userId : userId,
							userPw : userPw,
							keep : keep
						},
						success : function(data) {
							location.href = "/";
						},
						error : function(error) {
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
	
	
    <div id="logreg-forms">
        <form method="POST" class="form-signin" action="${pageContext.request.contextPath }/user/login.do">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> 로그인</h1>
            
            <div>
                <input type="email" id="inputEmail" class="form-control">
                <input type="password" id="inputPassword" class="form-control">
            </div>

            <br>
    
            <button class="btn btn-primary btn-block" type="button" id="btn-signup">
            	<i class="fas fa-user-plus"></i> 회원가입
           	</button>
           	<button type="submit" class="btn btn-success btn-block">
            	<i class="fas fa-sign-in-alt"></i> 로그인
           	</button>
           	
            <a href="/user/userFindPwView" id="forgot_pswd"> 비밀번호 찾기</a>
            
            <hr>
            
            <div class="social-login">
            	<a href="${kakaoAuthUrl }" class="btn kakao-btn social-btn">
            		<span>
            			<!-- <img src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" alt="카카오로그인">  -->
            			<i class="fab" style="font-weight: bold;">K</i> 카카오톡 로그인
            		</span>
            	</a>
            	
            	<a href="${naverAuthUrl }" class="btn naver-btn social-btn">
            		<span>
	            		<!-- <img src="/assets/image/naver.png" alt="네이버로그인">  -->
	            		<i class="fab" style="font-weight: bold;">N</i> 네이버 로그인
            		</span>
            	</a>
			</div>
			
			 <div class="social-login">           	
            	<a href="#" class="btn facebook-btn social-btn" onclick="javascript:alert('기능을 준비중입니다.');"> 
                	<span>
                		<i class="fab fa-facebook-f"></i> 페이스북 로그인
               		</span> 
            	</a> 
            	
            	<a href="${googleAuthUrl }" class="btn google-btn social-btn">
                	<span>
                		<i class="fab fa-google-plus-g"></i> 구글 로그인
               		</span> 
            	</a>
            </div>
            <!-- <p>Don't have an account!</p>  -->
		</form>
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