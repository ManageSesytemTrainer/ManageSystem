function login(path){
	var user=$("#username").val()||'';
	var pwd=$("#pwd").val()||'';
	var sign=new Date().getTime();
	pwd=hex_md5(user,hex_md5(pwd));
	console.info(pwd);
	$.ajax({
		url: path+'/userlogin',
		type:'post',
		data:{
			username:user,
			password:pwd,
			sign:sign
		},
	success:function(data){
		if(data=='success')
			window.href="${path}/home";
		else if(data=='none'){
			alert("该用户不存在");
		}
		else{
			alert("密码错误");
		}
	},
	error:function(data){
		alert(data);
	}
		
	});
	
}

