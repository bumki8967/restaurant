<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    
    <a href="${pageContext.request.contextPath }/admin/index" class="brand-link" style="text-align: center">
    	<h2>
	    	<strong>
	      		<span class="brand-text font-weight-light"><b>관리자 페이지</b></span>
	      	</strong>	
    	</h2>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- SidebarSearch Form -->
      <div class="form-inline" style="padding: 20px 0px 10px 0px;">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
 	          <!-- Add icons to the links using the .nav-icon class
	               with font-awesome or any other icon font library -->
			<li class="nav-item">
	            <a href="#" class="nav-link">
	              <i class="nav-icon fas fa-image"></i>
	              <p>
	                회원관리
	                <i class="fas fa-angle-left right"></i>
	              </p>
	            </a>
	            <ul class="nav nav-treeview" style="display: none;">
	              <li class="nav-item">
	                <a href="/admin/userList" class="nav-link">
	                  <i class="far fa-circle nav-icon"></i>
	                  <p>회원관리</p>
	                </a>
	              </li>
	            </ul>
	          </li>
	          
	          
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
	            <a href="#" class="nav-link">
	              <i class="nav-icon fas fa-table"></i>
	              <p>
	                게시판 관리
	                <i class="fas fa-angle-left right"></i>
	              </p>
	            </a>
	            <ul class="nav nav-treeview" style="display: none;">
	              <li class="nav-item">
	                <a href="${pageContext.request.contextPath }/admin/bbsSetupList" class="nav-link">
	                  <i class="far fa-circle nav-icon"></i>
	                  <p>게시판 리스트</p>
	                </a>
	              </li>
	              <li class="nav-item">
	                <a href="${pageContext.request.contextPath }/admin/mediaMemorialHall/artclList" class="nav-link">
	                  <i class="far fa-circle nav-icon"></i>
	                  <p>언론에 비친 기념관</p>
	                </a>
	              </li>
	              <li class="nav-item">
	                <a href="${pageContext.request.contextPath }/admin/notice/artclList" class="nav-link">
	                  <i class="far fa-circle nav-icon"></i>
	                  <p>공지사항</p>
	                </a>
	              </li>
	              <li class="nav-item">
	                <a href="${pageContext.request.contextPath }/admin/newsletter/artclList" class="nav-link">
	                  <i class="far fa-circle nav-icon"></i>
	                  <p>뉴스레터</p>
	                </a>
	              </li>
	            </ul>
	          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
</body>
</html>