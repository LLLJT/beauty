<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的收藏</title>
<% String path = request.getContextPath();%>
	<link href="<%=path%>/css/bootstrap.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900|Dancing+Script:400,700|Raleway:400,100,300,700,900|Reenie+Beanie&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href="<%=path%>/css/users/userspace_style.css" rel="stylesheet">  
	<link rel="stylesheet" href="<%=path%>/css/custom.css">
</head>
<body>
	<section class="white-wrapper allow-overflow">
	    <div class="section-inner"> 
	        <div class="container">
	            <div class="row mb60 text-center">
	                <div class="col-sm-6 text-left match-height">
	                    <h3 class="section-title">我的收藏</h3>
	                    <h5>收藏数：<span class="badge"  id="number"></span></h5>
	               </div>
	            </div>
	        </div>   
	        <div class="container-fluid" style="width: 90%">
	            <div class="row">
	                <div class="col-sm-12">
	                    <div class="row">
	                        <div class="col-xs-12">
	                            <div class="masonry-portfolio row">
	                                <div>
	                                    <div class="masonry-portfolio-items">
	                                        <div class="row" id="rstdiv">                                            
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                     </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</section>

<script src="<%=path%>/js/jquery/jquery.min.js"></script>
<script src="<%=path%>/js/custom/getcookie.js"></script>

<script type="text/javascript">

	var target = "<%=path %>/blog/getuserstar"
	var testpicurl = "<%=path%>/images/portfolio/folio-1.jpeg"
	var cookiestr = getCookie("user");
	var cookieid = cookiestr.split("#")[2];
	var id = parseInt(cookieid);
	var cookiename = cookiestr.split("#")[0];
	
	window.onload = getstarmap(target,cookieid)

	function getstarmap(target,userid) {
		console.info("target:"+target+"  userid:"+userid)
		$.ajax({
			url: target,
			type: 'POST',
			dataType:'JSON',
			data:  {"userid": userid},
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
		var n = data.rstmap.length
		//todo: 添加收藏number
		number.innerHTML=n
		var myhtml=""
		for (i=0; i<n; i++){
			var blogid = data.rstmap[i].blogid
			var title = data.rstmap[i].blogtitle
			var username = data.rstmap[i].username
			var picurl =  data.rstmap[i].picurl
			picurl = testpicurl
			
	        myhtml +=( '<div class="col-sm-4 masonry-portfolio-item mb30" >'
	        		+ '<div class="hover-effect smoothie">'
	        		+ '<a href="#" class="smoothie">'
	        		+ '<img src="' + picurl + '" alt="Image" class="img-responsive smoothie"></a>'
	        		+ '<div class="hover-overlay smoothie text-center">'
	        		+ '<div class="vertical-align-bottom user_alignleft">'
	        		+ '<h4>' + username + '</h4>'
	        		+ '<p>' + title + '</p>'
	        		+ '</div> </div>'
	        		+ '<div class="hover-caption dark-overlay smoothie text-center">'
	        		+ '<div class="vertical-align-bottom">'
	        		+ '<a href="/beauty/content?blogid=' + blogid + '" class="btn btn-primary mb20" target="_parent"">Details</a>'
	        		+ '</div> </div> </div> </div>'
	        		)
		}
		rstdiv.innerHTML=myhtml	
	}


</script>
</body>
</html>