<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>日志主页面</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/offcanvas.css" rel="stylesheet">

<script src="../js/jquery.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../js/offcanvas.js"></script>
<script type="text/javascript">
$(function(){
	$("#submit").bind("click",function(){
		var title = $("#inputTitle").val();
		var describe = $("#inputDescribe").val();
		var memo = $("#memo").val();
		var userName = $("#userName").val();
		$.post("saveDiary.do",{
			title:title,
			describe:describe,
			memo:memo,
			userName:userName
		},function(data){
			if(data.Success == 1){
				alert("保存成功");
				window.location.href = "mainView.do?userName=${userName}";
			}else{
				alert("保存失败")
			}
		});
	});
	
})
</script>
</head>
<body>

	<!-- Static navbar -->
	<nav class="navbar navbar-fixed-top navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">My diary</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="#">Home</a></li>
				<li class="active"><a href="#about">Write</a></li>
				<li><a href="#contact">Read</a></li>
			</ul>
		</div>
		<!-- /.nav-collapse -->
	</div>
	<!-- /.container --> </nav>
	<!-- /.navbar -->


	<div class="container">

		<!-- Main component for a primary marketing message or call to action -->
		<div class="jumbotron">
			<form class="form-horizontal">
			<input type="hidden" id="userName" value="${userName }"> 
			 <div class="form-group">
				<label for="inputTitle" class="col-sm-2 control-label">Title:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="inputTitle" placeholder="Title">
    			</div>
    		 </div>
    		 <div class="form-group">
				<label for="inputDescribe" class="col-sm-2 control-label">Describe:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="inputDescribe" placeholder="Describe">
    			</div>
    		 </div>
    		 <div class="form-group">
				<label for="inputMemo" class="col-sm-2 control-label">Content:</label>
    			<div class="col-sm-10">
      				<textarea class="form-control" id="memo" rows="25"></textarea>
    			</div>
    		 </div>
    		 <div class="form-group">
    			<div class="col-sm-offset-2 col-sm-10">
      				<button type="button" id="submit" class="btn btn-success">Save</button>
    			</div>
  			</div>
			</form>
		</div>

	</div>
	<!-- /container -->

</body>
</html>