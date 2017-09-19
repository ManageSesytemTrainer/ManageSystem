<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/16
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" scope="request" />
<html>
<head>
<meta charset="utf-8">
<title>部门信息修改</title>
<%--  <script type="text/javascript"	src="${path}/resource/js/jquery-1.11.3.js"></script>
 --%>
<script type="text/javascript" src="${path}/resource/js/jquery.min.js"></script>
<script type="text/javascript"	src="${path}/resource/js/departmentAjax.js"></script> 
</head>
<style type="text/css">
table {
    margin: 0 auto;
}

input {
    width: 260px;
    height: 30px;
}
</style>
<body>
	<fieldset style="width: 50%; height: 50%; margin: 0 auto;">
		<legend>部门信息修改</legend>
		<form id="myform" name="myform" method="post" action="${path}/updateDe"
			enctype="multipart/form-data">
			<table>
				<tr>
				<td><input type="hidden" id="id" name="id"></td>
				</tr>
				<tr>
					<td>部门名称：</td>
					<td><input type="text" id="departmentName" name="departmentName" ></td>
				</tr>
				<tr>
					<td>联系电话：</td>
					<td><input type="text" id="phone" name="phone" ></td>
				</tr>
				<tr>
					<td>部门状态：</td>
					<td><input type="text" id="state" name="state" ></td>
				</tr>
				<tr>
					
					<td colspan="2" style="text-align: center;"><input type="submit" id="affirm" value="确认修改"></td>
					
				</tr>
			</table>
		</form>
	</fieldset>
</body>
<script type="text/javascript">
  var id=getParameterByName("departmentId");
  console.info(id);
  $('#id').val=id;
  if(id>-1){
	  $.ajax({
		 url:'${path}/departments',
		 data:{id:id},
		 type:'post',
		 dataType:'json',
		 success:function(data){
			 console.info(data);
			 document.getElementById("departmentName").value =data.rows[0].departmentName;
		     document.getElementById("phone").value = data.rows[0].phone;
			 document.getElementById("state").value=data.rows[0].state;
		 },
		 error:function(){
			alert("对不起，好像哪儿出错了"); 
		 }
	  });
  }
  function getParameterByName(name)  
  {  
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");  
    var regexS = "[\\?&]" + name + "=([^&#]*)";  
    var regex = new RegExp(regexS);  
    var results = regex.exec(window.location.search);  
    if(results == null)  
      return "";  
    else  
      return decodeURIComponent(results[1].replace(/\+/g, " "));  
  }  
</script>
</html>
