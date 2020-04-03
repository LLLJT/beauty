<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>权限管理</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<!-- Google fonts - Popppins for copy-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
<!-- orion icons-->
<link rel="stylesheet" href="css/orionicons.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon" href="img/favicon.png?3">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
	<!-- navbar-->
	<header class="header">
		<script type="text/javascript" src="js/navigation.js"></script>
	</header>
	<div class="d-flex align-items-stretch">
		<div id="sidebar" class="sidebar py-3">
			<script type="text/javascript" src="js/sidebar/head_1.js"></script>
			<script type="text/javascript" src="js/sidebar/goods_2.js"></script>
			<script type="text/javascript" src="js/sidebar/orders_3.js"></script>
			<script type="text/javascript" src="js/sidebar/user_4.js"></script>

			<li class='sidebar-list-item'>
			<a href='admin.jsp' class='sidebar-link text-muted active'> 
			<i class='o-wireframe-1 mr-3 text-gray'></i> 
			<span>权限管理</span>
			</a></li>
			</ul>

		</div>

      <div class="page-holder w-100 d-flex flex-wrap">
        <div class="container-fluid px-xl-5">
          <section class="py-5">
            <div class="col">
       		<!-- Modal Form-->
       		<div class="mb-4">
       		<button type="button" data-toggle="modal" data-target="#myModal"
				class="btn btn-primary">修改密码</button>
       		</div>
			<!-- Modal-->
			<div id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true"
				class="modal fade text-left">
				<div role="document" class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 id="exampleModalLabel" class="modal-title">修改密码</h4>
							<button type="button" data-dismiss="modal" aria-label="Close"
								class="close">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div class="modal-body">
							<form>
								<div class="form-group">
									<label>密码</label> <input type="password"
										placeholder="Input your password." class="form-control">
								</div>
								<div class="form-group">
									<label>重复密码</label> <input type="password"
										placeholder="Repeat your password." class="form-control">
								</div>
								<div class="form-group">
									<input type="submit" value="保存修改" class="btn btn-primary">
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" data-dismiss="modal"
								class="btn btn-secondary">关闭</button>
							<!-- <button type="button" class="btn btn-primary">Save
								changes</button> -->
						</div>
					</div>
				</div>
			</div>

				<!-- Basic Form-->
              <div class="row-lg-6 mb-5">
                <div class="card">
                  <div class="card-header">
                    <h3 class="h6 text-uppercase mb-0">个人中心</h3>
                  </div>
                  <div class="card-body">
                    <p>缺少admin个人信息表</p>
                    <form>
                      <div class="form-group">
                        <label class="form-control-label text-uppercase">Email</label>
                        <input type="email" placeholder="Email Address" class="form-control">
                      </div>
                      <div class="form-group">       
                        <label class="form-control-label text-uppercase">Password</label>
                        <input type="password" placeholder="Password" class="form-control">
                      </div>
                      <div class="form-group">       
                        <button type="submit" class="btn btn-primary">Log in</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>

              <!-- Inline Form-->
              <div class="col-lg-8 mb-5">                           
                <div class="card">
                  <div class="card-header">
                    <h3 class="h6 text-uppercase mb-0">权限管理</h3>
                  </div>
                  <div class="card-body">
                    <form class="form-inline" action="root.jsp">
                      <div class="form-group">
                        <label for="inlineFormInput" class="sr-only">超级用户名</label>
                        <input id="inlineFormInput" type="text" placeholder="Root Name" class="mr-3 form-control">
                      </div>
                      <div class="form-group">
                        <label for="inlineFormInputGroup" class="sr-only">密码</label>
                        <input id="inlineFormInputGroup" type="password" placeholder="Password" class="mr-3 form-control">
                      </div>
                      <div class="form-group">
                        <button type="submit" class="btn btn-primary">确认授权</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
		<p>↑输入最高级别admin的账户与密码，提交后跳转到admin管理界面。</p>

            </div>
          </section>
        </div>

			<!-- footer begin -->
			<script type="text/javascript" src="js/footer.js"></script>
			<!-- footer end -->

		</div>
	</div>
	<!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="js/js.cookie.min.js"></script>
    <script src="js/charts-home.js"></script>
    <script src="js/front.js"></script>
  </body>
</html>