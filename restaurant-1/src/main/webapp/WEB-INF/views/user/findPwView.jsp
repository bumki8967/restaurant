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
    
    <style type="text/css">
    	.findPw_area {
    		margin-top : 100px;
    	}
    </style>
</head>
<body>

	<header class="header3">
		<c:import url="${pageContext.request.contextPath }/assets/include/header.jsp" />
	</header>
	
	
    <div class="container">
        <div class="row findPw_area">
            <div class="col-md-6 col-md-offset-3">
                <h1 class="page-header">비밀번호 재설정</h1>
                <p>
                    가입시 입력한 이메일 주소를 입력하세요.
                    임시 비밀번호를 이메일로 보내드립니다.
                </p>
                    
                <!-- 이메일 주소 입력 폼 시작 -->
                <form name="myform" method="post" action="${pageContext.request.contextPath}/findPwOk.do">
                    <div class="form-group">
                        <input type="text" name="email" class="form-control" />
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-block" onClick="javascript:findPw();">
                            비밀번호 재설정 하기
                        </button>
                    </div>
                </form>
                <!--// 이메일 주소 입력 폼 끝 -->
            </div>
        </div>
    </div>
    
 	<footer>
		<c:import url="${pageContext.request.contextPath }/assets/include/footer.jsp" />
	</footer>
</body>
</html>