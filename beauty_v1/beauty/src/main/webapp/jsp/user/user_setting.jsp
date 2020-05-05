<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的设置</title>

<link href="../../css/bootstrap.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<link
	href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900|Dancing+Script:400,700|Raleway:400,100,300,700,900|Reenie+Beanie&subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>
<link href="../../css/users/userspace_style.css" rel="stylesheet">

<!-- 404not found,因此注释掉 -->
<!-- 
<link href="../../css/users/custom.css" rel="stylesheet">
 -->
</head>
<body>
	<div class="section-inner">
		<div class="container">
			<div class="row mb60 text-center">
				<div class="col-sm-6 text-left match-height">
					<h3 class="section-title">我的设置</h3>
				</div>
			</div>

			<!-- 上传头像 -->
			<div class="col-lg-6 mb-5">
				<div class="card mb-4">
					<div class="card-header">
						<h3 class="h4 mt-3">修改头像</h3>
					</div>
					<div class="card-body">
						<div class="input-group mb-4">
							<div class="custom-file">
								<input type="file" class="custom-file-input"
									id="inputGroupFile01" aria-describedby="inputGroupFileAddon01"
									placeholder="Upload your profile pic..."> <label
									class="custom-file-label" for="inputGroupFile01">选择图片</label>
							</div>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary">确认修改</button>
						</div>
					</div>
				</div>

				<div class="card">
					<div class="card-header">
						<h3 class="h4 mt-3">修改密码</h3>
					</div>
					<div class="card-body">
						<form>
							<div class="form-group">
								<label class="form-control-label">旧密码<em
									style="color: red;">*</em></label> <input type="password"
									id=oldpassword class="form-control"
									placeholder="Input your old password..." required="required">
							</div>
							<div class="form-group">
								<label class="form-control-label">新密码<em
									style="color: red;">*</em></label> <input type="password" id=password
									class="form-control" placeholder="Input your new password..。"
									required="required">
							</div>
							<div class="form-group">
								<label class="form-control-label">确认密码<em
									style="color: red;">*</em></label> <input type="password" id=password1
									class="form-control" placeholder="Confirm your password..。"
									required="required">
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary" id="update_btn">确认修改</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- JavaScript files-->
	<script src="../../js/jquery/jquery.min.js"></script>
	<script src="../../js/popper.js/umd/popper.min.js"> </script>
	<!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
	<script src="../../js/bootstrap/bootstrap.min.js"></script>
	<script src="../../js/jquery.cookie/jquery.cookie.js"> </script>
	<!-- <script src="vendor/chart.js/Chart.min.js"></script> -->
	<script src="../../js/js.cookie.min.js"></script>
	<script src="../../js/front.js"></script>
	<script type="text/javascript">
	$(function(){
		var cookiestr=getCookie("user");
		if(cookiestr!=""){
			
			var cookieid=cookiestr.split("#")[2];
			/* 
			alert("cookie里面字符串为"+cookiestr);
			alert("当前用户id为："+cookieid);	
		 */
		 }
	});
	//获取cookiehttps://blog.csdn.net/weixin_44540229/article/details/86519297
	function getCookie(cookiename){
		var name=cookiename+"=";
		var str=document.cookie.split(';');
		var le=str.length;
		for(var i=0;i<str.length;i++){
			var ind=str[i];
			while (ind.charAt(0)==' ')
				ind=ind.substring(1);
			
			var saf=ind.length;
			if(ind.indexOf(name)!=-1)return ind.substring(name.length,ind.length);

		}
		return "";
		
	};
	$("#update_btn").click(function(){
		//旧密码传到后端进行比较
		var password1=$("#password1").val();
		var password=$("#password").val();
	var oldpassword=$("#oldpassword").val();
	//获取cookie中的id值
/* 	
	alert("id为："+getCookie("user").split("#")[2]);
	alert("password为："+getCookie("user").split("#")[1]);
	 */
	var cookieid=getCookie("user").split("#")[2];
	 //从cookie中获取的pwd就是登录密码，与旧密码比较
	var cookiepwd=getCookie("user").split("#")[1];
	if(cookiepwd!=oldpassword){
		alert("旧密码不正确，无法进行修改操作");
		return false;
	}
	if(password1!=password){
		alert("两次输入的密码不一致,请重新输入");
		return false;
	}
	if(oldpassword==password||oldpassword==password1){
		alert("新旧密码不能相同!");
		return false;
	}
	if(password.length<6||password.length>16){
		alert("新密码长度应该在6-16位");
		return false;
		
	}
	var id=parseInt(cookieid);
	//id获取时是string型，这里转为int型
	//alert("id类型为"+typeof(parseInt(id)));
	//定义传到后端的数据
	var data1={
			"password":password,
			"id":id
	};
	$.ajax({
			url : '${pageContext.request.contextPath}/center/modifypwd',
			type : 'POST',
			data : JSON.stringify(data1),
			contentType : 'application/json',
			success : function(result) {
			alert("密码修改成功，即将返回个人中心");
			window.location.href = "${pageContext.request.contextPath}/center/tocenter";
	}
	});
	 
	alert("密码修改成功");
	});
	
	
	
	
	</script>

</body>
</html>