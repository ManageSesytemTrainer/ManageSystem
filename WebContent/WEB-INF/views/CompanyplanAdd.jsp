<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/18
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>公司计划添加</title>
    <style>
        tr td{
            width: 310px;
        }
        tr td input{
            width: 260px;
        }
    </style>
</head>
<body>
<fieldset style="width: 37%;height: 50%;margin: 0 auto;">
    <legend>县公司计划添加</legend>
    <form id="myform" name="myform" method="get" action="${path}/update" enctype="multipart/form-data">
        <table>
            <tr>
                <td><input type="hidden" id="id" name="id" value=""></td>
            </tr>
            <tr>
                <td>计划名</td>
                <td><input type="text" id="planName" name="planName"></td>
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
                <td>编制日期</td>
                <td><input type="text" id="birthday" name="designDate"></td>
            </tr>
            <tr>
                <td>编制人姓名</td>
                <td><input type="text" id="mobile" name="designer"></td>
            </tr>
            <tr>
                <td>网点类型</td>
                <td><input type="text" id="phone" name="webType"></td>
            </tr>
            <tr>
                <td>季节</td>
                <td><input type="text" id="email" name="season"></td>
            </tr>
            <tr>
                <td>每人每月最少走访次数</td>
                <td><input type="text" id="state" name="personTimes"></td>
            </tr>

            <tr>
                <td>合计最少次数</td>
                <td><input type="text" id="department" name="totalTimes"></td>
            </tr>
            <tr>
                <td>每人每月收集最少信息数</td>
                <td><input type="text" id="role" name="personCollections"></td>
            </tr>
            <tr>
                <td>备注</td>
                <td><input type="text" id="remark" name="remark"></td>
            </tr>
            <tr>
                <td>编制人</td>
                <td><input type="text" id="departmentName"  name="user"></td>
            </tr>
            <tr>
                <td>状态</td>
                <td><input type="text" id="state"  name="state"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" id="affirm" style="margin-top: 12px;" value="确认添加"></td>
            </tr>
        </table>
    </form>
</fieldset>
</body>
</html>