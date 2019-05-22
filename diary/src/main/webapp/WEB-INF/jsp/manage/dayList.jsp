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

<script src="../js/jquery.min.js"></script>
<script src="../bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../bootstrap/assets/js/ie-emulation-modes-warning.js"></script>
<script src="../bootstrap/assets/js/vendor/holder.min.js"></script>
<script src="../bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<h2 class="sub-header">收件箱</h2>
	<ul class="nav nav-pills">
		<li role="presentation" class="active"><a href="#"
			data-toggle="modal" data-target="#Send">发送</a></li>
	</ul>
	<div class="table-responsive">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>序号</th>
					<th>标题</th>
					<th>发送人</th>
					<th>时间</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>下午开会请准备好</td>
					<td>ipsum</td>
					<td>2019/3/18</td>
				</tr>
				<tr>
					<td>1</td>
					<td>下周末开会</td>
					<td>ipsum</td>
					<td>2019/3/18</td>
				</tr>
			</tbody>
		</table>
	</div>

	<div class="modal fade" id="Send" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">发送信息</h4>
				</div>
				<div class="modal-body">
					<div class="jumbotron">
						<form class="form-horizontal">
							<input type="hidden" id="userName" value="">
							<div class="form-group">
								<label for="inputTitle" class="col-sm-2 control-label">标题:</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputTitle"
										placeholder="Title">
								</div>
							</div>
							<div class="form-group">
								<label for="inputTitle" class="col-sm-2 control-label">附件:</label>
								<div class="col-sm-10">
									<input type="file" id="" name="" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputTitle" class="col-sm-2 control-label">发送对象:</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputTitle">
								</div>
							</div>
							<div class="form-group">
								<label for="inputMemo" class="col-sm-2 control-label">内容:</label>
								<div class="col-sm-10">
									<textarea class="form-control" id="memo" rows="15"></textarea>
								</div>
							</div>
							
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary">发送</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>