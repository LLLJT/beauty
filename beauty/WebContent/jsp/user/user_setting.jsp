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
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900|Dancing+Script:400,700|Raleway:400,100,300,700,900|Reenie+Beanie&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href="../../css/users/userspace_style.css" rel="stylesheet"> 
    <link href="../../css/users/custom.css" rel="stylesheet">
    
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
						    <input type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01" placeholder="Upload your profile pic..."  >
						    <label class="custom-file-label" for="inputGroupFile01">选择图片</label>
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
								<label class="form-control-label">旧密码<em style="color: red;">*</em></label>
								<input type="password" class="form-control" placeholder="Input your old password..." required="required">
							</div>
							<div class="form-group">
								<label class="form-control-label">新密码<em style="color: red;">*</em></label>
								<input type="password" class="form-control" placeholder="Input your new password..。" required="required">
							</div>
							<div class="form-group">
								<label class="form-control-label">确认密码<em style="color: red;">*</em></label>
								<input type="password" class="form-control" placeholder="Confirm your password..。" required="required">
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary">确认修改</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>