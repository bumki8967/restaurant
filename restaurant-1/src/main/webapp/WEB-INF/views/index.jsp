<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Kettle</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/image/favicon.ico">
<!-- Place favicon.ico in the root directory -->
<!-- CSS here -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
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

<!-- URL에 파라미터 없애는 스크립트 -->
<script type="text/javascript">
	history.replaceState({}, null, location.pathname);
</script>

</head>
<body>
	<!--[if lte IE 9]><p class="browserupgrade">You are using an <strong>outdated</strong>browser. Please <a href="https://browsehappy.com/">upgrade your browser</a>to improve your experience and security.</p><![endif]-->
	<!-- header-start -->
	<div class="header-padding">
		<header class="header3">
			<c:import url="${pageContext.request.contextPath }/assets/include/header.jsp" />
		</header>
		<!-- header-end -->
		
		<input type="hidden" name="userId" value="${sessionScope.userId }" />
		<input type="hidden" name="name" value="${sessionScope.name }" />
		<input type="hidden" name="userType" value="${sessionScope.userType }" />
		<input type="hidden" name="loginType" value="${sessionScope.loginType }" />
		
		<!-- slider start -->
		<div class="slider-area">
			<div class="slider-active dot-style">
				<div class="single-slider pt-225 pb-255 d-flex align-items-center"
					style="background-image: url(${pageContext.request.contextPath}/image/slider/slider3.jpg)">
					<div class="container">
						<div class="row ">
							<div class="col-xl-12">
								<div class="slider-text text-center">
									<h1>Let’s Get Started With kettle</h1>
									<a class="btn" href="#">Purchase now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- slider end -->
		<!-- service-area-start -->
		<div class="service-area pt-100 pb-60">
			<div class="container">
				<div class="row">
					<div class="col-xl-4 col-lg-4 col-md-6">
						<div class="service-wrapper text-center mb-30">
							<div class="service-img service3-img">
								<img src="${pageContext.request.contextPath}/image/service/service4.png" alt="" />
							</div>
							<div class="service-text service3-text">
								<h3>We cook with passion</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore</p>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6">
						<div class="service-wrapper text-center mb-30">
							<div class="service-img service3-img">
								<img src="${pageContext.request.contextPath}/image/service/service5.png" alt="" />
							</div>
							<div class="service-text service3-text">
								<h3>Book a table online</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore</p>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6">
						<div class="service-wrapper text-center mb-30">
							<div class="service-img service3-img">
								<img src="${pageContext.request.contextPath}/image/service/service6.png" alt="" />
							</div>
							<div class="service-text service3-text">
								<h3>Free and fast delivery</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- service-area-end -->
		<!-- special-menu-area-start -->
		<div class="special-menu-area pb-100">
			<div class="container">
				<div class="row">c
					<div class="col-xl-12">
						<div class="section-title section2-title text-center mb-70">
							<h1>Special Menu</h1>
							<span>CHECK OUT OUR MENU AND SELECT SOMETHING FOR EVERYONE</span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="special-menu-active owl-carousel">
						<div class="col-xl-12">
							<div class="special-menu-wrapper mb-30">
								<div class="menu-img">
									<img src="${pageContext.request.contextPath}/image/special-menu/menu1.jpg" alt="" />
								</div>
								<div class="menu-text text-center">
									<h4>- Fast food -</h4>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$11.95</span>
										</div>
										<h4>Special Wonthan</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$13.95</span>
										</div>
										<h4>Chicken Ball</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$15.95</span>
										</div>
										<h4>Prawn toast</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="special-menu-wrapper mb-30">
								<div class="menu-img">
									<img src="${pageContext.request.contextPath}/image/special-menu/menu2.jpg" alt="" />
								</div>
								<div class="menu-text text-center">
									<h4>- Fast food -</h4>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$18.95</span>
										</div>
										<h4>French Fry</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$21.95</span>
										</div>
										<h4>Vegetable Pakura</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$9.95</span>
										</div>
										<h4>Cheese cake</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="special-menu-wrapper mb-30">
								<div class="menu-img">
									<img src="${pageContext.request.contextPath}/image/special-menu/menu1.jpg" alt="" />
								</div>
								<div class="menu-text text-center">
									<h4>- Fast food -</h4>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$11.95</span>
										</div>
										<h4>Special Wonthan</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$13.95</span>
										</div>
										<h4>Chicken Ball</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$15.95</span>
										</div>
										<h4>Prawn toast</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="special-menu-wrapper mb-30">
								<div class="menu-img">
									<img src="${pageContext.request.contextPath}/image/special-menu/menu2.jpg" alt="" />
								</div>
								<div class="menu-text text-center">
									<h4>- Fast food -</h4>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$18.95</span>
										</div>
										<h4>French Fry</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$21.95</span>
										</div>
										<h4>Vegetable Pakura</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$9.95</span>
										</div>
										<h4>Cheese cake</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="special-menu-wrapper mb-30">
								<div class="menu-img">
									<img src="${pageContext.request.contextPath}/image/special-menu/menu1.jpg" alt="" />
								</div>
								<div class="menu-text text-center">
									<h4>- Fast food -</h4>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$11.95</span>
										</div>
										<h4>Special Wonthan</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$13.95</span>
										</div>
										<h4>Chicken Ball</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$15.95</span>
										</div>
										<h4>Prawn toast</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="special-menu-wrapper mb-30">
								<div class="menu-img">
									<img src="${pageContext.request.contextPath}/image/special-menu/menu2.jpg" alt="" />
								</div>
								<div class="menu-text text-center">
									<h4>- Fast food -</h4>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$18.95</span>
										</div>
										<h4>French Fry</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$21.95</span>
										</div>
										<h4>Vegetable Pakura</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
								<div class="singles-menu">
									<div class="special-menu-text">
										<div class="special-right">
											<span>$9.95</span>
										</div>
										<h4>Cheese cake</h4>
										<p>Blackened Chicken, Cherry Tomatoes, Green Pepper,
											Onion, Marinara, Mozzarella & Parmesan</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-12">
						<div
							class="special-menu-button special-menu-button2 text-center pt-10">
							<a href="#">LOAD MORE</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- special-menu-area-end -->
		<!-- news-area-start -->
		<div class="news-area gray2-bg pt-90 pb-120">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="section-title text-center mb-40">
							<h1>Latest news</h1>
							<span>Kettle BLOG</span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="news-active owl-carousel">
						<div class="col-xl-12">
							<div class="row">
								<div class="col-xl-6 col-lg-6 col-md-6">
									<div class="news-img">
										<a href="blog-details.html"><img src="${pageContext.request.contextPath}/image/news/news1.jpg"
											alt="" /></a>
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6">
									<div class="news-wrapper">
										<div class="news-text">
											<span>20 JUNE 2019</span>
											<h3>
												<a href="blog-details.html">5 best foods to make you
													fresh & healthy</a>
											</h3>
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy...</p>
											<a href="blog-details.html">READ ARTICLE <i
												class="fas fa-long-arrow-alt-right"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="row">
								<div class="col-xl-6 col-lg-6 col-md-6">
									<div class="news-img">
										<a href="blog-details.html"><img src="${pageContext.request.contextPath}/image/news/news2.jpg"
											alt="" /></a>
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6">
									<div class="news-wrapper">
										<div class="news-text">
											<span>20 JUNE 2019</span>
											<h3>
												<a href="blog-details.html">24 Reasons To Seek Out Fresh
													Figs</a>
											</h3>
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy...</p>
											<a href="blog-details.html">READ ARTICLE <i
												class="fas fa-long-arrow-alt-right"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="row">
								<div class="col-xl-6 col-lg-6 col-md-6">
									<div class="news-img">
										<a href="blog-details.html"><img src="${pageContext.request.contextPath}/image/news/news1.jpg"
											alt="" /></a>
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6">
									<div class="news-wrapper">
										<div class="news-text">
											<span>20 JUNE 2019</span>
											<h3>
												<a href="blog-details.html">5 best foods to make you
													fresh & healthy</a>
											</h3>
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy...</p>
											<a href="blog-details.html">READ ARTICLE <i
												class="fas fa-long-arrow-alt-right"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="row">
								<div class="col-xl-6 col-lg-6 col-md-6">
									<div class="news-img">
										<a href="blog-details.html"><img src="${pageContext.request.contextPath}/image/news/news2.jpg"
											alt="" /></a>
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6">
									<div class="news-wrapper">
										<div class="news-text">
											<span>20 JUNE 2019</span>
											<h3>
												<a href="blog-details.html">24 Reasons To Seek Out Fresh
													Figs</a>
											</h3>
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy...</p>
											<a href="blog-details.html">READ ARTICLE <i
												class="fas fa-long-arrow-alt-right"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="row">
								<div class="col-xl-6 col-lg-6 col-md-6">
									<div class="news-img">
										<a href="blog-details.html"><img src="${pageContext.request.contextPath}/image/news/news1.jpg"
											alt="" /></a>
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6">
									<div class="news-wrapper">
										<div class="news-text">
											<span>20 JUNE 2019</span>
											<h3>
												<a href="blog-details.html">5 best foods to make you
													fresh & healthy</a>
											</h3>
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy...</p>
											<a href="blog-details.html">READ ARTICLE <i
												class="fas fa-long-arrow-alt-right"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="row">
								<div class="col-xl-6 col-lg-6 col-md-6">
									<div class="news-img">
										<a href="blog-details.html"><img src="${pageContext.request.contextPath}/image/news/news2.jpg"
											alt="" /></a>
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6">
									<div class="news-wrapper">
										<div class="news-text">
											<span>20 JUNE 2019</span>
											<h3>
												<a href="blog-details.html">24 Reasons To Seek Out Fresh
													Figs</a>
											</h3>
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy...</p>
											<a href="blog-details.html">READ ARTICLE <i
												class="fas fa-long-arrow-alt-right"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- news-area-end -->
		<!-- our-staffs-area-start -->
		<div class="our-staffs-area pt-90 pb-70">
			<div class="container">
				<div class="row">
					<div class="col-xl-10 col-lg-10 offset-lg-1 offset-xl-1">
						<div class="staffs-title text-center mb-65">
							<h1>Our Staffs</h1>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="our-staffs-wrapper text-center mb-30">
							<div class="our-staffs-img">
								<img src="${pageContext.request.contextPath}/image/staffs/1.png" alt="" />
							</div>
							<div class="our-staffs-text">
								<h4>Christian Rodriguez</h4>
								<span>Broiler cook</span>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="our-staffs-wrapper text-center mb-30">
							<div class="our-staffs-img">
								<img src="${pageContext.request.contextPath}/image/staffs/2.png" alt="" />
							</div>
							<div class="our-staffs-text">
								<h4>Christian Rodriguez</h4>
								<span>Fry / saute cook</span>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="our-staffs-wrapper text-center mb-30">
							<div class="our-staffs-img">
								<img src="${pageContext.request.contextPath}/image/staffs/3.png" alt="" />
							</div>
							<div class="our-staffs-text">
								<h4>Christian Rodriguez</h4>
								<span>Soup and sauce cook</span>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="our-staffs-wrapper text-center mb-30">
							<div class="our-staffs-img">
								<img src="${pageContext.request.contextPath}/image/staffs/4.png" alt="" />
							</div>
							<div class="our-staffs-text">
								<h4>Christian Rodriguez</h4>
								<span>Broiler cook</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- our-staffs-area-end -->
		<!-- benefits-area-start -->
		<div class="benefits-area pb-70">
			<div class="container">
				<div class="row">
					<div class="col-xl-6 col-lg-6 mb-30">
						<div class="benefits-wrapper">
							<div class="benefits-section">
								<span>Why we are the best</span>
								<h1>Our benefits</h1>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
									sed do eiu smod tempor incididunt ut labore et dolore magna
									aliqua.</p>
							</div>
						</div>
						<div class="benefits-tab-area mt-25">
							<div class="row">
								<div class="col-xl-12">
									<ul class="nav benefits-tab mb-45" id="myTab" role="tablist">
										<li class="nav-item"><a class="nav-link active"
											id="home-tab" data-toggle="tab" href="#home">home</a></li>
										<li class="nav-item"><a class="nav-link" id="profile-tab"
											data-toggle="tab" href="#profile">Food Design</a></li>
										<li class="nav-item"><a class="nav-link" id="contact-tab"
											data-toggle="tab" href="#contact">Kitchen</a></li>
										<li class="nav-item"><a class="nav-link"
											id="contact1-tab" data-toggle="tab" href="#contact1">Cooking</a></li>
									</ul>
									<div class="tab-content" id="myTabContent">
										<div class="tab-pane fade show active" id="home"
											role="tabpanel" aria-labelledby="home-tab">
											<div class="row">
												<div class="col-xl-12">
													<div class="question-collapse">
														<div id="accordion">
															<div class="card">
																<div class="card-header" id="headingOne">
																	<h5 class="mb-0">
																		<button class="btn btn-link" data-toggle="collapse"
																			data-target="#collapseOne" aria-expanded="true"
																			aria-controls="collapseOne">Our
																			entertainment teamInteger</button>
																	</h5>
																</div>
																<div id="collapseOne" class="collapse show"
																	aria-labelledby="headingOne" data-parent="#accordion">
																	<div class="card-body">
																		<p>Lorem ipsum dolor sit amet, consectetur
																			adipisicing elit, sed do eiusmod tempor incididunt ut
																			labore et dolore magna aliqua. Ut enim ad minim
																			veniam, quis nostrud exercitation ullamco.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingTwo">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed"
																			data-toggle="collapse" data-target="#collapseTwo"
																			aria-expanded="false" aria-controls="collapseTwo">Important
																			issues communication</button>
																	</h5>
																</div>
																<div id="collapseTwo" class="collapse"
																	aria-labelledby="headingTwo" data-parent="#accordion">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec
																			lobortis risus a elit tempe corper ligula eu tempor
																			congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec
																			fermentum.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingThree">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed"
																			data-toggle="collapse" data-target="#collapseThree"
																			aria-expanded="false" aria-controls="collapseThree">Where
																			you can find all information</button>
																	</h5>
																</div>
																<div id="collapseThree" class="collapse"
																	aria-labelledby="headingThree" data-parent="#accordion">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec
																			lobortis risus a elit tempe corper ligula eu tempor
																			congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec
																			fermentum.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="headingFour">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed"
																			data-toggle="collapse" data-target="#collapseFour"
																			aria-expanded="false" aria-controls="collapseFour">Where
																			you can find all information</button>
																	</h5>
																</div>
																<div id="collapseFour" class="collapse"
																	aria-labelledby="headingFour" data-parent="#accordion">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec
																			lobortis risus a elit tempe corper ligula eu tempor
																			congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec
																			fermentum.</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane fade" id="profile" role="tabpanel"
											aria-labelledby="profile-tab">
											<div class="row">
												<div class="col-xl-12">
													<div class="question-collapse">
														<div id="accordion2">
															<div class="card">
																<div class="card-header" id="heading1">
																	<h5 class="mb-0">
																		<button class="btn btn-link" data-toggle="collapse"
																			data-target="#collapse1" aria-expanded="true"
																			aria-controls="collapse1">Our entertainment
																			teamInteger</button>
																	</h5>
																</div>
																<div id="collapse1" class="collapse show"
																	aria-labelledby="heading1" data-parent="#accordion2">
																	<div class="card-body">
																		<p>Lorem ipsum dolor sit amet, consectetur
																			adipisicing elit, sed do eiusmod tempor incididunt ut
																			labore et dolore magna aliqua. Ut enim ad minim
																			veniam, quis nostrud exercitation ullamco.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading2">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed"
																			data-toggle="collapse" data-target="#collapse2"
																			aria-expanded="false" aria-controls="collapse2">Important
																			issues communication</button>
																	</h5>
																</div>
																<div id="collapse2" class="collapse"
																	aria-labelledby="heading2" data-parent="#accordion2">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec
																			lobortis risus a elit tempe corper ligula eu tempor
																			congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec
																			fermentum.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading3">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed"
																			data-toggle="collapse" data-target="#collapse3"
																			aria-expanded="false" aria-controls="collapse3">Where
																			you can find all information</button>
																	</h5>
																</div>
																<div id="collapse3" class="collapse"
																	aria-labelledby="heading3" data-parent="#accordion2">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec
																			lobortis risus a elit tempe corper ligula eu tempor
																			congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec
																			fermentum.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading4">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed"
																			data-toggle="collapse" data-target="#collapse4"
																			aria-expanded="false" aria-controls="collapse4">Where
																			you can find all information</button>
																	</h5>
																</div>
																<div id="collapse4" class="collapse"
																	aria-labelledby="heading4" data-parent="#accordion2">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec
																			lobortis risus a elit tempe corper ligula eu tempor
																			congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec
																			fermentum.</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane fade" id="contact" role="tabpanel"
											aria-labelledby="contact-tab">
											<div class="row">
												<div class="col-xl-12">
													<div class="question-collapse">
														<div id="accordion3">
															<div class="card">
																<div class="card-header" id="heading5">
																	<h5 class="mb-0">
																		<button class="btn btn-link" data-toggle="collapse"
																			data-target="#collapse5" aria-expanded="true"
																			aria-controls="collapse5">Our entertainment
																			teamInteger</button>
																	</h5>
																</div>
																<div id="collapse5" class="collapse show"
																	aria-labelledby="heading5" data-parent="#accordion3">
																	<div class="card-body">
																		<p>Lorem ipsum dolor sit amet, consectetur
																			adipisicing elit, sed do eiusmod tempor incididunt ut
																			labore et dolore magna aliqua. Ut enim ad minim
																			veniam, quis nostrud exercitation ullamco.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading6">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed"
																			data-toggle="collapse" data-target="#collapse6"
																			aria-expanded="false" aria-controls="collapse6">Important
																			issues communication</button>
																	</h5>
																</div>
																<div id="collapse6" class="collapse"
																	aria-labelledby="heading6" data-parent="#accordion3">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec
																			lobortis risus a elit tempe corper ligula eu tempor
																			congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec
																			fermentum.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading7">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed"
																			data-toggle="collapse" data-target="#collapse7"
																			aria-expanded="false" aria-controls="collapse7">Where
																			you can find all information</button>
																	</h5>
																</div>
																<div id="collapse7" class="collapse"
																	aria-labelledby="heading7" data-parent="#accordion3">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec
																			lobortis risus a elit tempe corper ligula eu tempor
																			congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec
																			fermentum.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading8">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed"
																			data-toggle="collapse" data-target="#collapse8"
																			aria-expanded="false" aria-controls="collapse8">Where
																			you can find all information</button>
																	</h5>
																</div>
																<div id="collapse8" class="collapse"
																	aria-labelledby="heading8" data-parent="#accordion3">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec
																			lobortis risus a elit tempe corper ligula eu tempor
																			congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec
																			fermentum.</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane fade" id="contact1" role="tabpanel"
											aria-labelledby="contact-tab">
											<div class="row">
												<div class="col-xl-12">
													<div class="question-collapse">
														<div id="accordion4">
															<div class="card">
																<div class="card-header" id="heading9">
																	<h5 class="mb-0">
																		<button class="btn btn-link" data-toggle="collapse"
																			data-target="#collapseOne" aria-expanded="true"
																			aria-controls="collapse9">Our entertainment
																			teamInteger</button>
																	</h5>
																</div>
																<div id="collapse9" class="collapse show"
																	aria-labelledby="heading9" data-parent="#accordion4">
																	<div class="card-body">
																		<p>Lorem ipsum dolor sit amet, consectetur
																			adipisicing elit, sed do eiusmod tempor incididunt ut
																			labore et dolore magna aliqua. Ut enim ad minim
																			veniam, quis nostrud exercitation ullamco.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading10">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed"
																			data-toggle="collapse" data-target="#collapse10"
																			aria-expanded="false" aria-controls="collapseTwo">Important
																			issues communication</button>
																	</h5>
																</div>
																<div id="collapse10" class="collapse"
																	aria-labelledby="heading10" data-parent="#accordion4">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec
																			lobortis risus a elit tempe corper ligula eu tempor
																			congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec
																			fermentum.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading11">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed"
																			data-toggle="collapse" data-target="#collapse11"
																			aria-expanded="false" aria-controls="collapse11">Where
																			you can find all information</button>
																	</h5>
																</div>
																<div id="collapse11" class="collapse"
																	aria-labelledby="heading11" data-parent="#accordion4">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec
																			lobortis risus a elit tempe corper ligula eu tempor
																			congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec
																			fermentum.</p>
																	</div>
																</div>
															</div>
															<div class="card">
																<div class="card-header" id="heading12">
																	<h5 class="mb-0">
																		<button class="btn btn-link collapsed"
																			data-toggle="collapse" data-target="#collapse12"
																			aria-expanded="false" aria-controls="collapse12">Where
																			you can find all information</button>
																	</h5>
																</div>
																<div id="collapse12" class="collapse"
																	aria-labelledby="heading12" data-parent="#accordion4">
																	<div class="card-body">
																		<p>Duis ac tellus et risus vulputate vehicula onec
																			lobortis risus a elit tempe corper ligula eu tempor
																			congue eros est euismod turpis id tincidunt sapien
																			risuquam. Maecenas fermentum consequat mionec
																			fermentum.</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6">
						<div class="benefits-img mb-30">
							<img src="${pageContext.request.contextPath}/image/benefits/benefits1.jpg" alt="" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- benefits-area-end -->
		<!-- counter-area-start -->
		<div class="counter-area pt-110 pb-75"
			style="background-image: url(${pageContext.request.contextPath}/image/bg/bg1.jpg)">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="counter-wrapper mb-30 text-center">
							<div class="counter-text">
								<h1 class="counter">10</h1>
								<span>YEARS OF <br>EXPERIENCE
								</span>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="counter-wrapper mb-30 text-center">
							<div class="counter-text">
								<h1 class="counter">120</h1>
								<span>Successful <br>entrepreneurs
								</span>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="counter-wrapper mb-30 text-center">
							<div class="counter-text">
								<h1 class="counter">80</h1>
								<span>COMPANIES <br>FOUNDED
								</span>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="counter-wrapper mb-30 text-center">
							<div class="counter-text">
								<h1 class="counter">240</h1>
								<span>BOOKS, DVDS <br>& PODCASTS
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- counter-area-end -->
		<!-- footer-area-start -->
		<footer>
			<c:import url="${pageContext.request.contextPath }/assets/include/footer.jsp" />
		</footer>
		<!-- footer-area-end -->
	</div>
	<!-- Modal Search -->
	<div class="modal fade" id="search-modal" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<form>
					<input type="text" placeholder="Search here...">
					<button>
						<i class="fa fa-search"></i>
					</button>
				</form>
			</div>
		</div>
	</div>
	<!-- JS here -->
	<script src="${pageContext.request.contextPath}/assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/waypoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.counterup.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/isotope.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.meanmenu.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/slick.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/ajax-form.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/wow.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollUp.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/imagesloaded.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/plugins.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
</body>
</html>