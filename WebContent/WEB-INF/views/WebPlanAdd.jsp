<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/18
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>网点计划添加</title>
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
    <legend>部门信息修改</legend>
    <form id="myform" name="myform" method="get" action="${path}/update" enctype="multipart/form-data">
        <table>
            <tr>
                <td><input type="hidden" id="id" name="id" value=""></td>
            </tr>
            <tr>
                <td>计划名称</td>
                <td><input type="text" id="serial" name="planName"></td>
            </tr>
            <tr>
                <td>计划开始时间</td>
                <td><input type="text" id="name" name="planDateStart"></td>
            </tr>
            <tr>
                <td>计划结束时间</td>
                <td><input type="text" id="sex" name="planDateEnd"></td>
            </tr>
            <tr>
                <td>计划编制日期</td>
                <td><input type="text" id="sex" name="designDate"></td>
            </tr>
            <tr>
                <td>网点类型</td>
                <td><input type="text" id="birthday" name="webType"></td>
            </tr>
            <tr>
                <td>编制人姓名</td>
                <td><input type="text" id="mobile" name="designer"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" id="affirm" style="margin-top: 12px;" value="确认添加"></td>
                <td></td>
            </tr>
        </table>
    </form>
</fieldset>
</body>
</html>
