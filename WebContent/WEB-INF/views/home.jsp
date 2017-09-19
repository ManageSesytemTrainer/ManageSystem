<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/13
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"
	scope="request" />
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>外勤系统主界面</title>



<link rel="stylesheet" type="text/css"
	href="${path}/resource/js/jquery-easyui-1.5.1/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="${path}/resource/js/jquery-easyui-1.5.1/themes/icon.css" />
<link rel="stylesheet" type="text/css"
	href="${path}/resource/js/jquery-easyui-1.5.1/demo/demo.css" />
<!-- Bootstrap -->
<link href="${path}/resource/css/bootstrap.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<script type="text/javascript"
	src="${path}/resource/js/jquery-1.11.3.js"></script>
<%-- <script type="text/javascript"
	src="${path}/resource/js/departmentAjax.js"></script> --%>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${path}/resource/js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${path}/resource/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${path}/resource/js/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
</head>
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
		<div class=" col-md-1" id="tui">
			<a href="${path}/login" style="text-align: center; color: #69a6ff">
				退出<span class="glyphicon glyphicon-log-out"></span>
			</a>
		</div>
	</div>

	<!-- 主体-->
	<div class="row" style="height: 763px">
		<div class=" col-md-1"
			style="background-color: #69a6ff; height: inherit"></div>
		<div class=" col-md-10">
			<div class="row">
				<div class=" col-md-12" style="padding: 0">
					<!--标签-->
					<ul class="nav nav-pills" id="menu">
						<li role="presentation" class="active"><a href="#">首页</a></li>
						<li role="presentation"><a id="dLabel" href="#"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"> 走访计划 <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" aria-labelledby="dLabel">
								<li><a href="#">县公司计划</a></li>
								<li><a href="#">网点计划</a></li>
								<li><a href="#">网点计划明细</a></li>
							</ul></li>
						<li role="presentation"><a href="#">走访信息</a></li>
						<li role="presentation"><a href="#">统计信息</a></li>
						<li role="presentation"><a href="#">用户信息</a></li>
						<li role="presentation"><a href="#">部门信息</a></li>
						<li role="presentation"><a href="#">角色信息</a></li>
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
							<!-- 计划管理-->
							<table id="tablePlan" style="margin: 0 auto; padding: 0;">
								<thead>
									<tr>
										<th data-options="field:'check'"></th>
										<th data-options="field:'id',width:40">编号</th>
										<th data-options="field:'jobNumber',width:100">工号</th>
										<th data-options="field:'name',width:160,align:'right'">姓名</th>
										<th data-options="field:'sex',width:160,align:'right'">性别</th>
										<th data-options="field:'birthday',width:160,align:'right'">生日</th>
										<th data-options="field:'phone',width:160,align:'right'">电话</th>
										<th data-options="field:'mobilePhone',width:160,align:'right'">手机</th>
										<th data-options="field:'email',width:160,align:'right'">邮箱</th>
										<th data-options="field:'state',width:160,align:'right'">状态</th>
										<th
											data-options="field:'department.id',width:160,align:'right'">所在部门</th>
										<th data-options="field:'role.id',width:160,align:'right'">职务</th>
										<th
											data-options="field:'departmentName',width:160,align:'center'">所在部门名称</th>
										<th
											data-options="field:'do',width:60,align:'center',formatter:formatfuncPlan">操作</th>
									</tr>
								</thead>
							</table>
						</div>
						<div id="tex2">
							<!-- 走访数据管理  -->

							<table id="tableVisit"
								style="margin: 0 auto; min-height: 360px; padding: 0;">
								<thead>
									<tr>
										<th data-options="field:'id',width:40">编号</th>
										<th data-options="field:'visitDate',width:100">走访日期</th>
										<th data-options="field:'visitTime',width:100">走访时间</th>
										<th data-options="field:'address',width:100">走访地点</th>
										<th data-options="field:'visitPerson',width:100">走访人姓名</th>
										<th data-options="field:'departmentName',width:100">走访人所属部门</th>
										<th data-options="field:'roleName',width:100">所属角色</th>
										<th data-options="field:'countPerson',width:100">销客账号</th>
										<th data-options="field:'details',width:100">走访内容</th>
										<th
											data-options="field:'do',width:60,align:'center',formatter:formatfuncVisit">操作</th>
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
							<!-- 用户管理 -->
							<table id="tableUser" style="margin: 0 auto; padding: 0;">
								<thead>
									<tr>
										<th data-options="field:'check'"></th>
										<th data-options="field:'id',width:40">编号</th>
										<th data-options="field:'jobNumber',width:100">工号</th>
										<th data-options="field:'name',width:160,align:'right'">姓名</th>
										<th data-options="field:'sex',width:160,align:'right'">性别</th>
										<th data-options="field:'birthday',width:160,align:'right'">生日</th>
										<th data-options="field:'phone',width:160,align:'right'">电话</th>
										<th data-options="field:'mobilePhone',width:160,align:'right'">手机</th>
										<th data-options="field:'email',width:160,align:'right'">邮箱</th>
										<th data-options="field:'state',width:160,align:'right'">状态</th>
										<th
											data-options="field:'department.id',width:160,align:'right'">所在部门</th>
										<th data-options="field:'role.id',width:160,align:'right'">职务</th>
										<th
											data-options="field:'departmentName',width:160,align:'center'">所在部门名称</th>
										<th
											data-options="field:'do',width:60,align:'center',formatter:formatfuncUser">操作</th>
									</tr>
								</thead>
							</table>
						</div>
						<div id="tex5">
							<!-- 部门管理 -->
							<table id="tableDe"
								style="margin: 0 auto; min-height: 360px; padding: 0;">
								<thead>
									<tr>
										<th data-options="field:'check'"></th>
										<th data-options="field:'id',width:40">编号</th>
										<th data-options="field:'departmentName',width:100">部门名称</th>
										<th data-options="field:'phone',width:160,align:'right'">联系电话</th>
										<th data-options="field:'state',width:160,align:'center'">状态</th>
										<th
											data-options="field:'do',width:60,align:'center',formatter:formatfuncDe">操作</th>
									</tr>
								</thead>
							</table>
						</div>
						<div id="tex6">
						<!-- 角色管理 -->
						   <table id="tableRole"
								style="margin: 0 auto; min-height: 360px; padding: 0;">
								<thead>
									<tr>
										<th data-options="field:'check'"></th>
										<th data-options="field:'id',width:40">编号</th>
										<th data-options="field:'roleName',width:100">角色名称</th>
										<th data-options="field:'description',width:160,align:'right'">角色描述</th>
										<th data-options="field:'state',width:160,align:'center'">状态（是否激活）</th>
										<th data-options="field:'roleLimit',width:160,align:'center'">角色权限</th>
										<th data-options="field:'listUser',width:160,align:'center'">包含的用户</th>
										<th
											data-options="field:'do',width:60,align:'center',formatter:formatfuncRole">操作</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>
			</div>
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
					<h4 class="modal-title" id="myModalLabel">走访数据上传</h4>
				</div>
				<div class="modal-body">
					<form enctype="multipart/form-data" action="" method="post">
						<input type="file" id="choosefile"> <input type="file"
							id="f" style="display: none;"> <input type="submit"
							value="上传文件" id="submitBtn" />
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Columns are always 50% wide, on mobile and desktop -->

	<script type="text/javascript">
		//走访计划管理
		$("ul li").eq(1).click(
						function() {
							$('#tablePlan')
									.datagrid(
											{

												fitColumns : true,
												width : 820,
												method : 'post',
												loadMsg : '正在加载数据中......',
												pagination : true,
												toolbar : [
														{
															text : '增加',
															iconCls : 'icon-add',
															handler : function() {
																var userId = -1;
																window.location
																		.assign('${path}/CompanyplanAdd?id='
																				+ userId);
															}
														},
														'-',
														{
															text : '刷新',
															iconCls : 'icon-reload',
															handler : function() {
																$('#tablePlan')
																		.datagrid(
																				'reload');
															}
														} ],
												url : '${path}/',
												singleSelect : true,

											});
						});
		function formatfuncPlan(value, row, index) {
			var e = '<a href="#"  onclick="modifyPlan('
					+ index
					+ ')"><img src="${path}/resource/img/pencil.png" style="margin-left: 12px;vertical-align:middle;" title="编辑"/></a> ';
			var d = '<a href="#"  onclick="deletePlan('
					+ index
					+ ')"><img src="${path}/resource/img/edit_remove.png" style="margin-left: 12px;vertical-align:middle;" title="删除"/></a>';
			return e + d;
		}

		function modifyVisit(index) {
			$('#tablePlan').datagrid('selectRow', index);
			var row = $('#tablePlan').datagrid('getSelected');
			window.location = "${path}/usermodify?id=" + row.id;
		}
		function deleteVisit(index) {
			$('#tablePlan').datagrid('selectRow', index);
			var row = $('#tablePlan').datagrid('getSelected');
			$.messager.confirm('Confirm', '确认删除' + row.title + '?',
					function(r) {
						if (r) {
							$.ajax({
								url : '${path}/deletePlan',
								data : 'id=' + row.id,
								type : 'post',
								timeout : 6000,
								success : function(data) {
									if (data == "success") {
										$('#tablePlan').datagrid('deleteRow',
												index);
										$.messager.alert('提示', '删除成功', 'info');
										$('#tablePlan').datagrid('reload');
									} else {
										$.messager.alert('提示', '删除失败,请稍后重试',
												'info')
									}
								},
								error : function() {
									$.messager.alert('提示', 'Something Wrong',
											'error');
								}
							});
						}
					});
		}
		//走访数据管理
		$("ul li").eq(2).click(function() {
			$('#tableVisit').datagrid({

				fitColumns : true,
				width : 820,
				method : 'post',
				loadMsg : '正在加载数据中......',
				pagination : true,
				toolbar : [ {
					text : '增加',
					iconCls : 'icon-add',
					handler : function() {
						$('#myModal').modal("show");
					}
				}, '-', {
					text : '刷新',
					iconCls : 'icon-reload',
					handler : function() {
						$('#tableVisit').datagrid('reload');
					}
				} ],
				url : '${path}/',
				singleSelect : true,

			});
		});
		function formatfuncVisit(value, row, index) {
			var e = '<a href="#"  onclick="modifyVisit('
					+ index
					+ ')"><img src="${path}/resource/img/pencil.png" style="margin-left: 12px;vertical-align:middle;" title="编辑"/></a> ';
			var d = '<a href="#"  onclick="deleteVisit('
					+ index
					+ ')"><img src="${path}/resource/img/edit_remove.png" style="margin-left: 12px;vertical-align:middle;" title="删除"/></a>';
			return e + d;
		}

		function modifyVisit(index) {//修改走访数据信息
			$('#tableVisit').datagrid('selectRow', index);
			var row = $('#tableUser').datagrid('getSelected');
			window.location = "${path}/usermodify?id=" + row.id;
		}
		function deleteVisit(index) {//删除走访数据信息
			$('#tableVisit').datagrid('selectRow', index);
			var row = $('#tableVisit').datagrid('getSelected');
			$.messager.confirm('Confirm', '确认删除' + row.title + '?',
					function(r) {
						if (r) {
							$.ajax({
								url : '${path}/deleteVisit',
								data : 'id=' + row.id,
								type : 'post',
								timeout : 6000,
								success : function(data) {
									if (data == "success") {
										$('#tableUser').datagrid('deleteRow',
												index);
										$.messager.alert('提示', '删除成功', 'info');
										$('#tableUser').datagrid('reload');
									} else {
										$.messager.alert('提示', '删除失败,请稍后重试',
												'info')
									}
								},
								error : function() {
									$.messager.alert('提示', 'Something Wrong',
											'error');
								}
							});
						}
					});
		}
		//用户管理
		$("ul li")
				.eq(4)
				.click(
						function() {
							$('#tableUser')
									.datagrid(
											{
												fitColumns : true,
												width : 820,
												method : 'post',
												loadMsg : '正在加载数据中......',
												pagination : true,
												toolbar : [
														{
															text : '增加',
															iconCls : 'icon-add',
															handler : function() {
																var userId = -1;
																window.location
																		.assign('${path}/usermodify?id='
																				+ userId);
															}
														},
														'-',
														{
															text : '刷新',
															iconCls : 'icon-reload',
															handler : function() {
																$('#tableUser')
																		.datagrid(
																				'reload');
															}
														} ],
												url : '${path}/users',
												singleSelect : true,

											});
						});
		function formatfuncUser(value, row, index) {
			var e = '<a href="#"  onclick="modifyUser('
					+ index
					+ ')"><img src="${path}/resource/img/pencil.png" style="margin-left: 12px;vertical-align:middle;" title="编辑"/></a> ';
			var d = '<a href="#"  onclick="deleteUser('
					+ index
					+ ')"><img src="${path}/resource/img/edit_remove.png" style="margin-left: 12px;vertical-align:middle;" title="删除"/></a>';
			return e + d;
		}

		function modifyUser(index) {
			$('#tableUser').datagrid('selectRow', index);
			var row = $('#tableUser').datagrid('getSelected');
			window.location = "${path}/usermodify?id=" + row.id;
		}
		function deleteUser(index) {
			$('#tableUser').datagrid('selectRow', index);
			var row = $('#tableUser').datagrid('getSelected');
			$.messager.confirm('Confirm', '确认删除' + row.name + '?',
					function(r) {
						if (r) {
							$.ajax({
								url : '${path}/deleteUser',
								data : 'id=' + row.id,
								type : 'post',
								timeout : 6000,
								success : function(data) {
									if (data == "success") {
										$('#tableUser').datagrid('deleteRow',
												index);
										$.messager.alert('提示', '删除成功', 'info');
										$('#tableUser').datagrid('reload');
									} else {
										$.messager.alert('提示', '删除失败,请稍后重试',
												'info')
									}
								},
								error : function() {
									$.messager.alert('提示', 'Something Wrong',
											'error');
								}
							});
						}
					});
		}
		//部门管理
		$("ul li")
				.eq(5)
				.click(
						function() {
							$('#tableDe')
									.datagrid(
											{
												fitColumns : true,
												width : 820,
												method : 'post',
												loadMsg : '正在加载数据中......',
												pagination : true,
												toolbar : [
														{
															text : '增加',
															iconCls : 'icon-add',
															handler : function() {
																var articleId = -1;
																window.location
																		.assign('${path}/departmentmodify?id='
																				+ articleId);
															}
														},
														'-',
														{
<<<<<<< HEAD
															text : '修改',
															iconCls : 'icon-cut',
															handler : function() {
																var articleId = -2;
																window.location
																		.assign('${path}/departmentAdd?id='
																				+ articleId);
															}
														},
														'-',
														{
=======
>>>>>>> refs/remotes/origin/master
															text : '删除',
															iconCls : 'icon-cut',
															handler : function() {

															}
														},
														'-',
														{
															text : '刷新',
															iconCls : 'icon-reload',
															handler : function() {
																$('#tableDe')
																		.datagrid(
																				'reload');
															}
														} ],
												url : '${path}/departments',
												singleSelect : true,

											})
						});

		function formatfuncDe(value, row, index) {
			var e = '<a href="#"  onclick="modifyDe('
					+ index
					+ ')"><img src="${path}/resource/img/pencil.png" style="margin-left: 12px;vertical-align:middle;" title="编辑"/></a> ';
			var d = '<a href="#"  onclick="deleteDe('
					+ index
					+ ')"><img src="${path}/resource/img/edit_remove.png" style="margin-left: 12px;vertical-align:middle;" title="删除"/></a>';
			return e + d;
		}

		function modifyDe(index) {
			$('#tableDe').datagrid('selectRow', index);
			var row = $('#tableDe').datagrid('getSelected');
			window.location = "${path}/departmentmodify?id=" + row.id;
		}
		function deleteDe(index) {
			$('#tableDe').datagrid('selectRow', index);
			var row = $('#tableDe').datagrid('getSelected');
			$.messager.confirm('Confirm', '确认删除' + row.departmentName + '?',
					function(r) {
						if (r) {
							$.ajax({
								url : '${path}/deleteDe',
								data : 'id=' + row.id,
								type : 'post',
								timeout : 6000,
								success : function(data) {
									if (data == "success") {
										$('#tableDe').datagrid('deleteRow',
												index);
										$.messager.alert('提示', '删除成功', 'info');
										$('#tableDe').datagrid('reload');
									} else {
										$.messager.alert('提示',
												'删除失败,可能该部门中仍存在员工！请稍后重试',
												'info')
									}
								},
								error : function() {
									$.messager.alert('提示', 'Something Wrong',
											'error');
								}
							});
						}
					});
		}
		//角色管理
		$("ul li")
				.eq(6)
				.click(
						function() {
							$('#tableRole')
									.datagrid(
											{
												fitColumns : true,
												width : 820,
												method : 'post',
												loadMsg : '正在加载数据中......',
												pagination : true,
												toolbar : [
														{
															text : '增加',
															iconCls : 'icon-add',
															handler : function() {
																var roleId = -1;
																window.location
																		.assign('${path}/departmentmodify?id='
																				+ roleId);
															}
														},
														{
															text : '刷新',
															iconCls : 'icon-reload',
															handler : function() {
																$('#tableRole').datagrid('reload');
															}
														} ],
												url : '${path}/',
												singleSelect : true,

											})
						});

		function formatfuncRole(value, row, index) {
			var e = '<a href="#"  onclick="modifyRole('
					+ index
					+ ')"><img src="${path}/resource/img/pencil.png" style="margin-left: 12px;vertical-align:middle;" title="编辑"/></a> ';
			var d = '<a href="#"  onclick="deleteRole('
					+ index
					+ ')"><img src="${path}/resource/img/edit_remove.png" style="margin-left: 12px;vertical-align:middle;" title="删除"/></a>';
			return e + d;
		}

		function modifyRole(index) {
			$('#tableRole').datagrid('selectRow', index);
			var row = $('#tableRole').datagrid('getSelected');
			window.location = "${path}/departmentmodify?id=" + row.id;
		}
		function deleteRole(index) {
			$('#tableRole').datagrid('selectRow', index);
			var row = $('#tableRole').datagrid('getSelected');
			$.messager.confirm('Confirm', '确认删除' + row.roleName + '?',
					function(r) {
						if (r) {
							$.ajax({
								url : '${path}/deleteDe',
								data : 'id=' + row.id,
								type : 'post',
								timeout : 6000,
								success : function(data) {
									if (data == "success") {
										$('#tableRole').datagrid('deleteRow',
												index);
										$.messager.alert('提示', '删除成功', 'info');
										$('#tableRole').datagrid('reload');
									} else {
										$.messager.alert('提示',
												'删除失败,该角色暂时无法删除！请稍后重试',
												'info')
									}
								},
								error : function() {
									$.messager.alert('提示', 'Something Wrong','error');
								}
							});
						}
					});
		}
	</script>
</body>
</html>
