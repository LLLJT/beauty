<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${thisblog.title }</title>

	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta tag Keywords -->
<% String path = request.getContextPath();%>
	<link rel="stylesheet" href="<%=path%>/css/ups/bootstrap3.css">
	<link href="<%=path%>/css/ups/c-style.css" rel="stylesheet"> 
	<link href="<%=path%>/css/ups/elusive-webfont.css" rel="stylesheet">
	<link href="<%=path%>/css/ups/animate.css" rel="stylesheet">
	<link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet">
	<link href="<%=path%>/css/ups/c-content.css" rel="stylesheet">
	<!-- Web-Fonts -->
	<link href="http://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Raleway:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
	<!-- //Web-Fonts -->

	<%-- <script src="<%=path%>/js/jquery/jquery.min.js"></script> --%>
	<script src="<%=path%>/js/ups/jquery.min.js"></script>
	<script src="<%=path%>/js/ups/modernizr.custom.js"></script>

	<style type="text/css">
	.c-user {
    	background: #705ecf;
    	padding: 0.375rem 0.75rem;
    }
	</style>
</head>
<body data-spy="scroll" data-offset="0" data-target="#navbar-main">

	<c:forEach items="${replymap }" var="ncmt">
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="reply${ncmt.getKey() }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">查看回复</h4>
					</div>
					<div class="modal-body">
						<div style="height: 250px; overflow: scroll; background-color: #F0F0F0;">
							<c:if test="${ncmt.getValue().size()==0}">
								<p>暂无回复。<p>
							</c:if>
							<c:forEach items="${ncmt.getValue() }" var="reply" varStatus="status">
										<div class="container-fluid replystyle">
											<div class="row" >
												<div class="col-md-2 text-center">
													<img alt="" src="<%=path%>/images/avatar.png" width="100%" />
													<span>${cmtermap[reply.userid] }</span>
												</div>
												<div class="col-md-10">${reply.comment }</div>
											</div>
									<div style="margin-bottom: 0; float: right;">
										<fmt:formatDate value="${reply.createtime}" type="both"/>
									</div>
								</div>
							</c:forEach>					
						
						</div>
						<div>
							<h4 style="margin-top: 30px">添加回复</h4>
							<div style=" padding-bottom: 30px;">
								<textarea name="comment" placeholder="添加回复"  rows="3" cols="100" style="width: 100%; padding-top: 10px;"></textarea>
								<input type="hidden" name="userid" value="6">
								<input type="hidden" name="blogid" value="${thisblog.id }">
								<input type="hidden" name="cmtid" value="${ncmt.getKey() }">
								<input class="btn pull-right"  type="button" value="发表评论" onclick="ajaxsubmit(this)" style="float: right">
						</div>
						</div>
						
				</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary">确认</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>

	</c:forEach>

	<div id="preloader"></div>
	
	<div id="navbar-main">
		<div class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">				
					<a class="navbar-brand" href="<%=path%>/jsp/index.jsp"><h1>reachableBeauty</h1></a>
					<button type="button" class="navbar-toggle dropdown-toggle" id="open-menu" data-toggle="dropdown" data-target="#main-navigation">
						<i class="el-icon-lines"></i>
					</button>
				</div>
				<div class="navbar-collapse collapse" id="main-navigation">
					<ul class="nav navbar-nav">
						<li class="search-w3layouts">
							<form action="<%=path%>/jsp/searchresult.jsp" method="post" class="search-bottom-wthree d-flex">
								<input class="search" type="search" name="searchname" placeholder="Search Here..." required>
								<button class="c-form-control c-btn" type="submit">
									<i class="el-icon-search"></i>
								</button>
							</form>
						</li>
						<li>
							<a class="dwn-w3ls btn mx-3 c-user" href="<%=path%>/jsp/usercenter.jsp" target="_blank" style="background: #705ecf; padding: 0.375rem 0.75rem;"> 
								<span class="fa fa-user-circle-o" title="个人中心"></span>
							</a>
						</li>
						<li>
							<a class="dwn-w3ls btn c-user" href="<%=path%>/jsp/login.jsp" target="_self" style="background: #705ecf; padding: 0.375rem 0.75rem;">
								<span class="fa fa-sign-out" title="退出登录"></span>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
    </div>

	<div style="position: absolute; top: 45vh; left:10vw">
		<h1 style="color: white; letter-spacing: 7px;">${thisblog.title }</h1>
	</div>

	<div id="headerwrap" name="home">
		<header class="clearfix"></header>
	</div>
	
	<section id="currently-viewing" class="container section-divider textdivider divider2">
		<div class="container">
			<div class="single-project-slideshow fade-down">
			    <div id="basic-carousel" class="carousel slide">
			      <div class="carousel-inner">
			        <div class="item active">
			          	<h2 class="fade-down centered">pic 1</h2>
			        </div>
			        <div class="item">
			          	<h2 class="fade-down centered">pic 2</h2>
			        </div>
			        <div class="item">
			          	<h2 class="fade-down centered">${thisblog.id }</h2>
			        </div>
			      </div>
			      <a class="left carousel-control" href="#basic-carousel" data-slide="prev">
			        <span class="glyphicon glyphicon-chevron-left"></span>
			      </a>
			      <a class="right carousel-control" href="#basic-carousel" data-slide="next">
			        <span class="glyphicon glyphicon-chevron-right"></span>
			      </a>
			    </div>
		 	</div>
	 	</div>
	</section>

	<!--  CONTENT WRAPPER -->
	<div id="content-wrapper">
		<section id="about" class="container page-section">
			<div class="row white">
				<div class="col-sm-8">
				<!-- blog start -->
					<div class="single-metas fade-down text-left mt0 mb60 no-display animated fadeInDown">
						<h3>${writer }</h3>
						<span class="post-meta-link"><i class="el-icon-time-alt"></i> 发布于<fmt:formatDate value="${thisblog.createtime}" type="both"/></span>
						<span class="post-meta-link"><i class="el-icon-heart"></i> <span class="counter">${starnum }</span></span>
						<span class="post-meta-link"><a href="#commentAnchor"><i class="el-icon-comment"></i> <span class="counter">${cmtnum }</span></a></span>
					</div>
					<div class="fade-up single-post-content text-left no-display animated fadeInUp">
						<pre>${thisblog.content }</pre>
					</div>
					<!-- blog end -->
					<!-- comment start -->
					<a name="commentAnchor"></a>
						
					<div class="fade-up single-post-content" id="wholecomment">
							<div class="comments-area" id="comments">
								<h3 class="comments-title">评  论 </h3>
								<div class="comments-wrapper">
									<ol class="comment-list">
									
									<c:forEach items="${normalcmt }" var="ncmt" varStatus="status">
										<li class="comment even thread-even depth-1" id="comment-34">
											<article class="comment-body grid_12" id="div-comment-34">
												
												<footer class="comment-meta col-md-2 text-center">
													<div class="comment-author vcard">
														<img alt="" class="avatar" src="<%=path%>/images/avatar.png" width="100">
													</div>
													<div class="comment-metadata">
														<cite class="fn">
															<a class="url" href="#" rel="external nofollow">${cmtermap[ncmt.userid] }</a>
														</cite> 
													</div>
													<!-- .comment-metadata -->
												</footer>
												<!-- .comment-meta -->
												<div class="comment-content col-md-10 omega">
													<p>${ncmt.comment }</p>
													<fmt:formatDate value="${ncmt.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/>
													
													<div class="reply">
														<!-- <a class="btn btn-success comment-reply-link" href="#" data-toggle="modal" data-target="#addreply">查看回复</a> -->
														<a class="btn btn-success comment-reply-link" href="#" data-toggle="modal" data-target="#reply${ncmt.id}">查看回复</a>
													</div>
													<!-- .reply -->
												</div>
												<!-- .comment-content -->
											</article>
											<!-- .comment-body -->
										</li>
									</c:forEach>
									
									</ol>
									<!-- .comment-list -->
								</div>
								<div id="respond">
									<h3 id="reply-title">添加评论 </h3>
									<small></small>
									
									<form action="" id="commentform" method="post" name="commentform">
										<small></small>
										<p class="comment-form-comment py-4">
												<textarea cols="45" id="comment" name="comment" rows="5" placeholder="Input your comment here..."></textarea>
										</p>
										
<!-- 										<input type="hidden" name="id" value="">  -->
										<input type="hidden" id="userid" name="userid" value="6"> 
										<input type="hidden"  id="blogid" name="blogid" value="${thisblog.id }"> 
 										<input type="hidden" name="cmtid" value=""> 
<!--										<input type="hidden" name="createtime" value=""> 
										<input type="hidden" name="likenum" value=""> 
										<input type="hidden" name="delFlag" value="">  -->
										
										<input class="btn btn-success" id="submit" name="submit" type="button" value="发表评论" onclick="ajaxsubmit(this)">
									</form>
								</div>
								<!-- #respond -->
								<small></small>
							</div>
						</div>

					<!-- comment end -->
				</div>	
				
				<div class="col-sm-3 col-sm-offset-1 single-post-sidebar">
					<h3 class="sidebar-title mt0 mb-5">热门推荐</h3>
					<div class="row sidebar-post">
						<div class="col-md-4">
							<img class="sb-img" src="<%=path%>/images/folio01.jpg" alt="Alt">
						</div>
						<div class="col-md-8 sidebar-post-content">
							<h4>Blog Post A</h4>
							<div class="blog-meta-main">
								<span class="post-meta-link"><i class="el-icon-time-alt"></i> 更新于 2分钟前</span>
							</div>
						</div>
					</div>
				</div><!-- col-md-6 -->	
			</div>
		</section>
	</div>
	<!-- // CONTENT WRAPPER -->	
		
	<!-- copyright bottom -->
	<div class="copy-bottom bg-li py-4 border-top">
		<div class="container-fluid">
			<div class="d-md-flex px-md-3 position-relative text-center">
				<!-- copyright -->
				<div class="copy_right mx-md-auto mb-md-0 mb-3">
					<p class="text-bl let">Copyright &copy; 2020. reachableBeauty All rights reserved.</p>
				</div>
				<!-- //copyright -->
				<!-- move top icon -->
				<a href="#home" class="move-top text-center"> <span
					class="fa fa-level-up" aria-hidden="true"></span>
				</a>
				<!-- //move top icon -->
			</div>
		</div>
	</div>
	<!-- //copyright  bottom-->	

	<!-- JavaScript files-->
	
	<script src="<%=path%>/js/ups/bootstrap.js"></script>
	<script src="<%=path%>/js/ups/plugins.js"></script>
	<script src="<%=path%>/js/init.js"></script>

	<script type="text/javascript">
	function testsubmit(obj) {
		/* console.info($('#commentform').serialize())
		console.info(JSON.stringify($('#commentform').serialize()))
		alert(JSON.stringify($('#commentform').serialize())) */
		var div=($(obj).parent())
		console.info($(div).children())
		var userid = $(div).find("input[name='userid']").val()
		var blogid = $(div).find("input[name='blogid']").val()
		var cmtid = $(div).find("input[name='cmtid']").val()
		var comment = $(div).find("textarea").val()
		console.info("userid: "+userid+"; blogid: "+blogid+"; cmtid: "+cmtid+"; comment: "+comment)
		alert("end")
/* 		var userid=$(div).attr()
		$("input[name='keleyicom']") */
	}
	
	function ajaxsubmit(obj) {
		var div = $(obj).parent()
		var userid = $(div).find("input[name='userid']").val()
		var blogid = $(div).find("input[name='blogid']").val()
		var cmtid = $(div).find("input[name='cmtid']").val()
		var comment = $(div).find("textarea").val()
		console.info(comment)
		
        var cmt = {
    			"userid" : userid ,
    			"blogid" : blogid ,
    			"cmtid": cmtid,
    			"comment" : comment
            };
            var data = JSON.stringify(cmt)
            console.info(data)
		
		$.ajax({
			url: 'comment/normal/add',
			type: 'post',
			dataType:'JSON',
			data:{"userid": userid, "blogid" : blogid , "comment" :comment, "cmtid":cmtid }  ,
			success:function(response,status,xhr){
				console.log(response)
				console.log(status)
				console.log(xhr)
/* 				alert("评论成功");
                aftercmt(response); */
 				if (response==101) {
                        alert("评论成功");
                        aftercmt();
                    }else{
                    	 alert("评论失败");
                    } 
			},
			error:function(){
				alert("error");
			}
		});

		/* var cmtForm = $("#commentform").serializeArray()
        var objs = []
        $.each(cmtForm,function (i,n) {
            var obj = {}
            obj[n.name]=n.value
            objs.push(obj)
        })
        var data = JSON.stringify(objs) */
        
         /*var userid= $("#userid").val();
		var blogid=$("#blogid").val();
        var comment=$("#comment").val();
        
        var cmt = {
			"userid" : userid ,
			"blogid" : blogid ,
			"comment" : comment
        };
        var data = JSON.stringify(cmt)
        console.info(data)
		
		$.ajax({
            //几个参数需要注意一下
                type: "post",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "comment/normal/add" ,//url
                contentType:"application/json",
                data: data,
                success: function (result) {
                    console.log(result);//打印服务端返回的数据(调试用)
                    if (result==101) {
                        alert("成功");
                    }else{
                    	 alert("插入失败,请重新插入");
                    }
                    ;
                },
                error : function() {
                    alert("插入失败,请重新插入");
                }
            }); */
	}
	
	function aftercmt() {
/* 		console.info(data); */
		$("#comment").val("");
/* 		location.herf="#commentAnchor";
		window.location.hash ="#commentAnchor";
		$("#wholecomment").load(data); */
		
 		location.reload(); 
		/* var url = window.location.href;
		window.location.replace( url + "#commentAnchor"); */
	}
	</script>
	
  </body>
</html>