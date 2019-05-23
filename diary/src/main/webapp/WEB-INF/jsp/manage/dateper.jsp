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
<link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

<script src="../js/jquery.min.js"></script>
<script src="../bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../bootstrap/assets/js/ie-emulation-modes-warning.js"></script>
<script src="../bootstrap/assets/js/vendor/holder.min.js"></script>
<script src="../bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="box-body no-padding">

		<table id="ctl00_cphMain_Calendar1" class="table table-bordered" cellspacing="0" cellpadding="2"
			title="日历" border="0"
			style="color: #404040; border-width: 0px; font-family: Arial; font-size: 8pt; height: 240px; width: 100%; border-collapse: collapse;">

			<tbody>
				<tr>
					<td colspan="7"
						style=" border-color: Silver;"><table
							class="cal_title" cellspacing="0" border="0"
							style="color: black; font-family: Arial; font-size: 9pt; font-weight: bold; width: 100%; border-collapse: collapse;">

							<tbody>
								<tr>
									<td
										style="color: black; font-size: 10pt; font-weight: bold; width: 15%;"><a
										href="javascript:__doPostBack('ctl00$cphMain$Calendar1','V6665')"
										style="color: black" title="转到上一个月">&lt;</a></td>
									<td style="width: 70%;" align="center">2018年5月</td>
									<td
										style="color: black; font-size: 10pt; font-weight: bold; width: 15%;"><a
										href="javascript:__doPostBack('ctl00$cphMain$Calendar1','V6726')"
										style="color: black" title="转到下一个月">&gt;</a></td>
								</tr>

							</tbody>
						</table></td>
				</tr>
				<tr>
					<th class="cal_header" abbr="星期日" scope="col"
						style="color: black;  border-color: Silver; font-weight: bold; height: 20px;">日</th>
					<th class="cal_header" abbr="星期一" scope="col"
						style="color: black;  border-color: Silver; font-weight: bold; height: 20px;">一</th>
					<th class="cal_header" abbr="星期二" scope="col"
						style="color: black;  border-color: Silver; font-weight: bold; height: 20px;">二</th>
					<th class="cal_header" abbr="星期三" scope="col"
						style="color: black;  border-color: Silver;font-weight: bold; height: 20px;">三</th>
					<th class="cal_header" abbr="星期四" scope="col"
						style="color: black; border-color: Silver;  font-weight: bold; height: 20px;">四</th>
					<th class="cal_header" abbr="星期五" scope="col"
						style="color: black;  border-color: Silver; font-weight: bold; height: 20px;">五</th>
					<th class="cal_header" abbr="星期六" scope="col"
						style="color: black; border-color: Silver; font-weight: bold; height: 20px;">六</th>
				</tr>
				<tr>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6693')"
						style="color: black" title="4月29日">29</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6694')"
						style="color: black" title="4月30日">30</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6695')" data-toggle="modal" data-target="#Send"
						style="color: black" title="今天嘉兴会议">1</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6696')"
						style="color: black" title="5月2日">2</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6697')"
						style="color: black" title="5月3日">3</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6698')"
						style="color: black" title="5月4日">4</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6699')"
						style="color: black" title="5月5日">5</a></td>
				</tr>
				<tr>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6700')"
						style="color: black" title="5月6日">6</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6701')"
						style="color: black" title="5月7日">7</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6702')"
						style="color: black" title="5月8日">8</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6703')"
						style="color: black" title="5月9日">9</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6704')"
						style="color: black" title="5月10日">10</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6705')"
						style="color: black" title="5月11日">11</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6706')"
						style="color: black" title="5月12日">12</a></td>
				</tr>
				<tr>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6707')"
						style="color: black" title="5月13日">13</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6708')"
						style="color: black" title="5月14日">14</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6709')"
						style="color: black" title="5月15日">15</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6710')"
						style="color: black" title="5月16日">16</a><span><a
							href="../Calendar/Month.aspx?active=52,55"
							style="position: absolute; right: 5px; top: 0; color: #DD4B39;"><i
								class="fa fa-flag"></i></a></span></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6711')"
						style="color: black" title="5月17日">17</a><span><a
							href="../Calendar/Month.aspx?active=52,55"
							style="position: absolute; right: 5px; top: 0; color: #DD4B39;"><i
								class="fa fa-flag"></i></a></span></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6712')"
						style="color: black" title="5月18日">18</a><span><a
							href="../Calendar/Month.aspx?active=52,55"
							style="position: absolute; right: 5px; top: 0; color: #DD4B39;"><i
								class="fa fa-flag"></i></a></span></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6713')"
						style="color: black" title="5月19日">19</a></td>
				</tr>
				<tr>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6714')"
						style="color: black" title="5月20日">20</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6715')"
						style="color: black" title="5月21日">21</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6716')"
						style="color: black" title="5月22日">22</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6717')"
						style="color: black" title="5月23日">23</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6718')"
						style="color: black" title="5月24日">24</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6719')"
						style="color: black" title="5月25日">25</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6720')"
						style="color: black" title="5月26日">26</a></td>
				</tr>
				<tr>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6721')"
						style="color: black" title="5月27日">27</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6722')"
						style="color: black" title="5月28日">28</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6723')"
						style="color: black" title="5月29日">29</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6724')"
						style="color: black" title="5月30日">30</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6725')"
						style="color: black" title="5月31日">31</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6726')"
						style="color: black" title="6月1日">1</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6727')"
						style="color: black" title="6月2日">2</a></td>
				</tr>
				<tr>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6728')"
						style="color: black" title="6月3日">3</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6729')"
						style="color: black" title="6月4日">4</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6730')"
						style="color: black" title="6月5日">5</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6731')"
						style="color: black" title="6月6日">6</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6732')"
						style="color: black" title="6月7日">7</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6733')"
						style="color: black" title="6月8日">8</a></td>
					<td class="cal_day" valign="middle"
						style="color: black;  border-color: Silver; font-size: 10pt; width: 14%;"><a
						href="javascript:__doPostBack('ctl00$cphMain$Calendar1','6734')"
						style="color: black" title="6月9日">9</a></td>
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
					<h4 class="modal-title" id="myModalLabel">添加</h4>
				</div>
				<div class="modal-body">
					<div class="jumbotron">
						<form class="form-horizontal">
							<input type="hidden" id="userName" value="">
							<div class="form-group">
								<label for="inputTitle" class="col-sm-2 control-label">人员:</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputTitle"
										placeholder="">
								</div>
							</div>

							<div class="form-group">
								<label for="inputTitle" class="col-sm-2 control-label">时间:</label>
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
					<button type="button" class="btn btn-primary">保存</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>