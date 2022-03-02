<%@ page contentType="text/html; charset=UTF-8" language="java" %> 
<!DOCTYPE html> 
<html> 
<%@ include file="../include/head.jsp" %> 
<body class="hold-transition login-page"> 
<div class="login-box"> 
<div class="login-logo"> 
<!-- 
<a href="${path}/"><b>OpenSource Solution</b> Team</a> 
 -->
</div> 
<!-- /.login-logo --> 
<div class="card"> 
<div class="card-body login-card-body"> 
<p class="login-box-msg"><b>OpenSource Solution</b> Team</p> 
<form action="${path}/user/loginPost" method="post"> 
<div class="input-group mb-3"> 
<input type="text" name="userId" class="form-control" placeholder="아아디"> 
<div class="input-group-append"> 
<div class="input-group-text"> 
<span class="fas fa-exclamation"></span> 
</div>
</div> 
</div> 
<div class="input-group mb-3"> 
<input type="password" name="userPw" class="form-control" placeholder="비밀번호"> 
<div class="input-group-append"> 
<div class="input-group-text"> 
<span class="fas fa-lock"></span> 
</div> 
</div> 
</div> 
<div class="row"> 
<div class="col-8"> 
<div class="icheck-primary"> 
<input type="checkbox" id="remember"> 
<label for="remember"> 나를 기억해 </label> 
</div> 
</div> 
<!-- /.col --> 
<div class="col-4"> 
<button type="submit" class="btn btn-primary btn-block">가 입</button> 
</div> 
<!-- /.col --> 
</div> 
</form> 
<p class="mb-1"> 
<a href="#">패스워드를 잃어 버렸니?</a> </p> 
<p class="mb-0"> 
<a href="${path}/user/register" class="text-center">회원가입</a> 
</p> 
</div> 
<!-- /.login-card-body --> 
</div> 
<!-- /.login-box-body --> 
</div> 
<!-- /.login-box --> 
<%@ include file="../include/plugin_js.jsp" %> 
<script> 
var msg = "${msg}"; 
	if (msg === "REGISTERED") { 
		alert("회원가입이 완료되었습니다. 로그인해주세요~"); 
	} else if (msg == "FAILURE") { 
		alert("아이디와 비밀번호를 확인해주세요."); 
	} 
	$(function () { 
	$('input').iCheck({ 
		checkboxClass: 'icheckbox_square-blue', radioClass: 'iradio_square-blue', increaseArea: '20%' // optional 
		}); 
	}); 
</script> 
</body> 
</html>