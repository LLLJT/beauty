<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的信息</title>
<%
	String path = request.getContextPath();
%>
<link href="<%=path%>/css/bootstrap.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900|Dancing+Script:400,700|Raleway:400,100,300,700,900|Reenie+Beanie&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
<link href="<%=path%>/css/users/userspace_style.css" rel="stylesheet">

<link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

<link href="<%=path%>/css/dtpicker/base.css" rel="stylesheet" />
<link href="<%=path%>/css/dtpicker/tempusdominus-bootstrap-4.css" rel="stylesheet" />

</head>

<body>

	<div class="section-inner">
		<div class="container">
			<div class="row mb60 text-center">
				<div class="col-sm-6 text-left match-height">
					<h3 class="section-title">我的信息</h3>
					<a name="infostart"></a>
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
									<input type="text"  id="id" name="id" disabled="disabled" placeholder="Disabled input here..." class="form-control" >
								</div>
							</div>

							<div class="form-group row">
								<label class="col-md-3 form-control-label">用户名<em style="color: red;">*</em></label>
								<div class="col-md-9">
									<input type="text" id="username" placeholder="Input your username here..." class="form-control" required>
								</div>
							</div>

							<div class="form-group row">
								<label class="col-md-3 form-control-label">性别</label>
								<div class="col-md-9 select">
									<select name="account" id="sex" class="form-control" style="height: auto;">
										<option value="1">男性</option>
										<option value="0">女性</option>
									</select>
								</div>
							</div>

							<div class="form-group row">
								<label class="col-md-3 form-control-label">生日</label>
								<div class="col-md-9">
									<div class="input-group date" id="datetimepicker1" data-target-input="nearest">
										<input type="text" id="birthday" class="form-control datetimepicker-input" data-target="#datetimepicker1" placeholder="Choose your birthday..."  />
										<div class="input-group-append" data-target="#datetimepicker1" data-toggle="datetimepicker">
											<div class="input-group-text"><i class="fa fa-calendar"></i></div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-group row">
								<label class="col-md-3 form-control-label">学校</label>
								<div class="col-md-9">
									<input type="text" id="school" class="form-control" placeholder="Input your school..."  value="${user[0]['school']}">
								</div>
							</div>
							<div class="line"></div>
							<div class="form-group row">
								<label class="col-md-3 form-control-label">个性签名</label>
								<textarea id="introduction" class="col-md-9 form-control" placeholder="Input your personal signature..."></textarea>
							</div>
							
							<input type="hidden" id="roleid">
							
							<div class="form-group row mt-5">
								<div class="col-md-9 ml-auto">
									<button type="button" class="btn btn-secondary" style="margin-right: 100px;">取消</button>
									<button type="button" class="btn btn-primary" id="upinfo_btn">提交</button>
								</div>
							</div>

						</form>

					</div>
				</div>
			</div>

		</div>
	</div>

	<!-- JavaScript files-->
	<script src="<%=path%>/js/jquery/jquery.min.js"></script>
	<script src="<%=path%>/js/popper.js/umd/popper.min.js"></script>
	<script src="<%=path%>/js/bootstrap/bootstrap.min.js"></script>
	<script src="<%=path%>/js/jquery.cookie/jquery.cookie.js"></script>
	<script src="<%=path%>/js/js.cookie.min.js"></script>
	<script src="<%=path%>/js/front.js"></script>

	<script src="<%=path%>/js/dtpicker/moment-with-locales.min.js"></script>
	<script src="<%=path%>/js/dtpicker/tempusdominus-bootstrap-4.js"></script>
	<script src="<%=path%>/js/dtpicker/moment-timezone-with-data-2012-2022.min.js"></script>
	<script src="<%=path%>/js/dtpicker/base.js"></script>
	<script src="<%=path%>/js/custom/getcookie.js"></script>

	<!-- 重构：页面重构时load user data，使用ajax -->
	<script type="text/javascript">
	$(function() {
		
		$('#datetimepicker1').datetimepicker({
			format : "YYYY-MM-DD",
			maxDate:new Date()
		});
		
		//cookie中读取的username
		var cookiestr = getCookie("user");
		var cookieid = cookiestr.split("#")[2];
		var id = parseInt(cookieid);
		var cookiename = cookiestr.split("#")[0];

		/* $("#id").val(id);
		$("#username").val(cookiename); */
		doajax(id);

		$("#upinfo_btn").click(function() {

			var newusername = $("#username").val();
			var getsex = $("#sex").val();
			var sex = parseInt(getsex)
			//birthday为date字段，需要转换成string型
			var birthday = $("#birthday").val();
			var school = $("#school").val();
			var introduction = $("#introduction").val();
			var getid = $("#id").val();
			var id=parseInt(getid);
			var getrole = $("#roleid").val();
			var roleid=parseInt(getrole);
			var cookiestr = getCookie("user");
			var password=cookiestr.split("#")[1];
			
			if (username == null) {
				alert("请输入用户名");
				return false;
			}
			/* if(birthday==""||birthday==null){
				alert("birthday字段为空,birthday类型为"+typeof(birthday));
				return false;
			}
			if(introduction==""||introduction==null){
				alert("introduction字段类型为空，且类型为"+typeof(introduction))
			} */
			
			var postdata = {
				"id" : id,
				"password":password,
				"username" : newusername,
				"sex" : sex,
				"birthday" : birthday,
				"introduction":introduction,
				"school" : school,
				"roleid" : roleid
			};
			//alert("postdata:" +JSON.stringify(postdata));
			console.info(JSON.stringify(postdata))

			$.ajax({
				url : "${pageContext.request.contextPath}/center/updateInfo",
				type : 'POST',
				data : JSON.stringify(postdata),
				contentType : 'application/json',
				success : function(result) {
					alert("修改数据成功");
					//window.location.href = "${pageContext.request.contextPath}/user/tologin";
					location.href="#infostart"
				},
				error:function(){
					alert("修改失败");
				}
			});
	});
		
	});
	
	function doajax(id) {
		$.ajax({
			url: 'loaduserinfo',
			type: 'post',
			dataType:'JSON',
			data:{"userid": id }  ,
			success:function(response,status,xhr){
				console.log(response)
				console.log(status)
				console.log(xhr)
				afterajax(response)
			},
			error:function(){
				alert("error");
			}
		});		
	}
	
	function afterajax(data) {
		$("#id").val(data.cuser.id);
		$("#username").val(data.cuser.username);
		$("#roleid").val(data.cuser.roleid);
		var sex=data.cuser.sex
		var birthday=data.cuser.birthday
		var bdate=new Date()
		var school=data.cuser.school
		var introduction=data.cuser.introduction
		
		$("#sex").val(parseInt(sex))
		if(birthday!=null){
			bdate=new Date(parseInt(birthday));
		}
		$("#school").val(school)
		if (introduction!=""){
			$("#introduction").val(introduction)
		}		

		var year = bdate.getFullYear();
		var month = bdate.getMonth()+1;
		var day = bdate.getDate();
		month = month < 10 ? "0"+month:month;
		day = day < 10 ? "0"+day:day;
		var date = year+'-'+month+'-'+day;
		/* console.info("bdate:"+bdate)
		console.info("date:"+date) */
		$("#birthday").val(date)
	}
		

	

	
	</script>
</body>
</html>