<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html class="no-js" lang="kor">
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
	
	<!-- BootStrap CSS-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
    <!-- BootStrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

    <style>
        .container{
            /* border: 1px solid;  */
            width: 90%;
            margin: 2rem auto 2rem auto;
        }

        .table {
            /* border: 1px solid red;  */
            /* width: 90%;  */
            margin: auto;
        }

        .table > thead {
            background-color: #ececec;
        }

        .search_area {
            /* width: 95%; */
            margin: 1rem 0rem 2rem 0rem;
        }

        .paging_area {
            /* border: 1px solid black; */
            margin: 10rem 0 0 0;
        }

        .table > thead > tr > th {
            text-align: center;
        }

        .table > tbody > tr > td {
            text-align: center;
        }

        .btn_area {
            margin: 5rem 0 0 0;
        }
    </style>
</head>
<body>

	<header class="header3">
		<c:import url="${pageContext.request.contextPath }/assets/include/header.jsp" />
	</header>
	
	
	
	<%--
	<div class="card" style="background: #f5f5f5;">
		<div class="card-header" style="display: flex;">
			<h3 class="card-title" style="width: 89%;">Simple Full Width Table</h3>
		
		<div class="card-tools">
                  <div class="input-group input-group-sm" style="width: 150px;">
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                    <div class="input-group-append">
                      <button type="submit" class="btn btn-default">
                        <i class="fas fa-search"></i>
                      </button>
                    </div>
                  </div>
                </div>
		</div>
		<!-- /.card-header -->
		<div class="card-body p-0" style="max-width: 95%; margin: 0rem 2rem 0rem 2rem;">
		  <table class="table">
		    <thead>
		      <tr>
		        <th style="width: 10px">#</th>
		<th>Task</th>
		<th>Progress</th>
		<th style="width: 40px">Label</th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
		    <td>1.</td>
		    <td>Update software</td>
		    <td>
		      <div class="progress progress-xs">
		        <div class="progress-bar progress-bar-danger" style="width: 55%"></div>
		    </div>
		  </td>
		  <td><span class="badge bg-danger">55%</span></td>
		</tr>
		<tr>
		  <td>2.</td>
		  <td>Clean database</td>
		  <td>
		    <div class="progress progress-xs">
		      <div class="progress-bar bg-warning" style="width: 70%"></div>
		    </div>
		  </td>
		  <td><span class="badge bg-warning">70%</span></td>
		</tr>
		<tr>
		  <td>3.</td>
		  <td>Cron job running</td>
		  <td>
		    <div class="progress progress-xs progress-striped active">
		      <div class="progress-bar bg-primary" style="width: 30%"></div>
		    </div>
		  </td>
		  <td><span class="badge bg-primary">30%</span></td>
		</tr>
		<tr>
		  <td>4.</td>
		  <td>Fix and squish bugs</td>
		  <td>
		    <div class="progress progress-xs progress-striped active">
		      <div class="progress-bar bg-success" style="width: 90%"></div>
		          </div>
		        </td>
		        <td><span class="badge bg-success">90%</span></td>
		      </tr>
		    </tbody>
		  </table>
		</div>
		<!-- /.card-body -->
		</div>
          
        <!-- Paging -->
		<div class="card-footer clearfix">
			<ul class="pagination pagination-sm m-0 float-right" style="display: flex; width: 53%;">
			  <li class="page-item"><a class="page-link" href="#">«</a></li>
			  <li class="page-item"><a class="page-link" href="#">11</a></li>
			  <li class="page-item"><a class="page-link" href="#">21</a></li>
			  <li class="page-item"><a class="page-link" href="#">31</a></li>
			  <li class="page-item"><a class="page-link" href="#">»</a></li>
			</ul>
		</div>
	  --%>
	  
	  
	  <div class="container">
    <!-- 제목 부분 -->
    <div class="clearfix">
        <span>
            <h1 class="text-center"> 자유게시판 </h1>
        </span>
    </div>

    <!-- 검색 부분 -->
    <form method="" action="">
        <div class="input-group search_area">
            <input type="text" class="form-control pull-right" name="" id="search" value="" placeholder="검색" style="width: 20%; ;"/>
            <span class="input-group-btn">
                <button class="btn btn-success">
                    <i class="glyphicon glyphicon-search"></i>
                </button>
            </span>
        </div>
    </form>

    <!-- 게시물 부분 -->
    <div class="table-responsive artclTable">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>번호</th>
                    <th style="width: 50%;">제목</th>
                    <th>글쓴이</th>
                    <th>작성일</th>
                    <th>조회수</th>
                </tr>
            </thead>
            <tbody>
              <c:choose>
                <c:when test='${artclList != null}'>
                  <c:forEach var="list" items="${artclList }">
                    <c:if test="${list.type == '자유게시판'}">
                      <tr>
                        <td>
                          ${list.artclSeq }
                        </td>
                        <td>
                          <a href="${pageContext.request.contextPath }/free/artclDetailView?artclSeq=${list.artclSeq}">
                            ${list.title }
                          </a>
                        </td>
                        <td>
                          ${list.writer }
                        </td>
                        <td>
                          <fmt:formatDate type="date" value="${list.regDate }" pattern="yyy-MM-dd" />
                        </td>
                        <td>
                          ${list.hit }
                        </td>
                      </tr>
                    </c:if>
                  </c:forEach>
                </c:when>
                <c:otherwise>
                  <tr>
                    <td colspan="5">
                      등록된 글이 없습니다.
                    </td>
                  </tr>
                </c:otherwise>
              </c:choose>
            </tbody>
        </table>
    </div>

    <!-- 버튼 부분 -->
    <div class="pull-right btn_area">
        <%-- <span>
            <a href="javascript:alert('글수정버튼!');" class="btn btn-warning">
                <i class="glyphicon glyphicon-pencil"> 글수정 </i>
            </a>
        </span> --%>
        <span>
            <a href="${pageContext.request.contextPath }/free/artclRegistView" class="btn btn-primary">
                <i class="glyphicon glyphicon-pencil"> 글쓰기 </i>
            </a>
        </span>
    </div>

    <!-- 페이징 부분 -->
    <nav class="text-center paging_area">
        <ul class="pagination">
            <li class="disabled">      
                <a href="#">        
                    <span>«</span>      
                </a>    
            </li>
            <li class="active">
                <a href="#">1</a>
            </li>    
            <li>
                <a href="#">2</a>
            </li>    
            <li>
                <a href="#">3</a>
            </li>        
            <li>      
                <a href="#">        
                    <span>»</span>      
                </a>    
            </li>
        </ul>
    </nav>
</div>
	
	
	<footer>
		<c:import url="${pageContext.request.contextPath }/assets/include/footer.jsp" />
	</footer>
</body>
</html>