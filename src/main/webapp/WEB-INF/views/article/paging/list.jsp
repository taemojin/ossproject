<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<%@ include file = "../../include/head.jsp" %>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
<%@ include file = "../../include/main_header.jsp" %>

  <!-- Main Sidebar Container -->
<%@ include file = "../../include/left_column.jsp" %>

<script>
var result = "${msg}";
if (result == "regSuccess") {
    alert("게시글 등록이 완료되었습니다.");
} else if (result == "modSuccess") {
    alert("게시글 수정이 완료되었습니다.");
} else if (result == "delSuccess") {
    alert("게시글 삭제가 완료되었습니다.");
}
</script>
<script>
$(document).ready(function () {
	var result = "${msg}";
	if (result == "regSuccess") {
	    alert("게시글 등록이 완료되었습니다.");
	} else if (result == "modSuccess") {
	    alert("게시글 수정이 완료되었습니다.");
	} else if (result == "delSuccess") {
	    alert("게시글 삭제가 완료되었습니다.");
	}
	
    $("#searchBtn").on("click", function (event) {
        self.location =
            "${path}/article/paging/search/list${pageMaker.makeQuery(1)}"
            + "&searchType=" + $("select option:selected").val()
            + "&keyword=" + encodeURIComponent($("#keywordInput").val());
    });
});
</script>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Starter Page</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Starter Page</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
<!-- Main content -->
<div class="content">
  <div class="container-fluid">
    <div class="col-lg-12">
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">게시글 목록</h3>
        </div>
        <div class="card-body table-responsive p-0">
          <table class="table table-hover">
            <thead>
              <tr>
                <th style="width: 30px">#</th>
                <th>제목</th>
                <th style="width: 100px">작성자</th>
                <th style="width: 150px">작성시간</th>
                <th style="width: 60px">조회</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${articles}" var="article">
                <tr>
                  <td>${article.article_no}</td>
                  <td><a
                  href="${path}/article/read${pageMaker.makeQuery(pageMaker.criteria.page)}&article_no=${article.article_no}">${article.title}</a></td>
                  <td>${article.writer}</td>
                  <td><fmt:formatDate value="${article.regDate}"
                  pattern="yyyy-MM-dd" /></td>
                  <td><span class="badge bg-success">${article.viewCnt}</span></td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
        <div class="card-footer">
          <div class="float-right">
            <button type="button" class="btn btn-success btn-flat"
            id="writeBtn">
            	<i class="fa fa-pencil"></i> 글쓰기
            </button>
          </div>
        </div>
        <div class="card-footer">
          <nav aria-label="Contacts Page Navigation">
            <ul class="pagination justify-content-center m-0">
              <c:if test="${pageMaker.prev}">
                <li class="page-item"><a class="page-link"
                href="${path}/article/listPaging${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a></li>
              </c:if>
              <c:forEach begin="${pageMaker.startPage}"
                end="${pageMaker.endPage}" var="idx">
                <li class="page-item"
                	<c:out value="${pageMaker.criteria.page == idx ? 'class=active' : ''}"/>>
                	<a class="page-link" href="${path}/article/listPaging${pageMaker.makeQuery(idx)}">${idx}</a>
                </li>
              </c:forEach>
              <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
              	<li class="page-item"><a class="page-link"
              		href="${path}/article/listPaging?${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a></li>
              </c:if>
            </ul>
          </nav>
        </div>
        <div class="card-footer">
    <div class="text-center">
        <ul class="pagination">
            <c:if test="${pageMaker.prev}">
                <li><a href="${path}/article/paging/search/list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
            </c:if>
            <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                <li <c:out value="${pageMaker.criteria.page == idx ? 'class=active' : ''}"/>>
                    <a href="${path}/article/paging/search/list${pageMaker.makeSearch(idx)}">${idx}</a>
                </li>
            </c:forEach>
            <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                <li><a href="${path}/article/paging/search/list?${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
            </c:if>
        </ul>
    </div>
</div>
<td>
  <a href="${path}/article/paging/search/read${pageMaker.makeSearch(pageMaker.criteria.page)}&articleNo=${article.articleNo}">
    ${article.title}
  </a>
</td>
      </div>
    </div>
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
<%@ include file = "../../include/main_footer.jsp" %>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<%@ include file = "../../include/plugin_js.jsp" %>
  <script type="text/javascript" src="<c:url value='/dist/js/article-read.js'/>"></script>
</body>
</html>
