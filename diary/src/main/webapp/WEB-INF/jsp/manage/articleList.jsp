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
	<h2 class="sub-header">列表</h2>
	<ul class="nav nav-pills">
		<li role="presentation" class="active">
			<table>
				<tr>
					<td><a href="#" data-toggle="modal" data-target="#AddArticle">新建</a></td>
					<td><div class="col-lg-6">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="标题">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">搜索</button>
								</span>
							</div>
							<!-- /input-group -->
						</div></td>
				</tr>
			</table>
		</li>
	</ul>
	<div class="table-responsive">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>序号</th>
					<th>标题</th>
					<th>作者</th>
					<th>时间</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>一分钟！习近平2019年两会讲话“干货”全掌握</td>
					<td>ipsum</td>
					<td>2019/3/18</td>
					<td>签批通过</td>
					<td><a>修改</a></td>
				</tr>
				<tr>
					<td>2</td>
					<td>中国宝武钢集团党委书记陈德荣来许村调研</td>
					<td>ipsum</td>
					<td>2019/3/18</td>
					<td>签批通过</td>
					<td><a>修改</a></td>
				</tr>
				<tr>
					<td>3</td>
					<td>【浙报整版点赞】海宁许村高品质打造“融杭第一城”</td>
					<td>ipsum</td>
					<td>2019/3/18</td>
					<td>签批通过</td>
					<td><a>修改</a></td>
				</tr>
				<tr>
					<td>4</td>
					<td>残疾人保险补贴又出新政策</td>
					<td>ipsum</td>
					<td>2019/3/18</td>
					<td>签批通过</td>
					<td><a>修改</a></td>
				</tr>
				<tr>
					<td>5</td>
					<td>道路交通事故红色预警</td>
					<td>ipsum</td>
					<td>2019/3/18</td>
					<td>签批通过</td>
					<td><a>修改</a></td>
				</tr>
				<tr>
					<td>6</td>
					<td>成立全市首个乡贤联谊会</td>
					<td>ipsum</td>
					<td>2019/3/18</td>
					<td>签批通过</td>
					<td><a href="#" data-toggle="modal" data-target="#AddArticle">修改</a></td>
				</tr>
			</tbody>
		</table>
	</div>

	<div class="modal fade" id="AddArticle" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">新建</h4>
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
								<label for="inputTitle" class="col-sm-2 control-label">作者:</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputAuthor"
										placeholder="Author">
								</div>
							</div>
							<div class="form-group">
								<label for="inputTitle" class="col-sm-2 control-label">图片:</label>
								<div class="col-sm-10">
									<input type="file" id="" name="" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputTitle" class="col-sm-2 control-label">处理类型:</label>
								<div class="col-sm-10">
									<select class="form-control">
										<option>查看类</option>
										<option>办理类</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="inputTitle" class="col-sm-2 control-label">审批部门:</label>
								<div class="col-sm-10">
									<select class="form-control">
										<option>技术1部</option>
										<option>技术2部</option>
										<option>技术3部</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="inputDescribe" class="col-sm-2 control-label">创建时间:</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputDescribe">
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
					<button type="button" class="btn btn-primary">保存</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>