<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="ko">
<%@ include file = "../include/head.jsp" %>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
<%@ include file = "../include/main_header.jsp" %>

  <!-- Main Sidebar Container -->
<%@ include file = "../include/left_column.jsp" %>

<script type="text/javascript" src="https://cdn.ckeditor.com/ckeditor5/29.1.0/classic/ckeditor.js"></script>

﻿
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
<div class="col-lg-12"> 
	<form role="form" id="writeForm" method="post" action="${path}/article/write" accept-charset="utf-8"> 
		<div class="card"> 
			<div class="card-header with-border"> 
				<h3 class="card-title">게시글 작성</h3> 
			</div> 
			<div class="card-body"> 
				<div class="form-group"> 
					<label for="title">제목</label> 
					<input class="form-control" id="title" name="title" placeholder="제목을 입력해주세요"> 
				</div> 
				<div class="form-group"> 
					<label for="content">내용</label> 
					<textarea class="form-control" id="content" name="content" rows="30" placeholder="내용을 입력해주세요" style="resize: none;">${data.content}</textarea>
			<script>	
	        ClassicEditor	             
	            .create( document.querySelector( '#content' ))
	            .catch( error => {
	                console.error( error );
	            } );
	       </script>
				</div> 

				<div class="form-group"> 
					<label for="writer">작성자</label> 
					<input class="form-control" id="writer" name="writer"> 
				</div> 
			</div> 
			<div class="card-footer"> 
				<button type="button" class="btn btn-primary"><i class="fa fa-list"></i> 목록</button> 
				<div class="float-right"> 
					<button type="reset" class="btn btn-warning"><i class="fa fa-reply"></i> 초기화</button> 
					<button type="submit" class="btn btn-success"><i class="fa fa-save"></i> 저장</button> 
				</div> 
			</div> 
		</div> 
	</form> 
</div>
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Card title</h5>

                <p class="card-text">
                  Some quick example text to build on the card title and make up the bulk of the card's
                  content.
                </p>

                <a href="#" class="card-link">Card link</a>
                <a href="#" class="card-link">Another link</a>
              </div>
            </div>

            <div class="card card-primary card-outline">
              <div class="card-body">
                <h5 class="card-title">Card title</h5>

                <p class="card-text">
                  Some quick example text to build on the card title and make up the bulk of the card's
                  content.
                </p>
                <a href="#" class="card-link">Card link</a>
                <a href="#" class="card-link">Another link</a>
              </div>
            </div><!-- /.card -->
          </div>
          <!-- /.col-md-6 -->
          <div class="col-lg-6">
            <div class="card">
              <div class="card-header">
                <h5 class="m-0">Featured</h5>
              </div>
              <div class="card-body">
                <h6 class="card-title">Special title treatment</h6>

                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
              </div>
            </div>

            <div class="card card-primary card-outline">
              <div class="card-header">
                <h5 class="m-0">Featured</h5>
              </div>
              <div class="card-body">
                <h6 class="card-title">Special title treatment</h6>

                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
              </div>
            </div>
          </div>
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3">
      <h5>Title</h5>
      <p>Sidebar content</p>
    </div>
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
<%@ include file = "../include/main_footer.jsp" %>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<%@ include file = "../include/plugin_js.jsp" %>
</body>
</html>
