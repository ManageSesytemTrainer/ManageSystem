<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/16
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>部门信息修改</title>
    <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="js/departmentAjax.js"></script>
</head>
<body>
<fieldset style="width: 50%;height: 50%;margin: 0 auto;">
    <legend>部门信息修改</legend>
    <form id="myform" name="myform" method="get" action="home.html" enctype="multipart/form-data">
        <table>
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
                <td><input type="submit" id="affirm" value="确认修改"></td>
                <td></td>
            </tr>
        </table>
    </form>
</fieldset>
</body>
</html>
