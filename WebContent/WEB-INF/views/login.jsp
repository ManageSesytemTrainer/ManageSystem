<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"
	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${path}/resource/css/login.css">

<!--以下为使用bootstrap必须引入的三项-->
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type="text/javascript" src="${path}/resource/js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script type="text/javascript" src="${path}/resource/js/bootstrap.min.js"></script>


<title>系统管理员登录</title>

</style>
</head>
<body>
	<div class="box box-element ui-draggable">

		<div class="view">
			<div class="page-header">
				<h1 contenteditable="true" class="head1">
					登录页 <small class="small">欢迎登录！</small>
				</h1>
			</div>
		</div>
	</div>

	<div class="divid">
		<div class="login_div1">
			<ul class="nav nav-tabs" id="menu">
				<li class="active"><a href="#panel-1" data-toggle="tab"
					contenteditable="true">用户登录</a></li>
				<li class=""><a href="#panel-2" data-toggle="tab"
					contenteditable="true">系统管理员登录</a></li>
			</ul>



			<div class="tab-content">
				<div class="tab-pane active" id="panel-1">
					<form class="form-horizontal">
						<fieldset>
							<div class="control-group">

								<div class="controls">
									<label class="control-label">账户名 </label> <input
										class="input-xlarge" type="text" placeholder="用户名">
								</div>
							</div>
							<div class="middle1"></div>

							<div class="control-group">

								<div class="controls">
									<label class="control-label">密 码 </label> <input
										class="input-xlarge" type="password" placeholder="密码">
								</div>

							</div>

							<div class="middle1"></div>

							<div class="control-group">
								<div class="controls">
									<button class="btn btn-success">登录</button>
								</div>
							</div>
						</fieldset>
					</form>
				</div>


				<div class="tab-pane" id="panel-2">
					<form class="form-horizontal">
						<fieldset>
							<div class="control-group">

								<div class="controls">
									<label class="control-label">账户名 </label> <input
										class="input-xlarge" type="text" placeholder="管理员登录账户名">
								</div>
							</div>
							<div class="middle1"></div>

							<div class="control-group">

								<div class="controls">
									<label class="control-label">密 码 </label> <input
										class="input-xlarge" type="password" placeholder="管理员登录密码">
								</div>

							</div>

							<div class="middle1"></div>

							<div class="control-group">
								<div class="controls">
									<button class="btn btn-success">登录</button>
								</div>
							</div>
						</fieldset>
					</form>

				</div>
			</div>

		</div>

	</div>
</body>
</html>