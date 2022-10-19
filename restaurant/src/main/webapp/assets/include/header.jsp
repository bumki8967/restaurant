<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
								<li class="active"><a href="${pageContext.request.contextPath }/">HOME</a>
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
									<a href="blog-standard.html">blog</a>
									<ul class="sub-menu text-left">
											<li><a href="blog-standard.html">blog standard</a></li>
											<li><a href="blog-list.html">blog list</a></li>
											<li><a href="blog-details.html">blog details</a></li>
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
							<a href="${pagecontext.request.contextPath }/loginView">로그인</a>
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