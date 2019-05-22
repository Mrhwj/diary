<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>我的日记管理</title>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../bootstrap/jquery/jquery-ui.min.css">
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
<link href="../css/signin.css" rel="stylesheet">
<script type="text/javascript">
$(function(){
	$("#submit").bind('click',
			function(){
		var address = $("#inputEmail").val();
		var password = $("#inputPassword").val();
		$.post("login.do",{address:address,password:password},function(data){
			if(data.Success==1){
				window.location.href = "broadView.do?userName="+data.Message;
			}else{
				alert("登入失败");
			}
		});
	});
});
</script>
</head>
<body>

    <div class="container">

      <form class="form-signin">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="button" id="submit">Sign in</button>
      </form>

    </div> <!-- /container -->

  </body>
</html>