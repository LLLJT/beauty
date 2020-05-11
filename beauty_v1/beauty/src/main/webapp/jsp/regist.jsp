<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
<% String path = request.getContextPath();%>
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="<%=path%>/css/bootstrap.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<!-- Google fonts - Popppins for copy-->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
<!-- theme stylesheet-->
<link rel="stylesheet" href="<%=path%>/css/style.default.css" id="theme-stylesheet">

<link rel="stylesheet" href="<%=path%>/css/users/regist.css">

</head>
<body>
	<div class="page-holder d-flex align-items-center">
		<div class="container">
			<div class="row align-items-center py-5">
				<div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
					<div class="pr-lg-5">
						<img src="<%=path%>/images/illustration.svg" alt="" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-5 px-lg-4">
					<h1 class="text-base text-primary text-uppercase mb-4">美，一眼望穿</h1>
					<h2 class="mb-4">用户注册</h2>

					<form class="mt-4" method="post" id="RegisterForm">

                        <div class="form-group mb-4">
                            <em style="color: red;">*</em>
                            <input type="text" name="username" placeholder="输入您的登录名" id="username" class="form-control border-0 shadow form-control-lg form-required">
                        </div>

                        <div class="form-group mb-4">
                            <em style="color: red;">*</em>
                            <input type="password" name="password" placeholder="输入您的密码" id="password" class="form-control border-0 shadow form-control-lg text-violet form-required">
                        </div>
                        <div class="form-group mb-4">
                            <em style="color: red;">*</em>
                            <input type="password" name="password1" placeholder="请再次输入您的密码" id="password1" class="form-control border-0 shadow form-control-lg text-violet form-required">
                        </div>

                        <div class="form-group mb-4">
                            <em style="color: red;">*</em>
                            <input type="text" name="roleid" placeholder="输入您的角色" id="roleid" class="form-control border-0 shadow form-control-lg form-required" list="rolelist">
                            <datalist id="rolelist">
								<option>admin</option>
								<option>user</option>
								<option>uploader</option>
							</datalist>

						</div>
						<div class="form-group mb-4">
							<input type="text" name="sex" placeholder="输入您的性别" id="sex" class="form-control border-0 shadow form-control-lg" list="sexlist">
							<datalist id="sexlist">
								<option>男</option>
								<option>女</option>
							</datalist>
						</div>
						<div class="form-group mb-4">
							<input type="date" name="birthday" placeholder="输入您的生日" id="birthday" class="form-control border-0 shadow form-control-lg">
						</div>
						<div class="form-group mb-4">
							<input type="text" name="school" placeholder="输入您的学校" id="school" class="form-control border-0 shadow form-control-lg">
						</div>
						<div class="form-group mb-4">
							<input type="text" name="introduction" placeholder="输入您的个人介绍" id="introduction" class="form-control border-0 shadow form-control-lg">
						</div>
						<div class="form-group mb-4">
							<div class="custom-control custom-checkbox">
								<input id="customCheck1" type="checkbox" checked class="custom-control-input"> <label for="customCheck1" class="custom-control-label">记住密码</label>
							</div>
						</div>
						<div></div>

						<h5 style="color: red">${errMsg}</h5>
					</form>
					<button type="submit" id="regbtn" class="btn btn-primary shadow px-5" id="regbtn">注册</button>
				</div>
			</div>
			<p class="mt-5 mb-0 text-gray-400 text-center">Copyright &copy; 2020. reachableBeauty All rights reserved.</p>
		</div>
	</div>
	<!-- JavaScript files-->
	<script src="../js/jquery/jquery-1.11.0.min.js"></script>
	<!-- <script src="../js/jquery/jquery.min.js"></script> -->

	<script src="../js/popper.js/umd/popper.min.js"></script>
	<!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
	<script src="../js/bootstrap/bootstrap.min.js"></script>
	<script src="../js/jquery.cookie/jquery.cookie.js">
		
	</script>
	<!-- <script src="vendor/chart.js/Chart.min.js"></script> -->
	<script src="../js/js.cookie.min.js"></script>
	<script src="../js/front.js"></script>

	<script type="text/javascript">
		$("#regbtn")
				.click(
						function() {
							var username = $("#username").val();
							var password = $("#password").val();
							var password1 = $("#password1").val();

							var roleid = $("#roleid").val();
							var sex = $("#sex").val();
							var birthday = $("#birthday").val().toString();
							var school = $("#school").val();
							var introduction = $("#introduction").val();
							//判断username,password,roleid是否为空
							if (username == "" || password == "" || roleid == "") {
								alert("必填字段不能为空");
								return false;
							}
							//判断两次密码是否一致
							if (password != password1) {
								alert("两次密码输入不一致");
								return false;
							}
							//判断用户名长度应该在6-16位
							if(username.length>16){
								alert("用户名长度应少于16位");
								return false;
								
							}
							
							//判断密码应该在6-16位
							if(password.length<6||password.length>16){
								alert("密码长度应该在6-16位");
								return false;
								
							}

							//将输入的性别转换为0和1，男为1，女为0
							if (sex == "男")
								sex = 1;
							else
								sex = 0;
							//转换rolename,admin为1，user为2，uploader为3
							if (roleid == "admin")
								roleid = 1;
							else if (roleid == "user")
								roleid = 2;
							else
								roleid = 3;

							var data1 = {
								"username" : username,
								"password" : password,
								"roleid" : roleid,
								"sex" : sex,
								"birthday" : birthday,
								"school" : school,
								"introduction" : introduction
							};
							//测试传入的json字符串是否正确
							//alert(JSON.stringify(data1));
							//alert($("#RegisterForm").serialize());

							$.ajax({
										url : '<%=path%>/user/regist',
										type : 'POST',
										data : JSON.stringify(data1),
										contentType : 'application/json',
										success : function(result) {
											alert("注册成功,自动转到登录页面");
											window.location.href = "<%=path%>/user/tologin";
										}
									});
						});
	</script>



</body>
</html>
