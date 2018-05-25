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

</script>
</head>
<body>
    <nav class="navbar navbar-fixed-top navbar-inverse">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">My diary</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="writeView.do?userName=${userName }">Write</a></li>
            <li><a href="#contact">Read</a></li>
          </ul>
        </div><!-- /.nav-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->

    <div class="container">

      <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          <div class="jumbotron">
            <h1>Hello! "${userName}"</h1>
            <p>${time }</p>
          </div>
          <div class="row">
            <c:forEach items="${list }" var="dm">
            	<div class="col-xs-6 col-lg-4">
              		<h2>${dm.title }</h2>
              		<p>${dm.describe }</p>
              		<p><a class="btn btn-default" href="openText.do?path=${dm.path }" target="_blank" role="button">View details &raquo;</a></p>
            	</div>
            </c:forEach>
          </div><!--/row-->
        </div><!--/.col-xs-12.col-sm-9-->

        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
          <div class="list-group">
            <a href="#" target="_blank" class="list-group-item">Link</a>
            <a href="#" target="_blank" class="list-group-item">Link</a>
            <a href="#" target="_blank" class="list-group-item">Link</a>
            <a href="#" target="_blank" class="list-group-item">Link</a>
            <a href="#" target="_blank" class="list-group-item">Link</a>
            <a href="#" target="_blank" class="list-group-item">Link</a>
            <a href="#" target="_blank" class="list-group-item">Link</a>
            <a href="#" target="_blank" class="list-group-item">Link</a>
            <a href="#" target="_blank" class="list-group-item">Link</a>
            <a href="#" target="_blank" class="list-group-item">Link</a>
          </div>
        </div><!--/.sidebar-offcanvas-->
      </div><!--/row-->

      <hr>

      <footer>
        <p>&copy; 2018 hwj</p>
      </footer>

    </div><!--/.container-->



  </body>
</html>