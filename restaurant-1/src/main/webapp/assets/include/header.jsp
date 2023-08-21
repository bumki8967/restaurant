<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	a:hover {
		cursor : pointer;
	}
</style>

<script type="text/javascript">
	function logout() {
		var con = confirm("로그아웃 하시겠습니까?");
		
		if (con) {
			alert("로그아웃 되었습니다.");
			location.href="/user/logout.do";
		}
	}
</script>
</head>
<body>
	<div id="sticky-header" class="header-top-area">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-3 col-lg-2">
					<div class="logo">
						<a href="${pageContext.request.contextPath }/">
							<img src="${pageContext.request.contextPath}/image/logo/logo.png" alt="" />
						</a>
					</div>
				</div>
				
				<div class="col-xl-6 col-lg-8">
					<div class="main-menu text-center">
						<nav id="mobile-menu">
							<ul>
								<li class="active"><a href="${pageContext.request.contextPath }/user/loginView">LOGIN</a>
								<!-- 
								<ul class="sub-menu text-left">
									<li><a href="index.html">home 1</a></li>
									<li><a href="index-2.html">home 2</a></li>
									<li><a href="index-3.html">home 3</a></li>
								</ul>
								 -->
								</li>
									 
								<li>
									<a href="about-us.html">about</a>
								</li>
								
								<li>
									<a href="shop.html">shop</a>
									<ul class="sub-menu text-left">
										<li><a href="shop.html">shop</a></li>
										<li><a href="shop-single.html">shop single</a></li>
										<li><a href="shopping-cart.html">shopping cart</a></li>
									</ul>
								</li>
								
								<li>
									<a href="#">pages</a>
									<ul class="sub-menu text-left">
										<li><a href="about-us.html">about</a></li>
										<li><a href="error.html">error</a></li>
										<li><a href="contact-classic.html">contact classic</a></li>
										<li><a href="contact-simple.html">contact simple</a></li>
									</ul>
								</li>
								
								<li>
									<a href="${pageContext.request.contextPath }/notice/artclList">게시판</a>
									<ul class="sub-menu text-left">
											<li>
												<a href="${pageContext.request.contextPath }/notice/artclList">공지사항</a>
											</li>
											<li>
												<a href="${pageContext.request.contextPath }/free/artclList">자유게시판</a>
											</li>
											<li>
												<a href="${pageContext.request.contextPath }/qna/artclList">Q&A</a>
											</li>
									</ul>
								</li>
								<li>
									<a href="contact-classic.html">contact</a>
								</li>
							</ul>
						</nav>
					</div>
					<div class="mobile-menu"></div>
				</div>
				
				
				<div class="col-xl-3 col-lg-2">
					<div class="header-right f-right d-none d-md-none d-lg-block">
						<div class="header-button">
							<c:choose>
								<c:when test="${!empty sessionScope.user }">
									<a onClick="javascript:logout();">로그아웃</a>	
								</c:when>
								<c:otherwise>
									<a href="${pagecontext.request.contextPath }/user/loginView">로그인</a>
								</c:otherwise>
							</c:choose>
						</div>
						<ul>
							<li>
								<a href="#" data-toggle="modal" data-target="#search-modal">
									<span class="ti-search"></span>
								</a>
							</li>
							<li>
								<a href="shopping-cart.html">
									<span class="ti-shopping-cart"></span>
								</a>
							</li>
							<li class="info-bar">
								<a href="#">
									<span class="ti-align-right"></span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
		
</body>
</html>