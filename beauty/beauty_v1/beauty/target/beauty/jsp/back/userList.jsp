<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>后台管理中心</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	data-integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	data-crossorigin="anonymous">
<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
	data-integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	data-crossorigin="anonymous">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
	data-integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	data-crossorigin="anonymous"></script>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->

</head>
<body>
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">后台管理中心</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">主页 <span class="sr-only">(current)</span></a></li>
					<li><a href="#"></a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">用户管理 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">用户信息管理</a></li>
							<li><a href="#">管理员管理</a></li>
							<li><a href="#">角色权限管理</a></li>

						</ul></li>


					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">文章管理 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">文章列表</a></li>
							<li><a href="#">分类管理</a></li>


						</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">管理员权限 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">管理员列表</a></li>
							<li><a href="#">角色管理</a></li>
	

						</ul></li>
						
						
						
						
				</ul>



				<form class="navbar-form navbar-left">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">欢迎登录,</a></li>
				</ul>

			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<h1>用户管理界面</h1>
	<div class="row">
		<div class="col-md-12">
			<ul class="breadcrumb">
				<li><a href="#">主页</a></li>
				<li><a href="#">用户</a></li>
				<li class="active">用户详细信息</li>
			</ul>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#myModal">添加用户</button>

			<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">创建用户</h4>
						</div>
						<div class="modal-body">
							<form class="form-inline">

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="exampleInputName2">用户名:</label> <input
												type="text" class="form-control" id="exampleInputName2"
												placeholder="请输入用户名">
										</div>

									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="exampleInputName2">密码:</label> <input type="text"
												class="form-control" placeholder="请输入密码">
										</div>
									</div>
								</div>


								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="exampleInputName2">性別：</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="optionsRadios"
												id="optionsRadios1" value="option1" checked="checked">男
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="optionsRadios"
												id="optionsRadios2" value="option2">女
											</label>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="exampleInputName2">生日</label> <input
												type="datetime" class="form-control" placeholder="请输入生日">
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="exampleInputName2">学校</label> <input type="text"
												class="form-control" placeholder="请输入学校">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="exampleInputName2">个人介绍</label>
											<textarea class="form-control" rows="3"></textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label for="exampleInputFile">个人头像</label> <input type="file"
												id="exampleInputFile">
											<p class="help-block">球球你们传个png/jpg/svg/gif文件吧!!</p>
										</div>
									</div>

								</div>


							</form>
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="button" class="btn btn-primary">创建用户</button>
						</div>
					</div>

				</div>
			</div>
		</div>


		<div class="col-md-4">
			<form class="form-inline">
				<div class="form-group">
					<label for="exampleInputName2">用户名：</label> <input type="text"
						class="form-control" id="exampleInputName2" placeholder="Jane Doe">
				</div>
				<button type="submit" class="btn btn-default">查询用户</button>
			</form>
		</div>
		<div class="col-md-4"></div>
		<div class="col-md-2"></div>

	</div>
	<div class="row">
		<div class="col-md-12">
			<table class="table">
				<tr>
					<th>id</th>
					<th>username</th>
					<th>password</th>
					<th>roleid</th>
					<th>sex</th>
					<th>birthday</th>
					<th>school</th>
					<th>introduction</th>
					<th>profileimg</th>
					<th>del_flag</th>
					<th>编辑</th>
					<th>删除</th>
				</tr>
				<tr>
					<td>1</td>
					<td>admin</td>
					<td>admin</td>
					<td>1</td>
					<td>1</td>
					<td>2000/1/1</td>
					<td>HHH School</td>
					<td>dioooo</td>
					<td></td>
					<td>1</td>
					<td><button type="button" class="btn btn-primary">编辑</button></td>
					<td><button type="button" class="btn btn-danger">删除</button></td>
				</tr>
				<!-- 向后添加数据，从数据库导入 -->



			</table>

		</div>
	</div>
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<nav aria-label="Page navigation">
				<ul class="pagination">
					<li>
					<li class="disabled"><a href="#" aria-label="Previous"><span
							aria-hidden="true">&laquo;</span></a></li>
					<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#" aria-label="Next"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
		</div>
		<div class="col-md-4"></div>
	</div>




</body>
</html>