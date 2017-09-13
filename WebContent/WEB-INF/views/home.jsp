<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/13
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="ManageSesytem-master/WebContent/resource/css/bootstrap.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <script type="text/javascript" src="ManageSesytem-master/WebContent/resource/js/jquery-1.11.3.js"></script>
    <script>
        $(function () {
            $("#menu li").click(function () {
                $(this).addClass("active").siblings().removeClass("active");
                var index=$(this).index();
                $(".tex-box>div").eq(index).show().siblings().hide();
            })
            $("#list-menu a").click(function () {
                $(this).addClass("active").siblings().removeClass("active");
            })
        })
    </script>
    <style>
        .tex-box>div{display: none;}
        .tex-box>div:first-child{
            display: block;
        }
    </style>
</head>
<body>
<!--顶部-->
<div class="row">
    <div class=" col-md-12 ">
        <div class="page-header">
            <h1 style="color: #69a6ff;margin-left:50px; " >邮政分公司外勤管理系统</h1>
            <h4 style="color: #69a6ff; float: right;margin-right: 20px;">欢迎您...</h4>
        </div>
    </div>
</div>

<!-- 主体-->
<div class="row" style="height: 763px">
    <div class=" col-md-2" style="background-color:#69a6ff; height: inherit"></div>
    <div class=" col-md-8">
        <div class="row">
            <div class=" col-md-12">
                <!--标签-->
                <ul class="nav nav-pills" id="menu">
                    <li role="presentation" class="active"><a href="#">首页</a></li>
                    <li role="presentation"><a href="#" >走访计划</a></li>
                    <li role="presentation"><a href="#" >走访信息</a></li>
                    <li role="presentation"><a href="#" >统计信息</a></li>
                    <li role="presentation"><a href="#" >用户信息</a></li>
                    <li role="presentation"><a href="#" >部门信息</a></li>
                </ul>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <!--标签容器-->
                <div class="tex-box" >
                    <div class="list-group"  id="list-menu">
                        <a href="#" class="list-group-item active">
                            Cras justo odio
                        </a>
                        <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
                        <a href="#" class="list-group-item">Morbi leo risus</a>
                        <a href="#" class="list-group-item">Porta ac consectetur ac</a>
                        <a href="#" class="list-group-item">Vestibulum at eros</a>
                        <a href="#" class="list-group-item">Vestibulum at eros</a>
                        <a href="#" class="list-group-item">Vestibulum at eros</a>
                        <a href="#" class="list-group-item">Vestibulum at eros</a>
                        <a href="#" class="list-group-item">Vestibulum at eros</a>
                        <a href="#" class="list-group-item">Vestibulum at eros</a>
                        <a href="#" class="list-group-item">Vestibulum at eros</a>
                    </div>
                    <div>
                        <table class="table table-striped">
                            <thead>走访计划</thead>
                            <tr>
                                <th></th>
                            </tr>
                            <tr>
                                <th></th>
                            </tr>
                            <tr>
                                <th></th>
                            </tr>
                        </table>
                    </div>
                    <div>
                        <table class="table table-striped">
                            <thead>走访信息</thead>
                            <tr>
                                <th></th>
                            </tr>
                            <tr>
                                <th></th>
                            </tr>
                            <tr>
                                <th></th>
                            </tr>
                        </table>
                    </div>
                    <div>
                        <table class="table table-striped">
                            <thead>统计信息</thead>
                            <tr>
                                <th></th>
                            </tr>
                            <tr>
                                <th></th>
                            </tr>
                            <tr>
                                <th></th>
                            </tr>
                        </table>
                    </div>
                    <div>
                        <table class="table table-striped">
                            <thead>用户信息</thead>
                            <tr>
                                <th></th>
                            </tr>
                            <tr>
                                <th></th>
                            </tr>
                            <tr>
                                <th></th>
                            </tr>
                        </table>
                    </div>
                    <div>
                        <table class="table table-striped">
                            <thead>部门信息</thead>
                            <tr>
                                <th></th>
                            </tr>
                            <tr>
                                <th></th>
                            </tr>
                            <tr>
                                <th></th>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class=" col-md-2"  >
        <a href="#"><p style="text-align: center;color: #69a6ff ">退出<span class="glyphicon glyphicon-log-out" ></span></p>
        </a>
    </div>
</div>

<!-- Columns are always 50% wide, on mobile and desktop -->


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="ManageSesytem-master/WebContent/resource/js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="ManageSesytem-master/WebContent/resource/js/bootstrap.min.js"></script>
</body>
</html>
