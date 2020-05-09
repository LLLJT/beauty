<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的收藏</title>
 <% String path=request.getContextPath(); %>
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
	                    <h5>收藏数：${bcount}</h5>
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
	                                        <div class="row">
	                                            <div class="col-sm-4 masonry-portfolio-item mb30 apps">
	                                                <div class="hover-effect smoothie">
	                                                    <a href="#" class="smoothie">
	                                                    <img src="<%=path%>/images/portfolio/folio-1.jpeg" alt="Image" class="img-responsive smoothie"></a>
	                                                    <div class="hover-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom user_alignleft">
	                                                            <h4>up's name</h4>
	                                                            <p>描述文字描述文字描述文字描述文字描述文字描述文字描述文字</p>
	                                                        </div>
	                                                    </div>
	                                                    <div class="hover-caption dark-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom">
	                                                            <a href="#" class="btn btn-primary mb20">Details</a>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div class="col-sm-4 masonry-portfolio-item mb30 design">
	                                                <div class="hover-effect smoothie">
	                                                    <a href="#" class="smoothie">
	                                                    <img src="<%=path%>/images/portfolio/folio-2.jpeg" alt="Image" class="img-responsive smoothie"></a>
	                                                    <div class="hover-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom user_alignleft">
	                                                            <h4>up's name</h4>
	                                                            <p>描述文字描述文字描述文字描述文字描述文字描述文字描述文字</p>
	                                                        </div>
	                                                    </div>
	                                                    <div class="hover-caption dark-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom">
	                                                            <a href="#" class="btn btn-primary mb20">Details</a>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div class="col-sm-4 masonry-portfolio-item mb30 photography">
	                                                <div class="hover-effect smoothie">
	                                                    <a href="#" class="smoothie">
	                                                    <img src="<%=path%>/images/portfolio/folio-3.jpeg" alt="Image" class="img-responsive smoothie"></a>
	                                                    <div class="hover-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom user_alignleft">
	                                                            <h4>up's name</h4>
	                                                            <p>描述文字描述文字描述文字描述文字描述文字描述文字描述文字</p>
	                                                        </div>
	                                                    </div>
	                                                    <div class="hover-caption dark-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom">
	                                                            <a href="#" class="btn btn-primary mb20">Details</a>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div class="col-sm-4 masonry-portfolio-item mb30 apps">
	                                                <div class="hover-effect smoothie">
	                                                    <a href="#" class="smoothie">
	                                                    <img src="<%=path%>/images/portfolio/folio-4.jpeg" alt="Image" class="img-responsive smoothie"></a>
	                                                    <div class="hover-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom user_alignleft">
	                                                            <h4>up's name</h4>
	                                                            <p>描述文字描述文字描述文字描述文字描述文字描述文字描述文字</p>
	                                                        </div>
	                                                    </div>
	                                                    <div class="hover-caption dark-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom">
	                                                            <a href="#" class="btn btn-primary mb20">Details</a>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div class="col-sm-4 masonry-portfolio-item mb30 design">
	                                                <div class="hover-effect smoothie">
	                                                    <a href="#" class="smoothie">
	                                                    <img src="<%=path%>/images/portfolio/folio-5.jpeg" alt="Image" class="img-responsive smoothie"></a>
	                                                    <div class="hover-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom user_alignleft">
	                                                            <h4>up's name</h4>
	                                                            <p>描述文字描述文字描述文字描述文字描述文字描述文字描述文字</p>
	                                                        </div>
	                                                    </div>
	                                                    <div class="hover-caption dark-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom">
	                                                            <a href="#" class="btn btn-primary mb20">Details</a>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div class="col-sm-4 masonry-portfolio-item mb30 design">
	                                                <div class="hover-effect smoothie">
	                                                    <a href="#" class="smoothie">
	                                                    <img src="<%=path%>/images/portfolio/folio-6.jpeg" alt="Image" class="img-responsive smoothie"></a>
	                                                    <div class="hover-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom user_alignleft">
	                                                            <h4>up's name</h4>
	                                                            <p>描述文字描述文字描述文字描述文字描述文字描述文字描述文字</p>
	                                                        </div>
	                                                    </div>
	                                                    <div class="hover-caption dark-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom">
	                                                            <a href="#" class="btn btn-primary mb20">Details</a>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div class="col-sm-4 masonry-portfolio-item mb30 apps">
	                                                <div class="hover-effect smoothie">
	                                                    <a href="#" class="smoothie">
	                                                    <img src="<%=path%>/images/portfolio/folio-7.jpeg" alt="Image" class="img-responsive smoothie"></a>
	                                                    <div class="hover-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom user_alignleft">
	                                                            <h4>up's name</h4>
	                                                            <p>描述文字描述文字描述文字描述文字描述文字描述文字描述文字</p>
	                                                        </div>
	                                                    </div>
	                                                    <div class="hover-caption dark-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom">
	                                                            <a href="#" class="btn btn-primary mb20">Details</a>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div class="col-sm-4 masonry-portfolio-item mb30 design">
	                                                <div class="hover-effect smoothie">
	                                                    <a href="#" class="smoothie">
	                                                    <img src="<%=path%>/images/portfolio/folio-8.jpeg" alt="Image" class="img-responsive smoothie"></a>
	                                                    <div class="hover-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom user_alignleft">
	                                                            <h4>up's name</h4>
	                                                            <p>描述文字描述文字描述文字描述文字描述文字描述文字描述文字</p>
	                                                        </div>
	                                                    </div>
	                                                    <div class="hover-caption dark-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom">
	                                                            <a href="#" class="btn btn-primary mb20">Details</a>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div class="col-sm-4 masonry-portfolio-item mb30 design">
	                                                <div class="hover-effect smoothie">
	                                                    <a href="#" class="smoothie">
	                                                    <img src="<%=path%>/images/portfolio/folio-9.jpeg" alt="Image" class="img-responsive smoothie"></a>
	                                                    <div class="hover-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom user_alignleft">
	                                                            <h4>up's name</h4>
	                                                            <p>描述文字描述文字描述文字描述文字描述文字描述文字描述文字</p>
	                                                        </div>
	                                                    </div>
	                                                    <div class="hover-caption dark-overlay smoothie text-center">
	                                                        <div class="vertical-align-bottom">
	                                                            <a href="#" class="btn btn-primary mb20">Details</a>
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
	                </div>
	            </div>
	        </div>
	    </div>
	</section>

</body>
</html>