<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/18
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <meta charset="UTF-8">
        <title>用户信息修改</title>
        <style>
            tr td{
                width: 98px;
            }
            tr td input{
                width: 226px;
            }
        </style>
    </head>
</head>
<body>
<fieldset style="width: 37%;height: 50%;margin: 0 auto;">
    <legend>部门信息修改</legend>
    <form id="myform" name="myform" method="get" action="${path}/update" enctype="multipart/form-data">
        <table>
            <tr>
                <td><input type="hidden" id="id" name="id" value=""></td>
            </tr>
            <tr>
                <td>工号</td>
                <td><input type="text" id="serial"></td>
            </tr>
            <tr>
                <td>姓名</td>
                <td><input type="text" id="name"></td>
            </tr>
            <tr>
                <td>性别</td>
                <td><input type="text" id="sex"></td>
            </tr>
            <tr>
                <td>生日</td>
                <td><input type="text" id="birthday"></td>
            </tr>
            <tr>
                <td>电话</td>
                <td><input type="text" id="mobile"></td>
            </tr>
            <tr>
                <td>手机</td>
                <td><input type="text" id="phone"></td>
            </tr>
            <tr>
                <td>邮箱</td>
                <td><input type="text" id="email"></td>
            </tr>
            <tr>
                <td>状态</td>
                <td><input type="text" id="state"></td>
            </tr>

            <tr>
                <td>所属部门</td>
                <td><input type="text" id="department"></td>
            </tr>
            <tr>
                <td>所属角色</td>
                <td><input type="text" id="role"></td>
            </tr>
            <tr>
                <td>部门名称</td>
                <td><input type="text" id="departmentName"></td>
            </tr>

            <tr>
                <td></td>
                <td><input type="submit" id="affirm" style="margin-top: 12px;" value="确认修改"></td>
                <td></td>
            </tr>
        </table>
    </form>
</fieldset>
</body>
</html>
