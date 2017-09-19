<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/18
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>网点计划明细添加</title>
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
                <td>员工姓名</td>
                <td><input type="text" id="serial" name="name"></td>
            </tr>
            <tr>
                <td>所属部门名称</td>
                <td><input type="text" id="name" name="departmentName"></td>
            </tr>
            <tr>
                <td>职务名称</td>
                <td><input type="text" id="sex" name="duty"></td>
            </tr>
            <tr>
                <td>走访日期</td>
                <td><input type="text" id="birthday" name="visitDate"></td>
            </tr>
            <tr>
                <td>走访时间</td>
                <td><input type="text" id="mobile" name="visitTime"></td>
            </tr>
            <tr>
                <td>走访地点</td>
                <td><input type="text" id="mobile" name="visitAddress"></td>
            </tr>
            <tr>
                <td>搜集信息数</td>
                <td><input type="text" id="mobile" name="collection"></td>
            </tr>
            <tr>
                <td>备注</td>
                <td><input type="text" id="mobile" name="remark"></td>
            </tr>
            <tr>
                <td>网点计划</td>
                <td><input type="text" id="mobile" name="webPlan"></td>
            </tr>
            <tr>
                <td>员工</td>
                <td><input type="text" id="mobile" name="user"></td>
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
