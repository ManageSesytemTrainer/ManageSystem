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
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${path}/resource/js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${path}/resource/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${path}/resource/js/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${path}/resource/js/jquery-easyui-1.5.1/datagrid-detailview.js"></script>
</head>
<script>
	$(function() {
		$("#menu li").click(function() {
			$(this).addClass("active").siblings().removeClass("active");
			var index = $(this).index();
			if (index != 1) {
				for (var i = 0; i < 3; i++) {
					$("#plan-box>div").eq(i).hide();
				}
				$("#text-box>div").eq(index).show().siblings().hide();

			}
		})
		$("#list-menu a").click(function() {
			$(this).addClass("active").siblings().removeClass("active");
		})
		$("#dropdown-menu li").click(function() {
			$(this).addClass("active").siblings().removeClass("active");
			var index = $(this).index() + 1;
			for (var i = 0; i < 7; i++) {
				$("#text-box>div").eq(i).hide();
			}
			$("#plan-box>div").eq(index).show().siblings().hide();
		})
	})
</script>
<style>
body {
	margin: 0;
	padding: 0;
}

.tex-box>div {
	display: none;
}

.tex-box>div:first-child {
	display: block;
}

th {
	text-align: right;
}

td {
	padding: 4px;
}
</style>
</head>
<body>
	<div class="row">
		<div class=" col-md-1" id="tui"
			style="width: auto; position: fixed; float: right;">

			<p>
				<span style="color: #69a6ff; float: right; margin-right: 20px;">欢迎您,<a
					onclick="">${name}</a></span> <span><a href="${path}/loginout"
					style="text-align: center; color: #69a6ff"> 退出<span
						class="glyphicon glyphicon-log-out"></span>
				</a></span>
			</p>
		</div>
		<div class=" col-md-12 ">
			<div class="page-header">
				<h1 style="color: #69a6ff; margin-left: 50px;">邮政分公司外勤管理系统</h1>

			</div>
		</div>

	</div>

	<!-- 主体-->
	<div class="row" style="height: 763px">
		<div class=" col-md-1 col-sm-1"
			style="background-color: #69a6ff; height: inherit"></div>
		<div class=" col-md-10">
			<div class="row">
				<div class=" col-md-12 col-sm-10" style="padding: 0">
					<!--标签-->
					<ul class="nav nav-pills" id="menu">
						<li role="presentation" class="active"><a href="#">首页</a></li>
						<li role="presentation"><a id="dLabel" href="#"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"> 走访计划 <span class="caret"></span>
						</a>
							<ul id="dropdown-menu" class="dropdown-menu"
								aria-labelledby="dLabel">
								<li id="companyPlan"><a href="#">县公司计划</a></li>
								<li id="webPlan"><a href="#">网点计划</a></li>

							</ul></li>
						<li role="presentation" id="visitData"><a href="#">走访信息</a></li>
						<li role="presentation" id="failInfo"><a href="#">统计信息</a></li>
						<li role="presentation" id="userInfo"><a href="#">用户信息</a></li>
						<li role="presentation" id="deInfo"><a href="#">部门信息</a></li>
						<li role="presentation" id="roleInfo"><a href="#">角色信息</a></li>
					</ul>
				</div>

			</div>

			<div class="row">

				<div class="col-md-12 ">
					<!--标签容器-->
					<div class="tex-box" id="text-box">
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
							<table id="tablePlan" style="min-height: 360px; padding: 0;">
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

							<table id="tableVisit" style="min-height: 360px; padding: 0;">
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
										<!-- <th
											data-options="field:'do',width:60,align:'center',formatter:formatfuncVisit">操作</th> -->
									</tr>
								</thead>
							</table>
							<div id="barVisit" style="padding: 3px">
								<div style="margin-bottom: 5px">
									<a href="#" class="easyui-linkbutton" iconCls="icon-add"
										plain="true" onclick="return goUpdateVisit()">添加</a> <a
										href="#" class="easyui-linkbutton" iconCls="icon-reload"
										plain="true" onclick="return reloadVisit()">刷新</a>
								</div>
								<div>
									<span>走访数据录入者：</span> <input class="easyui-textbox"
										id="s_visitPerson"
										style="line-height: 26px; border: 1px solid #ccc"> <span>走访日期：</span>
									<input id="s_visitDate"
										style="line-height: 26px; border: 1px solid #ccc"
										class="easyui-datebox"> <a href="#"
										class="easyui-linkbutton" plain="true" onclick="SearchVisit()">查询</a>
								</div>
							</div>
						</div>
						<div id="tex3">
							<table id="tableFail" style="min-height: 360px; padding: 0;">
								<thead>
									<tr>
										<th data-options="field:'check'"></th>
										<th data-options="field:'id',width:40">编号</th>
										<th data-options="field:'user.jobNumber',width:100">工号</th>
										<th data-options="field:'user.name',width:60,align:'right'">姓名</th>
										<th data-options="field:'description',width:60,align:'right'">描述</th>
									</tr>
								</thead>
							</table>
						</div>
						<div id="tex4">
							<!-- 用户管理 -->
							<table id="tableUser" style="min-height: 360px; padding: 0;">
								<thead>
									<tr>
										<th data-options="field:'check'"></th>
										<th data-options="field:'id',width:40">编号</th>
										<th data-options="field:'jobNumber',width:100">工号</th>
										<th data-options="field:'name',width:60,align:'right'">姓名</th>
										<th data-options="field:'sex',width:60,align:'right'">性别</th>
										<th data-options="field:'birthday',width:160,align:'right'">生日</th>
										<th data-options="field:'phone',width:160,align:'right'">电话</th>
										<th data-options="field:'mobilePhone',width:160,align:'right'">手机</th>
										<th data-options="field:'email',width:160,align:'right'">邮箱</th>
										<th data-options="field:'state',width:60,align:'right'">状态</th>
										<th
											data-options="field:'department.id',width:100,align:'right'">所在部门</th>
										<th data-options="field:'role.id',width:100,align:'right'">职务</th>
										<th
											data-options="field:'do',width:60,align:'center',formatter:formatfuncUser">操作</th>
									</tr>
								</thead>
							</table>
							<div id="barUser" style="padding: 3px">
								<div style="margin-bottom: 5px">
									<a href="#" class="easyui-linkbutton" iconCls="icon-add"
										plain="true" onclick="return goUpdateUser()">添加</a> <a
										href="#" class="easyui-linkbutton" iconCls="icon-reload"
										plain="true" onclick="return reloadUser()">刷新</a>
								</div>
								<div>
									<span>部门编号：</span> <input class="easyui-textbox"
										id="user_s_departmentId"
										style="line-height: 26px; border: 1px solid #ccc"> <span>角色编号：</span>
									<input id="user_s_roleId" class="easyui-textbox"
										style="line-height: 26px; border: 1px solid #ccc"> <a
										href="#" class="easyui-linkbutton" plain="true"
										onclick="SearchUser()">查询</a>
								</div>
							</div>
						</div>
						<div id="tex5">
							<!-- 部门管理 -->
							<table id="tableDe" style="min-height: 360px; padding: 0;">
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
							<div id="barDe" style="padding: 3px">
								<div style="margin-bottom: 5px">
									<a href="#" class="easyui-linkbutton" iconCls="icon-add"
										plain="true" onclick="return goUpdateDe()">添加</a> <a href="#"
										class="easyui-linkbutton" iconCls="icon-reload" plain="true"
										onclick="return reloadDe()"> 刷新</a>
								</div>
								<div>
									<span>部门编号：</span> <input class="easyui-textbox" id="de_s_id"
										style="line-height: 26px; border: 1px solid #ccc"> <span>部门名称：</span>
									<input id="de_s_departmentName" class="easyui-textbox"
										style="line-height: 26px; border: 1px solid #ccc"> <a
										href="#" class="easyui-linkbutton" plain="true"
										onclick="SearchDe()">查询</a>
								</div>
							</div>
						</div>
						<div id="tex6">
							<!-- 角色管理 -->
							<table id="tableRole" style="min-height: 360px; padding: 0;">
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
							<div id="barRole" style="padding: 3px">
								<div style="margin-bottom: 5px">
									<a href="#" class="easyui-linkbutton" iconCls="icon-add"
										plain="true" onclick="return goUpdateRole()">添加</a> <a
										href="#" class="easyui-linkbutton" iconCls="icon-reload"
										plain="true" onclick="return reloadRole()">刷新</a>
								</div>
								<div>
									<span>角色编号：</span> <input class="easyui-textbox" id="role_s_id"
										style="line-height: 26px; border: 1px solid #ccc"> <span>角色名称：</span>
									<input class="easyui-textbox" id="role_s_roleName"
										style="line-height: 26px; border: 1px solid #ccc"> <a
										href="#" class="easyui-linkbutton" plain="true"
										onclick="SearchRole()">查询</a>
								</div>
							</div>
						</div>
					</div>

					<div class="tex-box" id="plan-box">
						<div></div>
						<div id="planCom">
							<table id="tableCP" style="min-height: 360px; padding: 0;">
								<thead>
									<tr>
										<th data-options="field:'id',width:40">编号</th>
										<th data-options="field:'planName',width:100">计划名</th>
										<th data-options="field:'planDateStart',width:100">计划开始时间</th>
										<th data-options="field:'planDateEnd',width:100">计划结束时间</th>
										<th data-options="field:'designDate',width:100">编制日期</th>
										<th data-options="field:'designer',width:100">编制人姓名</th>
										<th data-options="field:'webType',width:100">网点类型</th>
										<th data-options="field:'season',width:100">季节</th>
										<th data-options="field:'personTimes',width:100">每人每月最少走访次数</th>
										<th data-options="field:'totalTimes',width:100">合计最少次数</th>
										<th data-options="field:'personCollections',width:100">每人每月最少收集的信息数</th>
										<th data-options="field:'remark',width:100">备注</th>
										<th data-options="field:'userId',width:100">编制人</th>
										<th data-options="field:'state',width:100">状态</th>
										<!-- <th
											data-options="field:'do',width:60,align:'center',formatter:formatfuncVisit">操作</th> -->
									</tr>
								</thead>
							</table>
							<div id="barCP" style="padding: 3px">
								<div style="margin-bottom: 5px">
									<a href="#" class="easyui-linkbutton" iconCls="icon-add"
										plain="true" onclick="return goUpdateCom()">添加</a> <a href="#"
										class="easyui-linkbutton" iconCls="icon-reload" plain="true"
										onclick="return reloadCom()">刷新</a>
								</div>
								<div>
									<span>计划名：</span> <input class="easyui-textbox" id="s_planName"
										style="line-height: 26px; border: 1px solid #ccc"> <span>计划开始日期：</span>
									<input id="s_planDateStart"
										style="line-height: 26px; border: 1px solid #ccc"
										class="easyui-datebox"> <a href="#"
										class="easyui-linkbutton" plain="true" onclick="SearchVisit()">查询</a>
								</div>
							</div>
						</div>
						<div id="planWeb">
							<table id="tableWeb" style="min-height: 360px; padding: 0;">
								<thead>
									<tr>
										<th data-options="field:'id',width:40">编号</th>
										<th data-options="field:'planName',width:100">计划名</th>
										<th data-options="field:'planDateStart',width:100">计划开始时间</th>
										<th data-options="field:'planDateEnd',width:100">计划结束时间</th>
										<th data-options="field:'designDate',width:100">编制日期</th>
										<th data-options="field:'designer',width:100">编制人姓名</th>
										<th data-options="field:'webType',width:100">网点类型</th>
										<th data-options="field:'remark',width:100">备注</th>
										<th data-options="field:'userId',width:100">编制人</th>
										<th data-options="field:'state',width:100">状态</th>
										<!-- <th
											data-options="field:'do',width:60,align:'center',formatter:formatfuncVisit">操作</th> -->
									</tr>
								</thead>
							</table>
							<div id="barWeb" style="padding: 3px">
								<div style="margin-bottom: 5px">
									<a href="#" class="easyui-linkbutton" iconCls="icon-add"
										plain="true" onclick="return goAddWeb()">添加</a> <a href="#"
										class="easyui-linkbutton" iconCls="icon-reload" plain="true"
										onclick="return reloadWeb()">刷新</a>
								</div>
								<div>
									<span>计划名：</span> <input class="easyui-textbox"
										id="s_web_planName"
										style="line-height: 26px; border: 1px solid #ccc"> <span>计划开始日期：</span>
									<input id="s_web_planDateStart"
										style="line-height: 26px; border: 1px solid #ccc"
										class="easyui-datebox"> <a href="#"
										class="easyui-linkbutton" plain="true" onclick="SearchWeb()">查询</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- Modal -->
	<!--文件上传弹出框-->
	<div class="modal fade" id="visitModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加走访数据</h4>
				</div>
				<div class="modal-body">
					<div>
					   <form action="${path}/excel_import">
						<input class="easyui-filebox" type="text" id="choosefile">
						<input type="submit" value="确认上传">
					</form></div>
					<div>
						<form id="visitForm" action="${path}/visitData_add" method ="post">
						<table>
							<tr>
								<th>走访日期：</th>
								<td><input type="text" class="easyui-datebox"
									id="visit_visitDate" name="visitDate"></td>
							</tr>
							<tr>
								<th>走访时间：</th>
								<td><input type="text" class="easyui-timebox"
									id="visit_visitTime" name="visitTime"></td>
							</tr>
							<tr>
								<th>走访地点：</th>
								<td><input type="text" class="easyui-textbox"
									id="visit_address" name="address"></td>
							</tr>
							<tr>
								<th>走访人姓名：</th>
								<td><input type="text" class="easyui-textbox"
									id="visit_visitPerson" name="visitPerson"></td>
							</tr>
							<tr>
								<th>走访人所在部门：</th>
								<td><input type="text" class="easyui-textbox"
									id="visit_departmentName" name="departmentName"></td>
							</tr>
							<tr>
								<th>走访人职务：</th>
								<td><input type="text" class="easyui-textbox"
									id="visit_roleName" name="roleName"></td>
							</tr>
							<tr>
								<th>纵享销客账号：</th>
								<td><input type="text" class="easyui-textbox"
									id="visit_countPerson" name="countPerson"></td>
							</tr>
							<tr>
								<th>走访内容：</th>
								<td><input type="text" class="easyui-textbox"
									id="visit_details" name="details"></td>
							</tr>
							<tr>
								<th>走访人编号：</th>
								<td><input type="text" class="easyui-textbox"
									id="visit_user" name="userId"></td>
							</tr>
							<tr>
								<td colspan="2"><input type="submit" value="提交"></td>
							</tr>
						</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 用户数据添加修改 -->
	<div class="modal fade" id="userModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4>用户信息修改</h4>
				</div>
				<div class="modal-body">
					<fieldset style="margin: 0 auto;">

						<form>
							<table>
								<tr>
									<td><input class="easyui-textbox" type="hidden"
										id="user_id" name="id"></td>
								</tr>
								<tr>
									<th>登录名：</th>
									<td><input class="easyui-textbox" type="text"
										id="user_loginName" name="loginName"></td>
									<th>密码：</th>
									<td><input class="easyui-textbox" type="password"
										id="user_password" name="password"></td>
								</tr>
								<tr>
									<th>工号:</th>
									<td><input class="easyui-textbox" type="text"
										id="user_jobNumber" name="jobNumber"></td>
									<th>姓名:</th>
									<td><input class="easyui-textbox" type="text"
										id="user_name" name="name"></td>
								</tr>
								<tr>
									<th>性别:</th>
									<td><select id="user_sex" name="sex"
										class="easyui-combobox"><option selected="selected"
												value="男">男</option>
											<option value="女">女</option></select></td>
									<th>账号状态:</th>
									<td><select id="user_state" name="user_state"
										class="easyui-combobox"><option value="1">激活</option>
											<option value="0">注销</option></select></td>
								</tr>

								<tr>
									<th>所属部门:</th>
									<td><input id="user_department" name="department"
										class="easyui-combobox"
										data-options="url:'${path}/de_departments',method:'post',valueField:'id',textField:'deparmentName',panelHeight:'auto',editable:false,data:'json.rows'"></td>
									<th>所属角色:</th>
									<td><input id="user_role" name="role"
										class="easyui-combobox"
										data-options="url:'${path}/role_selectAll',method:'post',valueField:'id',textField:'roleName',panelHeight:'auto',editable:false,data:'json.rows'"></td>
								</tr>
								<tr style="text-align: center;">

									<td colspan="4"><input type="button"
										style="margin-top: 12px;" value="提交"
										onclick="return updateUser()"></td>

								</tr>
							</table>
						</form>
					</fieldset>
				</div>
			</div>
		</div>
	</div>
	<!-- Columns are always 50% wide, on mobile and desktop -->
	<!-- 部门信息添加修改 -->
	<div class="modal fade" id="deModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<fieldset style="width: 50%; height: 50%; margin: 0 auto;">
						<legend>部门信息修改</legend>
						<form>
							<table>
								<tr>
									<td><input type="hidden" id="de_id" name="id"></td>
								</tr>
								<tr>
									<th>部门名称：</th>
									<td><input class="easyui-textbox" type="text"
										id="de_departmentName" name="departmentName"></td>
								</tr>
								<tr>
									<th>联系电话：</th>
									<td><input class="easyui-textbox" type="text"
										id="de_phone" name="phone"></td>
								</tr>
								<tr>
									<th>部门状态：</th>
									<td><select class="easyui-combobox" id="de_state"
										name="state"><option value="1" selected="selected">激活</option>
											<option value="0">注销</option></select></td>
								</tr>
								<tr style="text-align: center;">

									<td colspan="2" style="text-align: center;"><input
										type="button" id="affirm" value="确认"
										onclick="return updateDe()"></td>

								</tr>
							</table>
						</form>
					</fieldset>
				</div>
			</div>
		</div>
	</div>
	<!-- 角色信息添加修改 -->
	<div class="modal fade" id="roleModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4>角色修改</h4>
				</div>
				<div class="modal-body">
					<fieldset style="width: 50%; height: 50%; margin: 0 auto;">
						<form>
							<table>
								<tr>
									<td><input type="hidden" id="role_id" name="id"></td>
								</tr>
								<tr>
									<th>角色名称：</th>
									<td><input class="easyui-textbox" type="text"
										id="role_roleName" name="roleName"></td>
								</tr>
								<tr>
									<th>角色描述：</th>
									<td><input class="easyui-textbox" type="text"
										id="role_description" name="description"></td>
								</tr>
								<tr>
									<th>角色权限：</th>
									<td><select class="easyui-combobox" id="roleLimit"
										name="roleLimit"><option value="1">系统管理员</option>
											<option value="2">计划编制人员</option>
											<option value="3">计划编制人员</option>
											<option value="4">业务主管</option>
											<option value="5">业务员</option>
											<option value="6">领导</option></select></td>
								</tr>
								<tr>
									<th>角色状态：</th>
									<td><select class="easyui-combobox" id="role_state"
										name="state"><option value="1" selected="selected">激活</option>
											<option value="0">注销</option></select></td>
								</tr>
								<tr style="text-align: center;">

									<td colspan="2" style="text-align: center;"><input
										type="button" id="affirm" value="确认"
										onclick="return updateRole()"></td>

								</tr>
							</table>
						</form>
					</fieldset>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="comModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4>更新县公司计划</h4>
				</div>
				<div class="modal-body">
					<fieldset style="width: auto; height: 50%; margin: 0 auto;">
						<form id="comForm" action="${path}/companyPlan_insert" method="post">
							<table>
								<tr>
									<td><input type="hidden" id="com_id" name="id" value="-1"></td>
								</tr>
								<tr>
									<th>计划名：</th>
									<td><input class="easyui-textbox" type="text"
										id="com_planName" name="planName"></td>
								</tr>
								<tr>
									<th>计划开始时间：</th>
									<td><input class="easyui-datebox" type="text"
										id="com_planDateStart" name="p_planDateStart"></td>
									<th>计划结束时间：</th>
									<td><input class="easyui-datebox" type="text"
										id="com_planDateEnd" name="p_planDateEnd"></td>
								</tr>
								<tr>
									<th>编制日期：</th>
									<td><input class="easyui-datebox" type="text"
										id="com_designDate" name="p_designDate"></td>

									<th>编制人姓名：</th>
									<td><input class="easyui-textbox" type="text"
										id="com_designer" name="designer"></td>
								</tr>
								<tr>
									<th>网点类型：</th>
									<td><input class="easyui-textbox" type="text"
										id="com_webType" name="webType"></td>

									<th>季节：</th>
									<td><input class="easyui-textbox" type="text"
										id="com_season" name="season"></td>
								</tr>
								<tr>
									<th>每人每月最少走访次数：</th>
									<td><input class="easyui-textbox" type="text"
										id="com_personTimes" name="personTimes"></td>

									<th>合计最少次数：</th>
									<td><input class="easyui-textbox" type="text"
										id="com_totalTimes" name="totalTimes"></td>
								</tr>
								<tr>
									<th>每人每月最少收集的信息数：</th>
									<td><input class="easyui-textbox" type="text"
										id="com_personCollections" name="personCollections"></td>

									<th>备注：</th>
									<td><input class="easyui-textbox" type="text"
										id="com_remark" name="remark"></td>
								</tr>
								<tr>
									<!-- <th>编制人：</th>
									<td><input class="easyui-textbox" type="text"
										id="com_userId" name="user.id"></td>
 -->
									<th>状态：</th>
									<td><select class="easyui-combobox" id="com_state"
										name="state"><option value="1" selected="selected">激活</option>
											<option value="0">注销</option></select></td>
								</tr>
								<tr style="text-align: center;">
									<td colspan="4" style="text-align: center;"><input
										type="submit" id="affirm" value="提交"></td>
								</tr>
							</table>
						</form>
					</fieldset>
				</div>
			</div>
		</div>
	</div>
<div class="modal fade" id="webModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4>添加网点计划</h4>
				</div>
				<div class="modal-body">
					<fieldset style="width: auto; height: 50%; margin: 0 auto;">
						<form id="webFrom" action="${path}/webPlan_updateWebPlan" method="post">
							<table>
								<tr>
									<td><input type="hidden" id="web_id" name="id" value="-1"></td>
								</tr>
								<tr>
									<th>计划名：</th>
									<td><input class="easyui-textbox" type="text"
										id="web_planName" name="planName"></td>
								</tr>
								<tr>
									<th>计划开始时间：</th>
									<td><input class="easyui-datebox" type="text"
										id="web_planDateStart" name="p_planDateStart"></td>
									<th>计划结束时间：</th>
									<td><input class="easyui-datebox" type="text"
										id="web_planDateEnd" name="p_planDateEnd" ></td>
								</tr>
								<tr>
									<th>编制日期：</th>
									<td><input class="easyui-datebox" type="text"
										id="web_designDate" name="p_designDate" editable="false"></td>

									<th>编制人姓名：</th>
									<td><input class="easyui-textbox" type="text"
										id="web_designer" name="designer" editable="false" value="${name}"></td>
								</tr>
								<tr>
									<th>网点类型：</th>
									<td><input class="easyui-textbox" type="text"
										id="web_webType" name="webType"></td>

								

									
									 <th>编制人：</th>
									<td><input class="easyui-textbox" type="text"
										id="com_userId" name="user.id" hidden="true" editable="true" value="${id}"></td>
									<th>状态：</th>
									<td><select class="easyui-combobox" id="web_state"
										name="state"><option value="1" selected="selected">激活</option>
											<option value="0">注销</option></select></td>
								</tr>
								<tr style="text-align: center;">
									<td colspan="4" style="text-align: center;"><input
										type="submit" id="affirm" value="提交"></td>
								</tr>
							</table>
						</form>
					</fieldset>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		//县公司计划管理
		$("#companyPlan").click(function() {
			$('#tableCP').datagrid({
				title:'县公司计划',
				fitColumns : true,
				width : 820,
				method : 'post',
				loadMsg : '正在加载数据中......',
				pagination : true,
				nowrap : true,
				autoRowHeigh : false,
				toolbar : $('#barCP'),
				url : '${path}/companyPlan_select',
				singleSelect : true,

			});
		});
		function formatfuncCP(value, row, index) {
			var e = '<a href="#"  onclick="goUpdateCP('
					+ index
					+ ')"><img src="${path}/resource/img/pencil.png" style="margin-left: 12px;vertical-align:middle;" title="编辑"/></a> ';
			/* var d = '<a href="#"  onclick="deleteCP('
					+ index
					+ ')"><img src="${path}/resource/img/edit_remove.png" style="margin-left: 12px;vertical-align:middle;" title="删除"/></a>'; */
			return e + d;
		}

		function goUpdateCom(index) {
			$('#comModal').modal('show');
		}
		$('#comForm').form({
			success:function(data){
				if(data=="success"){
					alert("添加成功！");
					$('#comModal').modal('hide');
					$('#tableCP').datagrid('reload');
				}
			}
		});
		function SearchCom() {
			$('#tableCP').datagrid('load', {
			//visitPerson : $('#s_visitPerson').textbox('getValue'),
			//visitDate : $('#s_visitDate').datebox('getValue')
			});
		}
		function reloadCom() {
			$('#tableCP').datagrid('reload');
		}
		/* function deleteCP(index) {
			$('#tableCP').datagrid('selectRow', index);
			var row = $('#tableCP').datagrid('getSelected');
			$.messager.confirm('Confirm', '确认删除' + row.planName + '?',
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
		} */
		//网点计划管理(含网点计划明细)
		$("#webPlan")
				.click(
						function() {
							$('#tableWeb')
									.datagrid(
											{
												title:'网点计划',
												fitColumns : true,
												width : 820,
												method : 'post',
												loadMsg : '正在加载数据中......',
												pagination : true,
												nowrap : true,
												autoRowHeigh : false,
												toolbar : $('#barWeb'),
												url : '${path}/getWebPlan',
												singleSelect : true,
												view : detailview,
												detailFormatter : function(
														index, row) {
													return '<div style="padding:2px"><table class="ddv"></table></div>';
												},
												onExpandRow : function(index,
														row) {
													var ddv = $(this).datagrid(
															'getRowDetail',
															index).find(
															'table.ddv');
													ddv.datagrid({
																url : '${path}/webPlanDetail_get?webPlan_id='
																		+ row.id,
																fitColumns : true,
																singleSelect : true,
																rownumbers : true,
																loadMsg : '',
																height : 'auto',
																columns : [ [
																		{
																			field : 'id',
																			title : '明细编号',
																			width : 60
																		},
																		{
																			field : 'name',
																			title : '编制人姓名',
																			width : 100
																		},
																		{
																			field : '编制人所属部门',
																			title : 'departmentName',
																			width : 100
																		},
																		{
																			field : 'duty',
																			title : '编制人职务',
																			width : 100
																		},
																		{
																			field : 'visitDate',
																			title : '走访日期',
																			width : 100
																		} ,
																		{
																			field : 'visitTime',
																			title : '走访时间',
																			width : 100
																		} ,
																		{
																			field : 'visitAddress',
																			title : '走访地点',
																			width : 100
																		} ,
																		{
																			field : 'collection',
																			title : '搜集信息数',
																			width : 40
																		} ,
																		{
																			field : 'remark',
																			title : '备注',
																			width : 100
																		}  ,
																		{
																			field : 'userId',
																			title : '编制人编号',
																			width : 100
																		} ,
																		{
																			field : 'state',
																			title : '状态',
																			width : 100
																		}  ] ],
																onResize : function() {
																	$('#tableWeb')
																			.datagrid(
																					'fixDetailRowHeight',
																					index);
																},
																onLoadSuccess : function() {
																	setTimeout(
																			function() {
																				$('#tableWeb')
																						.datagrid(
																								'fixDetailRowHeight',
																								index);
																			},
																			0);
																}
															});
													$('#tableWeb')
															.datagrid(
																	'fixDetailRowHeight',
																	index);
												}
											});
						});
		function formatfuncWeb(value, row, index) {
			var e = '<a href="#"  onclick="goAddWebDetail('
					+ index
					+ ')"><img src="${path}/resource/img/pencil.png" style="margin-left: 12px;vertical-align:middle;" title="添加明细"/></a> ';
			/* var d = '<a href="#"  onclick="deleteCP('
					+ index
					+ ')"><img src="${path}/resource/img/edit_remove.png" style="margin-left: 12px;vertical-align:middle;" title="删除"/></a>'; */
			return e;
		}

		function goAddWeb(index) {
			$('#webModal').modal('show');
		}
		function goAddWebDetail(index){
			
		}
		$('#webForm').form({
			success:function(data){
				if(data=="SUCCESS"){
					alert("添加成功");
					$('#webModal').modal('hide');
					$('#tableWeb').datagrid('reload');
				}
			}
		});
		function updateWebDetail(){
			
		}
		function SearchWeb() {
			$('#tableWeb').datagrid('load', {
				visitPerson : $('#s_visitPerson').textbox('getValue'),
				visitDate : $('#s_visitDate').datebox('getValue')
			});
		}
		function reloadWeb() {
			$('#tableWeb').datagrid('reload');
		}
		/* function deleteCP(index) {
			$('#tableCP').datagrid('selectRow', index);
			var row = $('#tableCP').datagrid('getSelected');
			$.messager.confirm('Confirm', '确认删除' + row.planName + '?',
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
		} */
		//走访数据管理
		$('#visitData').click(function() {
			$('#tableVisit').datagrid({
				fitColumns : true,
				rownumbers : true,
				width : 820,
				method : 'post',
				loadMsg : '正在加载数据中......',
				pagination : true,
				toolbar : '#barVisit',
				url : '${path}/queryVisitData',
				singleSelect : true,
				nowrap : true,
				autoRowHeigh : false
			});
		});
		function goUpdateVisit() {

			$('#visitModal').modal('show');
		}
		$('#visitFile').form({
			success:function(data){
				if(data=="SUCCESS"){
					 alert("操作成功！");
					   $('#visitModal').modal('hide');
					   $('#tableVisit').datagrid('reload');
				}
			}
		});
		$('#visitForm').form({
			success:function(data){
			   if(data=="SUCCESS"){
				   alert("操作成功！");
				   $('#visitModal').modal('hide');
				   $('#tableVisit').datagrid('reload');
			   }	
			}
		});
		function SearchVisit() {
			$('#tableVisit').datagrid('load', {
				visitPerson : $('#s_visitPerson').textbox('getValue'),
				visitDate : $('#s_visitDate').datebox('getValue')
			});
		}
		function reloadVisit() {
			$('#tableVisit').datagrid('reload');
		}
		/* function formatfuncVisit(value, row, index) {
			var e = '<a href="#"  onclick="modifyVisit('
					+ index
					+ ')"><img src="${path}/resource/img/pencil.png" style="margin-left: 12px;vertical-align:middle;" title="编辑"/></a> ';
			var d = '<a href="#"  onclick="deleteVisit('
					+ index
					+ ')"><img src="${path}/resource/img/edit_remove.png" style="margin-left: 12px;vertical-align:middle;" title="删除"/></a>';
			return e + d;
		} */

		/* 	function modifyVisit(index) {//修改走访数据信息
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
			} */
		//不合格人员
		$('#failInfo').click(function(){
			$('#tableFail').datagrid({
				fitColumns : true,
				rownumbers : true,
				width : 920,
				method : 'post',
				loadMsg : '正在加载数据中......',
				pagination : true,
				toolbar : {title:'刷新',
					iconCls:'icon-reload',
					handler:function(){
						$('#tableFail').datagrid('reload');
					}
					
				},
				url : '${path}/queryAllFailPerosn',
				singleSelect : true,
				nowrap : true,
				autoRowHeigh : false
			});
		});
		//用户管理
		$('#userInfo').click(function() {
			$('#tableUser').datagrid({
				fitColumns : true,
				rownumbers : true,
				width : 920,
				method : 'post',
				loadMsg : '正在加载数据中......',
				pagination : true,
				toolbar : '#barUser',
				url : '${path}/user_query',
				singleSelect : true,
				nowrap : true,
				autoRowHeigh : false
			});
		});
		function formatfuncUser(value, row, index) {
			var e = '<a href="#"  onclick="goUpdateUser('
					+ index
					+ ')"><img src="${path}/resource/img/pencil.png" style="margin-left: 12px;vertical-align:middle;" title="编辑"/></a> ';
			/* var d = '<a href="#"  onclick="deleteUser('
					+ index
					+ ')"><img src="${path}/resource/img/edit_remove.png" style="margin-left: 12px;vertical-align:middle;" title="删除"/></a>'; */
			return e;
		}

		function goUpdateUser(index) {
			if (index != null) {
				$('#tableUser').datagrid('selectRow', index);
				var row = $('#tableUser').datagrid('getSelected');
				$('#user_id').val(row.id);
				$('#user_loginName').textbox('setValue', row.loginName);
				$('#user_password').textbox('setValue', row.password);
				$('#user_jobNumber').textbox('setValue', row.jobName);
				$('#user_name').textbox('setValue', row.name);
				$('#user_sex').combobox('setValue', row.sex);
				$('#user_state').combobox('setValue', row.state);
				$('#user_deparment').combobox('setValue', row.department.id);
				$('#user_role').combobox('setValue', row.role.id);
			} else {
				$('#user_loginName').textbox('setValue', "");
				$('#user_password').textbox('setValue', "");
				$('#user_jobNumber').textbox('setValue', "");
				$('#user_name').textbox('setValue', "");
				$('#user_sex').textbox('setValue', "");
				$('#user_state').textbox('setValue', 1);
				$('#user_deparment').textbox('setValue', "");
				$('#user_role').textbox('setValue', 5);
			}
			$('#userModal').modal('show');
		}
		function updateUser() {
			var uid = $('#user_id').val();
			var uloginName = $('#user_loginName').textbox('getValue');
			var pwd = $('#user_password').textbox('getValue');
			var jn = $('#user_jobNumber').textbox('getValue');
			var uname = $('#user_name').textbox('getValue');
			var usex = $('#user_sex').combobox('getValue');
			var ustate = $('#user_state').combobox('getValue');
			var ude = $('#user_deparment').combobox('getValue');
			var urole = $('#user_role').combobox('getValue');

			$.ajax({
				url : '${path}/user_updateUser',
				data : {
					id : uid,
					loginName : uloginName,
					password : pwd,
					jobName : jn,
					name : uname,
					sex : usex,
					state : ustate,
					departmentId : ude,
					roleId : urole
				},
				type : 'post',
				success : function(data) {
					if (data == "SUCCESS") {
						alert("操作成功");
						$('#userModal').modal('hide');
						$('#tableUser').datagrid('reload');
					} else {
						alert("操作失败！请重试！");
					}
				},
				error : function() {
					alert("好像哪里出错了,请刷新后重试！");
				}
			});
		}
		function SearchUser() {
			$('#tableUser').datagrid('load', {
				departmentId : $('#user_s_departmentId').textbox('getValue'),
				roleId : $('#user_s_roleId').textbox('getValue')
			});
		}
		function reloadUser() {
			$('#tableUser').datagrid('reload');
		}
		/* function deleteUser(index) {
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
		} */
		//部门管理
		$('#deInfo').click(function() {
			$('#tableDe').datagrid({
				fitColumns : true,
				rownumbers : true,
				width : 820,
				method : 'post',
				loadMsg : '正在加载数据中......',
				pagination : true,
				toolbar : '#barDe',
				url : '${path}/de_departments',
				singleSelect : true,
				nowrap : true,
				autoRowHeigh : false
			})
		});

		function formatfuncDe(value, row, index) {
			var e = '<a href="#"  onclick="goUpdateDe('
					+ index
					+ ')"><img src="${path}/resource/img/pencil.png" style="margin-left: 12px;vertical-align:middle;" title="编辑"/></a> ';
			var d = '<a href="#"  onclick="deleteDe('
					+ index
					+ ')"><img src="${path}/resource/img/edit_remove.png" style="margin-left: 12px;vertical-align:middle;" title="删除"/></a>';
			return e + d;
		}

		function goUpdateDe(index) {
			if (index != null) {
				$('#tableDe').datagrid('selectRow', index);
				var row = $('#tableDe').datagrid('getSelected');
				$('#de_id').val(row.id);
				$('#de_departmentName').textbox('setValue', row.departmentName);
				$('#de_phone').textbox('setValue', row.phone);
				$('#de_state').combobox('setValue', row.state);
			} else {
				$('#de_id').val(-1);
				$('#de_departmentName').textbox('setValue', "");
				$('#de_phone').textbox('setValue', "");
				$('#de_state').combobox('setValue', 1);
			}
			$('#deModal').modal('show');
		}
		function updateDe() {
			var did = $('#de_id').val();
			var dname = $('#de_departmentName').textbox('getValue');
			var dphone = $('#de_phone').textbox('getValue');
			var dstate = $('#de_state').combobox('getValue');
			$.ajax({
				url : '${path}/de_updateDe',
				data : {
					id : did,
					depattmentName : dname,
					phone : dphone,
					state : dstate
				},
				type : 'post',
				success : function(data) {
					if (data == "SUCCESS") {
						alert("操作成功！");
						$('#deModal').modal('hide');
						$('#tableDe').datagrid('reload');
					} else {
						alert("操作失败，请重试！");
					}
				},
				error : function() {
					alert("好像哪儿出错了,请刷新后重试！");
				}

			});
		}
		function SearchDe() {
			$('#tableDe').datagrid('load', {
				id : $('#de_s_id').textbox('getValue'),
				departmentName : $('de_s_departmentName').textbox('getValue')
			});
		}
		function deleteDe(index) {
			$('#tableDe').datagrid('selectRow', index);
			var row = $('#tableDe').datagrid('getSelected');
			$.messager.confirm('Confirm', '确认删除' + row.departmentName + '?',
					function(r) {
						if (r) {
							$.ajax({
								url : '${path}/de_deleteDe',
								data : 'id=' + row.id,
								type : 'post',
								timeout : 6000,
								success : function(data) {
									if (data == "success") {
										$('#tableDe').datagrid('deleteRow',
												index);
										$.messager.alert('提示', '删除成功', 'info');
										//$('#tableDe').datagrid('reload');
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
		function reloadDe() {
			$('#tableDe').datagrid('reload');
		}
		//角色管理
		$('#roleInfo').click(function() {
			$('#tableRole').datagrid({
				fitColumns : true,
				rownumbers : true,
				width : 820,
				method : 'post',
				loadMsg : '正在加载数据中......',
				pagination : true,
				toolbar : '#barRole',
				url : '${path}/role_selectAll',
				singleSelect : true,
				nowrap : true,
				autoRowHeigh : false
			})
		});

		function formatfuncRole(value, row, index) {
			var e = '<a href="#"  onclick="goUpdateRole('
					+ index
					+ ')"><img src="${path}/resource/img/pencil.png" style="margin-left: 12px;vertical-align:middle;" title="编辑"/></a> ';
			var d = '<a href="#"  onclick="deleteRole('
					+ index
					+ ')"><img src="${path}/resource/img/edit_remove.png" style="margin-left: 12px;vertical-align:middle;" title="删除"/></a>';
			return e + d;
		}

		function goUpdateRole(index) {

			var row;
			if (index != null) {
				$('#tableRole').datagrid('selectRow', index);
				row = $('#tableRole').datagrid('getSelected');
				document.getElementById("role_id").value = row.id;
				$("#role_roleName").textbox('setValue', row.roleName);
				$("#role_description").textbox('setValue', row.description);
				$("#roleLimit").combobox('setValue', row.roleLimit);
				$("#role_state").combobox('setValue', row.state);
			} else {

				document.getElementById("role_id").value = -1;
				$("#role_roleName").textbox('setValue', "");
				$("#role_description").textbox('setValue', "");
				$("#roleLimit").combobox('setValue', "");
				$("#role_state").combobox('setValue', "");
			}
			$('#roleModal').modal('show');
		}
		function updateRole() {
			var rid = $('#role_id').val();
			var rroleName = $('#role_roleName').textbox('getValue');
			var rdescription = $('#role_description').textbox('getValue');
			var rroleLimit = $('#roleLimit').combobox('getValue');
			var sstate = $('#role_state').combobox('getValue');
			$.ajax({
				url : '${path}/role_updateRole',
				type : 'post',
				data : {
					id : rid,
					roleName : rroleName,
					description : rdescription,
					roleLimit : rroleLimit,
					state : sstate
				},
				success : function(data) {
					if (data == "SUCCESS") {
						alert("操作成功!");
						$('#roleModal').modal('hide');
						$('#tableRole').datagrid('reload');
					} else {
						alert("操作失败，请重试！");
					}
				},
				error : function() {
					alert("好像哪里出错了，请刷新后重试！");
				}

			});
		}
		function SearchRole() {
			$('#tableRole').datagrid('load', {
				id : $('#role_s_id').textbox('getValue'),
				roleName : $('#role_s_roleName').textbox('getValue')
			})
		}
		function deleteRole(index) {
			$('#tableRole').datagrid('selectRow', index);
			var row = $('#tableRole').datagrid('getSelected');
			$.messager.confirm('Confirm', '确认删除' + row.roleName + '?',
					function(r) {
						if (r) {
							$.ajax({
								url : '${path}/role_deleteRole',
								data : 'id=' + row.id,
								type : 'post',
								timeout : 6000,
								success : function(data) {
									if (data == "SUCCESS") {
										$('#tableRole').datagrid('deleteRow',
												index);
										$.messager.alert('提示', '删除成功', 'info');
										//$('#tableRole').datagrid('reload');
									} else {
										$.messager.alert('提示',
												'删除失败,该角色暂时无法删除！请稍后重试', 'info')
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
		function reloadRole() {
			$('#tableRole').datagrid('reload');
		}
	</script>
</body>
</html>