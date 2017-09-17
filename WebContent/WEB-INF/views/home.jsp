<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/13
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"
	scope="request" />
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>外勤系统主界面</title>

<!-- Bootstrap -->
<link href="${path}/resource/css/bootstrap.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<script type="text/javascript"
	src="${path}/resource/js/jquery-1.11.3.js"></script>
<script type="text/javascript"
	src="${path}/resource/js/departmentAjax.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${path}/resource/js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${path}/resource/js/bootstrap.min.js"></script>
<script>
	$(function() {
		$("#menu li").click(function() {
			$(this).addClass("active").siblings().removeClass("active");
			var index = $(this).index();
			$(".tex-box>div").eq(index).show().siblings().hide();
		})
		$("#list-menu a").click(function() {
			$(this).addClass("active").siblings().removeClass("active");
		})
	})
</script>
<style>
.tex-box>div {
	display: none;
}

.tex-box>div:first-child {
	display: block;
}
</style>
</head>
<body>
	<div class="row">
		<div class=" col-md-12 ">
			<div class="page-header">
				<h1 style="color: #69a6ff; margin-left: 50px;">邮政分公司外勤管理系统</h1>
				<h4 style="color: #69a6ff; float: right; margin-right: 20px;">欢迎您...</h4>
			</div>
		</div>
	</div>

	<!-- 主体-->
	<div class="row" style="height: 763px">
		<div class=" col-md-1"
			style="background-color: #69a6ff; height: inherit"></div>
		<div class=" col-md-10">
			<div class="row">
				<div class=" col-md-12">
					<!--标签-->
					<ul class="nav nav-pills" id="menu">
						<li role="presentation" class="active"><a href="#">首页</a></li>
						<li role="presentation"><a href="#">走访计划</a></li>
						<li role="presentation"><a href="#">走访信息</a></li>
						<li role="presentation"><a href="#">统计信息</a></li>
						<li role="presentation"><a href="#">用户信息</a></li>
						<li role="presentation"><a href="#">部门信息</a></li>
					</ul>
				</div>

			</div>

			<div class="row">
				
				<div class="col-md-12">
					<!--标签容器-->
					<div class="tex-box">
						<div class="list-group" id="list-menu">
							<a href="#" class="list-group-item active"> Cras justo odio </a>
							<a href="#" class="list-group-item">Dapibus ac facilisis in</a> <a
								href="#" class="list-group-item">Morbi leo risus</a> <a href="#"
								class="list-group-item">Porta ac consectetur ac</a> <a href="#"
								class="list-group-item">Vestibulum at eros</a> <a href="#"
								class="list-group-item">Vestibulum at eros</a> <a href="#"
								class="list-group-item">Vestibulum at eros</a> <a href="#"
								class="list-group-item">Vestibulum at eros</a> <a href="#"
								class="list-group-item">Vestibulum at eros</a> <a href="#"
								class="list-group-item">Vestibulum at eros</a> <a href="#"
								class="list-group-item">Vestibulum at eros</a>
						</div>
						<div id="tex1">
						<div style="float: right;">
					<button type="button" class="btn btn-primary btn-lg"
						data-toggle="modal" data-target="#">添加</button>
				</div>
							<table class="table table-bordered">
								<thead>
									<tr>
										<td>编号</td>
										<td>计划名称</td>
										<td>开始时间</td>
										<td>结束时间</td>
										<td>网店类型</td>
										<td>编制人姓名</td>
										<td>所属部门</td>
										<td>职务</td>
										<td>操作</td>
									</tr>
								</thead>

							</table>
						</div>
						<div id="tex2">
							<div style="float: right;">
					<button type="button" class="btn btn-primary btn-lg"
						data-toggle="modal" data-target="#">添加</button>
				</div>
							<table class="table table-bordered">
								<thead>
									<tr>
										<td>编号</td>
										<td>日期</td>
										<td>时间</td>
										<td>地点</td>
										<td>走访人姓名</td>
										<td>走访人所属部门</td>
										<td>所属角色</td>
										<td>销客账号</td>
										<td>走访内容</td>
										<td>走访人</td>
										<td>所属部门</td>
										<td>职务</td>
									</tr>
								</thead>
							</table>
						</div>
						<div id="=tex3">
						<div style="float: right;">
					<button type="button" class="btn btn-primary btn-lg"
						data-toggle="modal" data-target="#">添加</button>
				</div>
							<table class="table table-striped">
								<thead>
									<tr>
										<td></td>
									</tr>
									<tr>
										<td></td>
									</tr>
									<tr>
										<td></td>
									</tr>
								</thead>

							</table>
						</div>
						<div id="tex4">
						<div style="float: right;">
					<button type="button" class="btn btn-primary btn-lg"
						data-toggle="modal" data-target="#myModal">添加</button>
				</div>
							<table class="table table-bordered">
								<thead>
									<tr>
										<td>工号</td>
										<td>姓名</td>
										<td>性别</td>
										<td>生日</td>
										<td>电话</td>
										<td>手机</td>
										<td>邮箱</td>
										<td>状态</td>
										<td>所属部门</td>
										<td>所属角色</td>
										<td>部门名称</td>
									</tr>

								</thead>
							</table>
						</div>
						<div id="tex5">
						<div style="float: right;">
					<button type="button" class="btn btn-primary btn-lg"
						data-toggle="modal" data-target="#">添加</button>
				</div>
							<table class="table table-bordered" id="tab5">
								<thead>
									<tr>
										<td>编号</td>
										<td>部门名称</td>
										<td>联系电话</td>
										<td>部门状态</td>
									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class=" col-md-1" id="tui">
			<a href="${path}/login"><p style="text-align: center; color: #69a6ff">
					退出<span class="glyphicon glyphicon-log-out"></span>
				</p> </a>
		</div>
	</div>


	<!-- Modal -->
	<!--文件上传弹出框-->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">用户信息上传</h4>
				</div>
				<div class="modal-body">
					<form enctype="multipart/form-data" action="" method="post">
						<input type="file" id="choosefile" /> <input type="file" id="f"
							style="display: none;" /> <input type="submit" value="上传文件"
							id="submitBtn" />
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Columns are always 50% wide, on mobile and desktop -->



</body>
</html>
