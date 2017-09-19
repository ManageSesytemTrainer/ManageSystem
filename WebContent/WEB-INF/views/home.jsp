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
<script type="text/javascript"
	src="${path}/resource/js/departmentAjax.js"></script>
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
							<table id="tableUser" style="margin: 0 auto;padding:0;">
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
										<th data-options="field:'department.id',width:160,align:'right'">所在部门</th>
										<th data-options="field:'role.id',width:160,align:'right'">职务</th>
										<th data-options="field:'departmentName',width:160,align:'center'">所在部门名称</th>
										<th
											data-options="field:'do',width:60,align:'center',formatter:formatfunc">操作</th>
									</tr>
								</thead>
							</table>
						</div>
						<div id="tex5">
							<!-- <div style="float: right;">
								<button type="button" class="btn btn-primary btn-lg"
									data-toggle="modal">添加</button>
							</div>
							<table class="table table-bordered" id="tab5">
								<thead>
									<tr>
										<td>编号</td>
										<td>部门名称</td>
										<td>联系电话</td>
										<td>部门状态</td>
										<td>操作</td>
									</tr>
								</thead>
							</table> -->
							<table id="tableDe" style="margin: 0 auto;min-height: 360px;padding:0;">
								<thead>
									<tr>
										<th data-options="field:'check'"></th>
										<th data-options="field:'id',width:40">编号</th>
										<th data-options="field:'departmentName',width:100">部门名称</th>
										<th data-options="field:'phone',width:160,align:'right'">联系电话</th>
										<th data-options="field:'state',width:160,align:'center'">状态</th>
										<th
											data-options="field:'do',width:60,align:'center',formatter:formatfunc">操作</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class=" col-md-1" id="tui">
			<a href="${path}/login" style="text-align: center; color: #69a6ff">
				退出<span class="glyphicon glyphicon-log-out"></span>
			</a>
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
		/* $(function() {
			$("ul li:last-child").click(
							function() {
								$.ajax({
											type : 'POST',
											url : '${path}/departments',
											dataType : "json",
											success : function(data) {
												var $table = $("#tab5");
												for (var i = 0; i < data.total; i++) {
													var $tr = $('<tr></tr>');
													var $td1 = $('<td>'
															+ data.rows[i].id
															+ '</td>');
													var $td2 = $('<td>'
															+ data.rows[i].departmentName
															+ '</td>');
													var $td3 = $('<td>'
															+ data.rows[i].phone
															+ '</td>');
													var $td4 = $('<td>'
															+ data.rows[i].state
															+ '</td>');
													var $ap = $('<td><input type="button" class="btn btn-success btn-sm" contenteditable="true" onclick="modifyDe('
															+ data.rows[i]
															+ ')" value="修改"><input  type="button" class="btn btn-danger btn-sm" contenteditable="true" onclick="removeDe('
															+ i
															+ ')" value="删除"></td>');

													$tr.append($td1).append(
															$td2).append($td3)
															.append($td4)
															.append($ap);
													$table.append($tr);
												}
											}
										});
							});
			//部门信息的修改功能
			function modifyDe(data) {
				$("#user").append(data.departmentName);
				$("#phone").append(data.phone);
				$("#state").append(data.state);
			}
			//    部门信息的删除功能
			function removeDe(i) {
				$.ajax({
					url : '${path}/deleteDe',
					data : {
						id : i
					},
					type : 'post',
					success : function(data) {
						if (data == "success") {
							alert("删除成功！");
							var $romovetr = $("#tab5>tr")[i];
							$removetr.romove();
						} else {
							alert("该部门中仍存在员工，请将该部分员工处理完毕后再删除！");
						}
					},
					error : function(data) {
						alert("出错了：" + data);
					}
				})

			}

		}); */
		//用户管理
		$("ul li").eq(4).click(
			function(){
				$('#tableUser').datagrid({
					fitColumns : true,
					width : 820,
					method : 'post',
					loadMsg : '正在加载数据中......',
					pagination:true,
					toolbar : [
							{
								text : '增加',
								iconCls : 'icon-add',
								handler : function() {
									var userId = -1;
									window.location.assign('${path}/usermodify?id='+ userId);
								}
							},
							'-',
							{
								text : '刷新',
								iconCls : 'icon-reload',
								handler : function() {
									$('#tableUser').datagrid('reload');
								}
							} ],
					url : '${path}/users',
					singleSelect : true,

				});
			}
		);
		function formatfunc(value, row, index) {
			var e = '<a href="#"  onclick="modifyDe('
					+ index
					+ ')"><img src="${path}/resource/img/pencil.png" style="margin-left: 12px;vertical-align:middle;" title="编辑"/></a> ';
			var d = '<a href="#"  onclick="deleteDe('
					+ index
					+ ')"><img src="${path}/resource/img/edit_remove.png" style="margin-left: 12px;vertical-align:middle;" title="删除"/></a>';
			return e + d;
		}

		function modifyDe(index) {
			$('#tableUser').datagrid('selectRow', index);
			var row = $('#tableUser').datagrid('getSelected');
			window.location = "${path}/usermodify?id=" + row.id;
		}
		function deleteDe(index) {
			$('#tableUser').datagrid('selectRow', index);
			var row = $('#tableUser').datagrid('getSelected');
			$.messager.confirm('Confirm', '确认删除' + row.title + '?',
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
										$.messager.alert('提示','删除失败,请稍后重试','info')
									}
								},
								error : function() {
									$.messager.alert('提示', 'Something Wrong','error');
								}
							});
						}
					});
		}
		//部门管理
		$("ul li:last-child").click(
						function() {
							$('#tableDe').datagrid({
												fitColumns : true,
												width : 820,
												method : 'post',
												loadMsg : '正在加载数据中......',
												pagination:true,
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

		function formatfunc(value, row, index) {
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
			window.location = "${path}/departmentmodify?departmentId=" + row.id;
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
	</script>
</body>
</html>
