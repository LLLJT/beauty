<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的信息</title>

	<link href="../../css/bootstrap.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900|Dancing+Script:400,700|Raleway:400,100,300,700,900|Reenie+Beanie&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href="../../css/users/userspace_style.css" rel="stylesheet">
    
    <link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <link href="../../css/dtpicker/base.css"  rel="stylesheet" />
    <link href="../../css/dtpicker/tempusdominus-bootstrap-4.css"  rel="stylesheet" />

</head>
<body>
	<div class="section-inner">
		<div class="container">
			<div class="row mb60 text-center">
				<div class="col-sm-6 text-left match-height">
					<h3 class="section-title">我的信息</h3>
				</div>
			</div>

			<div class="col-lg-12 mb-5 mr-5">
				<div class="card">
					<div class="card-header">
						<h3 class="h4 text-uppercase mt-3">修改个人信息</h3>
					</div>
					<div class="card-body">
							
						<form class="form-horizontal">
						
							<div class="form-group row">
								<label class="col-md-3 form-control-label">用户ID</label>
								<div class="col-md-9">
									<input type="text" disabled="disabled" placeholder="Disabled input here..." class="form-control">
								</div>
							</div>
							
							<div class="form-group row">
								<label class="col-md-3 form-control-label">用户名<em style="color: red;">*</em></label>
								<div class="col-md-9">
									<input type="text" placeholder="Input your username here..." class="form-control" required>
								</div>
							</div>
							
							<div class="form-group row">
								<label class="col-md-3 form-control-label">性别</label>
								<div class="col-md-9 select">
									<select name="account" class="form-control" style="height: auto;" >
										<option>Male</option>
										<option>Female</option>
									</select>
								</div>
							</div>

							<div class="form-group row">
								<label class="col-md-3 form-control-label">生日</label>
								<div class="col-md-9">
								<div class="input-group date" id="datetimepicker1"
									data-target-input="nearest">
									<input type="text" class="form-control datetimepicker-input"
										data-target="#datetimepicker1" placeholder="Choose your birthday..."/>
									<div class="input-group-append" data-target="#datetimepicker1"
										data-toggle="datetimepicker">
										<div class="input-group-text">
											<i class="fa fa-calendar"></i>
										</div>
									</div>
								</div>
								</div>
							</div>
							
							<div class="form-group row">
								<label class="col-md-3 form-control-label">学校</label>
								<div class="col-md-9">
									<input type="text" class="form-control" placeholder="Input your school...">
								</div>
							</div>
							<div class="line"></div>
							<div class="form-group row">
								<label class="col-md-3 form-control-label">地址</label>
								<textarea class="col-md-9 form-control" placeholder="Input your address..."></textarea>
							</div>
							<div class="form-group row mt-5">
								<div class="col-md-9 ml-auto">
									<button type="submit" class="btn btn-secondary" style="margin-right:100px;">取消</button>
									<button type="submit" class="btn btn-primary">提交</button>
								</div>
							</div>

						</form>



					</div>
				</div>
			</div>

		</div>
	</div>

	<!-- JavaScript files-->
	<script src="../../js/jquery/jquery.min.js"></script>
	<script src="../../js/popper.js/umd/popper.min.js"></script>
	<script src="../../js/bootstrap/bootstrap.min.js"></script>
	<script src="../../js/jquery.cookie/jquery.cookie.js"> </script>
	<script src="../../js/js.cookie.min.js"></script>
	<script src="../../js/front.js"></script>

	<script src="../../js/dtpicker/moment-with-locales.min.js"></script>
	<script src="../../js/dtpicker/tempusdominus-bootstrap-4.js"></script>
	<script src="../../js/dtpicker/moment-timezone-with-data-2012-2022.min.js"></script>
	<script src="../../js/dtpicker/base.js"></script>

	<script type="text/javascript">
		$(function() {
			$('#datetimepicker1').datetimepicker();
		});
	</script>
</body>
</html>