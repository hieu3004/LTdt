<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Interior-Design-Responsive-Website-Templates-StyleInn">
	<meta name="author" content="webThemez.com">
	<title>Thế Giới Nội Thất Của Bạn</title>
	<link rel="favicon" href="../assets/imagess/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="../assets/css/font-awesome.min.css"> 
	<link rel="stylesheet" href="../assets/css/bootstrap-theme.css" media="screen"> 
	<link rel="stylesheet" href="../assets/css/style.css">
    <link rel='stylesheet' id='camera-css'  href='../assets/css/camera.css' type='text/css' media='all'> 
</head>
<body>
    <?php
        if(!isset($_SESSION)) session_start();
        if(!isset($_SESSION['khachhang']))
        {
            header('location:login.php');
            exit;
        }
    ?>
    
    <!-- menu -->
    <div class="navbar navbar-inverse " >
		
		<div class="container">
			<div class="navbar-header"  >
                <h1 style="margin-top: -5px;">
                <a href="../index.php" style="font-family: 'Times New Roman', Times, serif;">Noi that</a></h1>
			</div>
			<div class="navbar-collapse collapse">
				     
                <ul class="nav navbar-nav pull-right" style="margin-left: 100px;">
                    <li><a href="../products.php">Products</a></li>
                    <li><a href="services.html">Service</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="cart.php"><img src="../assets/images/buy.png" alt="">MY CART </a></li>
                    <li><a href="../thongtin.php"> <img src="../assets/images/<?php echo $_SESSION['khachhang']['hinh']?>" style="width:50px; height:50px;" alt=""> <?php echo $_SESSION['khachhang']['tenkhachhang']?> </a></li>
                </ul>              
            </div>
            <div>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
			<!--/.nav-collapse -->
        </div>
       
    </div>
     <!-- tìm kiếm -->
     <div  style="background-color: whitesmoke;  margin-right:50px" >
                <form action="../search.php" enctype="multipart/form-data" method="post" style="background-color: whitesmoke; float:right;height:30px; margin-right:50px">
                    <input type="search" style="width:200px; height:30px "name="noidung" id="">
                    <input type="submit" value="Search" style="float:right; height:30px">
                </form>
            </div>
            <!-- /tìm kiếm -->
    <hr>
	<!-- /.menu -->

    <div  class="news-box top-margin" class="container" style="background-color: whitesmoke;">
        <marquee><h2><span style="color:red;height:20px;">Giỏ hàng của bạn</span></h2> </marquee>    
    </div>
    <hr>
    <!-- noi dung -->
    <?php  
    include '../config/config.php';
    if(!isset($_SESSION)) session_start();
    $tam=isset($_SESSION['cart'])?$_SESSION['cart']:[];
    $arr=array();
    if($tam!=null){
?>

    <section class="news-box top-margin"style="background-color: whitesmoke ;  float:center;" >
   
     <form action="dathang.php" method="post">
        <table border="1" style=" text-align:center;" class="container">
            <tr style="background-color:rgb(95, 94, 94); color:red;width:100%;">
                <td>STT</td>
                <td>Mã sản phẩm</td>
                <td>Tên sản phẩm</td>
                <td>Giá </td>
                <td>Số lượng</td>
                <td>hình</td>
                <td>Thành tiền</td>
                <td>Thao tác</td>
            </tr>
            <?php 
                
                $i=0;//biến stt
                $thanhtien=0;
                $gia;
                foreach($tam as $k => $v)
                {
                
                    $sql="SELECT * from sanpham where masanpham= '{$k}' ";
                    $stm = $obj->query($sql);
                    $data = $stm->fetch();
                    $i++;
                    
            ?>
            <tr>
                <td><?php echo $i?></td>
                <td><?php echo $k //mã sản phẩm ?></td>
                <td><?php echo $data['tensanpham'] //ten san pham?></td>
                <td style="color:blue;"> <?php echo number_format( $data['gia']) //gia?><h7 style="color:red;"> VND</h7></td>
                <td>
                        <div><a href="qlyCart.php?action=them&masanpham=<?php echo $data['masanpham']?>"><img src="../assets/images/tang.jpg" style="width:30px;height:30px;" alt=""></a></div>
                        <div style="color:blue;"><?php echo $v?></div><!-- so luong -->
                        <div><a href="qlyCart.php?action=giam&masanpham=<?php echo $data['masanpham']?>"><img src="../assets/images/giam.jpg" style="width:30px;height:30px;" alt=""></a></div>
                    
                </td>
                <td><img src="../assets/images/<?php echo $data['hinh']?>" style="width:200px; height:100px;" alt=""></td>
                <td style="color:blue;"><?php echo number_format($v*$data['gia'])?>  <h7 style="color:red;">VND</h7></td> <!--thanh tien -->
                <td><a href="qlyCart.php?action=xoa&masanpham=<?php echo $data['masanpham']?>">XOA</a></td>
            </tr>
            <?php 
                
                $r=array("masanpham"=>$data['masanpham'],"tensanpham"=>$data['tensanpham'],"gia"=>$data['gia'],"soluong"=>$v,"thanhtien"=>$v*$data['gia']);
                $arr[]=$r;
                }
                
                $_SESSION['thanhtoan']=$arr;
            ?>
           
        </table>
        <div style=" margin:10px 0 120px 0; ">
            <div  class="btn btn-mini" style="background-color:yellow; color: blue; margin:0 20px 10px 800px ">  Tổng tiền là :
                <?php 
                    $tt=0;
                    foreach($arr as $k => $v)
                    {
                        $tt+=$v['thanhtien'];
                    }           
                    echo number_format($tt).". VND";
                ?>
            </div>
                <input class="btn btn-mini"type="submit" name="submit" value=" THANH TOÁN"style="height:40px;width:150px; background-color:blue;margin:0 0 10px 0"> 
        </div>     
             
      </form>
    </section>
    <?php } 
      else{ ?>
          <div style="color: white;text-align: center;">
            <h2>Chua co san pham trong gio hang</h2>
            <a class="btn btn-mini" href="../index.php">Tiep tuc mua hang</a>
        </div>
      <?php }   ?><!-- /.container -->
    <hr>
	<!-- don hang khach da dat -->
    <section class="container"  class="news-box top-margin"style="background-color: whitesmoke ;  float:center;" >
        <h1 style="color:green; tesxt-align:center;">Đơn hàng của bạn</h1>
        <table border="1" style="width:100%;">
            <tr style="background-color:brown; text-align:center; color:white;">
                <td>STT</td>
                <td>Mã đơn hàng</td>
                <td>Mã khách hàng</td>
                <td>Tên Khách hàng</td>
                <td>Trạng Thái</td>
            </tr>
            <?php
                include '../config/config.php';
                $makh= $_SESSION['khachhang']['makhachhang'];
                $sql="SELECT * FROM donhang join khachhang on donhang.makhachhang=khachhang.makhachhang where donhang.makhachhang='{$makh}' and donhang.thanhtien >'{0}' ";
                $stm=$obj->query($sql);
                $da= $stm->fetchALL();
                $j=0;
                foreach($da as $k => $v )
                {
                    $j++;
            ?>
            <tr style="text-align:center;">
                <td><?php echo $j?></td>
                <td><?php echo $v['madonhang']?></td>
                <td><?php echo $v['makhachhang']?></td>
                <td><?php echo $v['tenkhachhang']?></td>
                <td style="color:blue;"><?php echo $v['trangthai']?></td>
            </tr>
            <?php
                }
            ?>
        </table>      
    </section>
    <!-- /don hang  -->
        
                       
    <footer id="footer" >
		<div class="container"style="margin-bottom:0px;float:bottom;">
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
				imagePath: 'assets/imagess/'
			});

		});
	</script>
    
</body>
</html>
