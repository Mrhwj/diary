<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>主页面</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="../dashboard/dashboard.css" rel="stylesheet">
<link href="../bootstrap/assets/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">
<link href="../bootstrap/assets/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">
<link href="../css/tooltip-viewport.css" rel="stylesheet">

<script src="../js/jquery.min.js"></script>
<script src="../bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../bootstrap/assets/js/ie-emulation-modes-warning.js"></script>
<script src="../bootstrap/assets/js/vendor/holder.min.js"></script>
<script src="../bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
<script src="../js/tooltip-viewport.js"></script>
<script type="text/javascript">
	function reflash(src) {
		var str = "<div class=\"embed-responsive embed-responsive-4by3\"><iframe class=\"embed-responsive-item\" src=\""+src+"\"></iframe></div>";
		$("#mainDiv").html("").html(str);

		$('[data-toggle="popover"]').popover();
		$('.dropdown-toggle').dropdown()
	}
</script>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">信息管理</a>

		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">User</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle glyphicon glyphicon-user"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"><span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">用户切换</a></li>
						<li><a href="#">密码修改</a></li>
					</ul></li>
			</ul>
			<form class="navbar-form navbar-right">
				<input type="text" class="form-control" placeholder="Search...">
				<!-- <button type="button" class="glyphicon glyphicon-envelope tooltip-viewport-bottom" title="今天下午2点会议室开会"></button> -->
			</form>
		</div>
	</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li class="active"><a>通知公告<span class="sr-only">(current)</span></a></li>
					<li><a href="javascript:reflash('articleList.do')">发布</a></li>
					<li><a href="javascript:reflash('articleList.do')">收取</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="javascript:reflash('inBoxList.do')">收件箱
							<button id="enve" type="button"
								class="glyphicon glyphicon-envelope" data-container="body"
								data-toggle="popover" data-placement="right"
								data-content="今天下午2点会议室开会"></button>
					</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a>日常管理</a></li>
					<li><a href="javascript:reflash('dataView.do')">行程记录</a></li>
					<li><a href="javascript:reflash('inBoxList.do')">日志</a></li>
				</ul>
			</div>
			<div id="mainDiv"
				class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<%-- <jsp:include page="indexPage.jsp"></jsp:include> --%>
				<div class="embed-responsive embed-responsive-4by3">
					<iframe class="embed-responsive-item" src="broadOverView.do"></iframe>
				</div>
			</div>
		</div>
	</div>

</body>
</html>