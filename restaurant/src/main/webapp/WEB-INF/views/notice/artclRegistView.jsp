<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <!-- Jquery -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <!-- BootStrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- CKEditor4 -->
    <script src="http://cdn.ckeditor.com/4.4.7/full/ckeditor.js"></script>
    <!-- CKEditor5 -->
    <!-- <script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>  -->
    

	
	<style>
        .container{
            /* border: 1px solid;  */
            /* width: 90%; */
            margin: 2rem auto 2rem auto;
        }

        .glyphicon-asterisk {
            background: none;
            color: red;
        }

        textarea {
            resize: none;
            width: 100%;
            height: 80%;
        }

        .ck-editor__editable {
            height: 500px;
        }

        .cancelBtn {
            margin: 0 0 0 1rem;
        }
    </style>
    
    
    <script type="text/javascript">
    
    <%--
	    ClassicEditor
		.create(document.querySelector('#content'), {
			ckfinder: {
				uploadUrl : '/notice/artclRegist.do'
			}
		})
		.then(editor => {
			console.log('Editor was initialized');
		})
		.catch(error => {
			console.error(error);
		});
    --%>
    
    $(document).ready(function() {
    	$("#registBtn").click(function() {
    		var con = confirm("?????? ?????????????????????????");
    		
    		if (con) {
    			alert("????????? ?????????????????????.");
    			$("#registForm").attr('action', '/notice/artclRegist.do');
    			$("#registForm").submit();
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
        <!-- ???????????? -->
        <div class="clearfix subject_area">
            <span>
                <h1 class="text-center"> ???????????? ?????? </h1>
            </span>
        </div>
        
        <hr />

        <div class="regist_area">
            <!-- form ?????? -->
            <form method="POST" id="registForm" class="form-horizontal">
            	<input type="hidden" name="type" value="????????????" />
            
                <div class="artclItem writeForm">
                    <!-- ?????? ?????? ?????? -->
                    <div class="form-group">
                        <label for="subject" class="col-sm-2 control-label">
                            <mark class="glyphicon glyphicon-asterisk"></mark> ??????
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="title" id="title" value="" />
                        </div>
                    </div>
                    <!-- ????????? ?????? ?????? -->
                    <div class="form-group">
                        <label for="writer" class="col-sm-2 control-label">
                            <mark class="glyphicon glyphicon-asterisk"></mark> ?????????
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" name="writer" id="writer" value="" />
                        </div>
                    </div>
                    <!-- ?????? ?????? ?????? -->
                    <div class="form-group">
                        <label for="content" class="col-sm-2 control-label">
                            <mark class="glyphicon glyphicon-asterisk"></mark> ??????
                        </label>
                        <div class="col-sm-10">
                            <textarea name="content" id="content" class="ckedditor"></textarea>
                            <!-- CKEditor ???????????? ??? ??????????????? ???????????? -->
                            <script>
                                /** CKEditor 4 */
<<<<<<< HEAD
                                // CKEDITOR.replace('content', {
                                //     filebrowserUploadUrl        : '/file/fileUpload.do',
                                //     filebrowserImageUploadUrl   : '/image/imageUpload.do',
                                //     height : '500px'
                                // });

                                // function MyCustomUploadAdapterPlugin(editor) {
                                //     editor.plugins.get('FileRepository').createUploadAdapter = (loader) => {
                                //         return new UploadAdapter(loader)
                                //     }
                                // }
=======
                                CKEDITOR.replace('content', {
                                     //filebrowserUploadUrl        : '${pageContext.request.contextPath }/notice/imgUpload.do',
                                     filebrowserImageUploadUrl   : '${pageContext.request.contextPath }/notice/imgUpload.do',
                                     height : '500px'
                                 });
>>>>>>> branch 'master' of https://github.com/bumki8967/restaurant.git
                                
                                /** CKEditor 5 */
                                /**
                                ClassicEditor.create( document.querySelector( '#content' ), {
<<<<<<< HEAD
                                	// extraPlugins: [MyCustomUploadAdapterPlugin],
                                    language: "ko"
=======
                                    simpleUpload : {
                                    	uploadUrl : '/notice/artclRegist.do'
                                    },
                                	language: "ko"
>>>>>>> branch 'master' of https://github.com/bumki8967/restaurant.git
                                } );
                                */
                            </script>
                        </div>
                    </div>
                    <!-- ?????? ?????? ?????? -->
                    <div class="form-group btn-group-justified">
                        <span class="pull-right cancelBtn">
                            <button type="button" class="btn btn-warning"> ???????????? </button>
                        </span>
                        <span class="pull-right submitBtn">
                            <button type="button" id="registBtn" class="btn btn-primary"> ???????????? </button>
                        </span>
                    </div>
                </div>
            </form>
            <!-- // form ??? -->
        </div>
    </div>
    
    		<!-- footer-area-start -->
		<footer>
			<c:import url="${pageContext.request.contextPath }/assets/include/footer.jsp" />
		</footer>
		<!-- footer-area-end -->
</body>
</html>