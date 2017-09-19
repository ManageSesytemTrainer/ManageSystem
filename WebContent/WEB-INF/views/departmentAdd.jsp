<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/18
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加部门信息</title>
</head>
<style>
    tr td{
        width: 98px;
    }
    tr td input{
        width: 226px;
    }
</style>
</head>
<body>
<fieldset style="width: 37%;height: 50%;margin: 0 auto;">
    <legend>部门信息添加</legend>
    <form id="myform" name="myform" method="get" action="${path}/update" enctype="multipart/form-data">
        <table>
            <tr>
                <td><input type="hidden" id="id" name="id" value="-2"></td>
            </tr>
            <tr>
            <tr>
                <td>部门名称</td>
                <td><input type="text" id="user"></td>
            </tr>
            <tr>
                <td>联系电话</td>
                <td><input type="text" id="phone"></td>
            </tr>
            <tr>
                <td>部门状态</td>
                <td><input type="text" id="state"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" style="margin-top: 12px;" id="affirm" value="确认添加"></td>
                <td></td>
            </tr>
        </table>
    </form>
</fieldset>
</body>
</html>
