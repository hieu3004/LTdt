<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Interior-Design-Responsive-Website-Templates-StyleInn">
	<meta name="author" content="webThemez.com">
	<title>Thế Giới Nội Thất Của Bạn</title>
	<link rel="favicon" href="../assets/images/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="../assets/css/font-awesome.min.css"> 
	<link rel="stylesheet" href="../assets/css/bootstrap-theme.css" media="screen"> 
	<link rel="stylesheet" href="../assets/css/style.css">
    <link rel='stylesheet' id='camera-css'  href='../assets/css/camera.css' type='text/css' media='all'> 
</head>
<body>
    <!-- Fixed navbar -->
    <div class="navbar navbar-inverse " >
		
		<div class="container">
			<div class="navbar-header"  >
                <h1 style="margin-top: -5px;">
                <a href="../index.php" style="font-family: 'Times New Roman', Times, serif;">OTAKU</a></h1>
			</div>
			<div class="navbar-collapse collapse">
				     
                <ul class="nav navbar-nav pull-right" style="margin-left: 100px;">
                    <li><a href="#">Products</a></li>
                    <li><a href="#">Service</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#"><img src="../assets/hinh/buy.png" alt="">CART </a></li>
                    <li><a href="admin/login.php"> Account</a></li>
                </ul>              
            </div>
            <div>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
			<!--/.nav-collapse -->
		</div>
    </div>
	<!-- /.navbar -->
    <div  class="news-box top-margin" class="container" style="background-color: whitesmoke;">
        <marquee><h2><span style="color:red;height:20px;">Nội thất Bàn </span></h2> </marquee>    
    </div>
    <hr>
    <!-- noi dung -->
    <section class="news-box top-margin" >

        <div class="container" style="background-color: whitesmoke ; width:1200px;text-align:center;">
            <div class="row" style="width:1200px;">
            <?php
                include '../config/config.php';
                $sql="SELECT * FROM `loai` JOIN sanpham on loai.maloai=sanpham.maloai join khonggian on loai.makhonggian=khonggian.makhonggian
                    WHERE loai.tenloai LIKE '%Ban%' ";
                $stm=$obj->prepare($sql);
                $stm->execute();
                $data= $stm->fetchALL(PDO::FETCH_ASSOC);
                foreach($data as $k => $v)
                {
            ?>
                <div class="col-lg-4 col-md-4 col-sm-12" style="width:400px; height:500px;">
                    <div class="newsBox">
                        <div class="thumbnail">
                           <div>
                               <a href="#"><img style="height:300px; width:300px;" src="../assets/image/phonglamviec/ban/<?php echo $v['hinh'] ?>" alt=""></a>
                           </div>
                            
                            <div >
                                <div style="text-align:center;float:left; width:170px;" ><a href=""><h3><?php echo $v['tensanpham'] ?></h3></a></div>
                                <div style="text-align:center;float:right; color:blue ; width:170px;"><h3><?php echo $v['gia'] ?>   VND </h3></div>
                            </div>
                            <div style="float:left;"> <a class="btn btn-mini" href="#">BUY NOW</a></div>
                        </div>
                    </div>
                </div>
                <?php 
                    }
                ?>
            
                
            </div>
        </div>
        
    </section>
    <!-- dong noi dung -->
    <hr>
    <section class="container" style="background-color: whitesmoke">
        
        
        <h2><span style="color:red;">Các san phẩm tiêu biểu</span></h2>
            <div class="carousel slide" id="myCarousel">
                <div class="carousel-inner">
                    <!-- slide1 -->
                    <div class="item active">
                        <ul class="thumbnails">
                            
                            <li class="col-md-3">
                                <div class="thumbnail">
                                    <a href="#"><img src="assets/images/portfolio/img1.jpg" alt=""></a>
                                </div>
                                <div class="caption">
                                    <h4>Praesent commodo</h4>
                                    <p>Nullam Condimentum Nibh Etiam Sem</p>
                                    <a class="btn btn-mini" href="#">BUY NOW</a>
                                </div>
                            </li>
                            <li class="col-md-3">
                                <div class="thumbnail">
                                    <a href="#"><img src="assets/images/portfolio/img2.jpg" alt=""></a>
                                </div>
                                <div class="caption">
                                    <h4>Praesent commodo</h4>
                                    <p>Nullam Condimentum Nibh Etiam Sem</p>
                                    <a class="btn btn-mini" href="#">BUY NOW</a>
                                </div>
                            </li>
                            <li class="col-md-3">
                                <div class="thumbnail">
                                    <a href="#"><img src="assets/images/portfolio/img3.jpg" alt=""></a>
                                </div>
                                <div class="caption">
                                    <h4>Praesent commodo</h4>
                                    <p>Nullam Condimentum Nibh Etiam Sem</p>
                                    <a class="btn btn-mini" href="#">BUY NOW</a>
                                </div>
                            </li>
                            <li class="col-md-3">
                                <div class="thumbnail">
                                    <a href="#"><img src="assets/images/portfolio/img4.jpg" alt=""></a>
                                </div>
                                <div class="caption">
                                    <h4>Praesent commodo</h4>
                                    <p>Nullam Condimentum Nibh Etiam Sem</p>
                                    <a class="btn btn-mini" href="#">BUY NOW</a>
                                </div>
                            </li>
                        </ul>
                    </div><!-- /Slide1 --> 
                    <div class="item">
                            <ul class="thumbnails">
                                <li class="col-md-3">
                                    <div class="thumbnail">
                                        <a href="#"><img src="assets/images/portfolio/img5.jpg" alt=""></a>
                                    </div>
                                    <div class="caption">
                                        <h4>Praesent commodo</h4>
                                        <p>Nullam Condimentum Nibh Etiam Sem</p>
                                        <a class="btn btn-mini" href="#">BUY NOW</a>
                                    </div>
                                </li>
                                <li class="col-md-3">
                                    <div class="thumbnail">
                                        <a href="#"><img src="assets/images/portfolio/img6.jpg" alt=""></a>
                                    </div>
                                    <div class="caption">
                                        <h4>Praesent commodo</h4>
                                        <p>Nullam Condimentum Nibh Etiam Sem</p>
                                        <a class="btn btn-mini" href="#">BUY NOW</a>
                                    </div>
                                </li>
                                <li class="col-md-3">
                                    <div class="thumbnail">
                                        <a href="#"><img src="assets/images/portfolio/img7.jpg" alt=""></a>
                                    </div>
                                    <div class="caption">
                                        <h4>Praesent commodo</h4>
                                        <p>Nullam Condimentum Nibh Etiam Sem</p>
                                        <a class="btn btn-mini" href="#">BUY NOW</a>
                                    </div>
                                </li>
                                <li class="col-md-3">
                                    <div class="thumbnail">
                                        <a href="#"><img src="assets/images/portfolio/img8.jpg" alt=""></a>
                                    </div>
                                    <div class="caption">
                                        <h4>Praesent commodo</h4>
                                        <p>Nullam Condimentum Nibh Etiam Sem</p>
                                        <a class="btn btn-mini" href="#">BUY NOW</a>
                                    </div>
                                </li>
                            </ul>
                    </div><!-- /Slide2 --> 
                    <div class="item">
                            <ul class="thumbnails">
                                <li class="col-md-3">
                                    <div class="thumbnail">
                                        <a href="#"><img src="assets/images/portfolio/img1.jpg" alt=""></a>
                                    </div>
                                    <div class="caption">
                                        <h4>Praesent commodo</h4>
                                        <p>Nullam Condimentum Nibh Etiam Sem</p>
                                        <a class="btn btn-mini" href="#">BUY NOW</a>
                                    </div>
                                </li>
                                <li class="col-md-3">
                                    <div class="thumbnail">
                                        <a href="#"><img src="assets/images/portfolio/img2.jpg" alt=""></a>
                                    </div>
                                    <div class="caption">
                                        <h4>Praesent commodo</h4>
                                        <p>Nullam Condimentum Nibh Etiam Sem</p>
                                        <a class="btn btn-mini" href="#">BUY NOW</a>
                                    </div>
                                </li>
                                <li class="col-md-3">
                                    <div class="thumbnail">
                                        <a href="#"><img src="assets/images/portfolio/img3.jpg" alt=""></a>
                                    </div>
                                    <div class="caption">
                                        <h4>Praesent commodo</h4>
                                        <p>Nullam Condimentum Nibh Etiam Sem</p>
                                        <a class="btn btn-mini" href="#">BUY NOW</a>
                                    </div>
                                </li>
                                <li class="col-md-3">
                                    <div class="thumbnail">
                                        <a href="#"><img src="assets/images/portfolio/img4.jpg" alt=""></a>
                                    </div>
                                    <div class="caption">
                                        <h4>Praesent commodo</h4>
                                        <p>Nullam Condimentum Nibh Etiam Sem</p>
                                        <a class="btn btn-mini" href="#">BUY NOW</a>
                                    </div>
                                </li>
                            </ul>
                    </div><!-- /Slide3 --> 
                </div>
                
                <div class="control-box " >  
                    <ul >                          
                    <a data-slide="prev" href="#myCarousel" class="carousel-control left">‹</a><a></a>
                    <a data-slide="next" href="#myCarousel" class="carousel-control right">›</a>
                </ul>
                </div><!-- /.control-box -->   
                                    
            </div><!-- /#myCarousel -->
                

        </div><!-- /.span12 -->          
        </div><!-- /.row --> 
    </section><!-- /.container -->
		 
    <footer id="footer">
		<div class="container">
			<div class="social text-center">
				<a href="#"><i class="fa fa-twitter"></i></a>
				<a href="#"><i class="fa fa-facebook"></i></a>
				<a href="#"><i class="fa fa-dribbble"></i></a>
				<a href="#"><i class="fa fa-flickr"></i></a>
				<a href="#"><i class="fa fa-github"></i></a>
			</div>

			<div class="clear"></div>
			<!--CLEAR FLOATS-->
		</div>
		<div class="footer2">
			<div class="container">
				<div class="row">

					<div class="col-md-6 panel">
						<div class="panel-body">
							<p class="simplenav">
								<a href="index.php">Home</a> | 
								<a href="about.html">About</a> |
								<a href="services.html">Services</a> |
								<a href="price.html">Price</a> |
								<a href="projects.html">Projects</a> |
								<a href="contact.html">Contact</a>
							</p>
						</div>
					</div>


				</div>
				<!-- /row of panels -->
			</div>
		</div>
	</footer>

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="assets/js/modernizr-latest.js"></script> 
	<script type='text/javascript' src='assets/js/jquery.min.js'></script>
    <script type='text/javascript' src='assets/js/fancybox/jquery.fancybox.pack.js'></script>
    
    <script type='text/javascript' src='assets/js/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='assets/js/jquery.easing.1.3.js'></script> 
    <script type='text/javascript' src='assets/js/camera.min.js'></script> 
    <script src="assets/js/bootstrap.min.js"></script> 
	<script src="assets/js/custom.js"></script>
    <script>
		jQuery(function(){
			
			jQuery('#camera_wrap_4').camera({
				height: '600',
				loader: 'bar',
				pagination: false,
				thumbnails: false,
				hover: false,
				opacityOnGrid: false,
				imagePath: 'assets/images/'
			});

		});
	</script>
    
</body>
</html>
