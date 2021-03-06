<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Quản Lý Kho Hàng</title>
        <link href="../css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <?php
        include '../../../config/config.php';
        $sql="SELECT * From sanpham";
        $stm=$obj->query($sql);
        $data=$stm->fetchALL();
        $soluongsp=0;
        $soluongsp=$stm->rowCount();

    ?>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- Navbar tim kiem-->
            <form action="quanlysanpham.php" method="post" class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" name="noidung" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                    <div style="height:47px; margin-left:-2px; background-color: blue ; color:white; ">

                        <input type="submit" style="color:white;" class="btn btn-mini" value="Search" >
                    </div>
                    
                </div>
            </form>
            <!-- Navbar right-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Settings</a>
                        <a class="dropdown-item" href="#">Activity Log</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="login.html">Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <a class="nav-link" href="quanlykho.php">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <div class="sb-sidenav-menu-heading">Interface</div>
                            <a class="nav-link collapsed" href="quanlysanpham.php" >
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Quản lý sản phẩm
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            
                            <a class="nav-link collapsed" href="quanlyloai.php" >
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Quản lý Loại
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="quanlykhonggian.php"  >
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Quản lý không gian
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <!-- kết quả tìm kiêm -->
                
                <!-- /kết quả tìm kiếm -->
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Quản Lý Sản Phẩm</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active"><?php echo "Số lượng Sản Phẩm: $soluongsp"?></li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                Thêm Sản Phẩm
                                
                            </div>
                            <div class="card-body">
                                <form action="chucnang.php?action=them" enctype="multipart/form-data" method="post" style="width:1300px">
                                    <div style="width:550px; float:left;height:300px">
                                        <table > 
                                            <tr>
                                                <td>Mã SP:</td>
                                                <td><input type="text" name="masanpham" placeholder="SP<?php echo $soluongsp+1?>" id=""></td>
                                            </tr>
                                            <tr>
                                                <td>Loại:</td>
                                                <td >
                                                    <select style="width:228px;"name="maloai" id="">
                                                        <?php
                                                            $sqll="SELECT * from loai";
                                                            $stml=$obj->query($sqll);
                                                            $loai=$stml->fetchALL();
                                                            foreach($loai as $k => $v)
                                                            {
                                                                ?>
                                                        <option value="<?php echo $v['maloai']?>"><?php echo $v['tenloai']?></option>
                                                        <?php
                                                            }
                                                            ?>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Không Gian:</td>
                                                <td >
                                                    <select style="width:228px;"name="makhonggian" id="">
                                                        <?php
                                                            $sqlk="SELECT * from khonggian";
                                                            $stmk=$obj->query($sqlk);
                                                            $kg=$stmk->fetchALL();
                                                            foreach($kg as $k => $v)
                                                            {
                                                                ?>
                                                        <option value="<?php echo $v['makhonggian']?>"><?php echo $v['tenkhonggian']?></option>
                                                        <?php
                                                            }
                                                            ?>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Tên SP:</td>
                                                <td><input type="text" name="tensanpham" id=""></td>
                                            </tr>
                                            <tr>
                                                <td>Khối Lượng:</td>
                                                <td><input type="text" name="khoiluong" id="">KG</td>
                                            </tr>
                                            <tr>
                                                <td>Hình:</td>
                                                <td><input type="file" name="hinh" id=""></td>
                                            </tr>
                                            <tr>
                                                <td>Giá:</td>
                                                <td><input type="text" name="gia" id="">VND</td>
                                            </tr>
                                            <tr>
                                                <td>Màu sắc:</td>
                                                <td><input type="text" name="mausac" id=""></td>
                                            </tr>
                                            
                                        </table>
                                    </div>
                                    <div style="float:right; width:550px; height:300px; margin-right:200px; ">
                                        <table>
                                            <tr>
                                                <td>Chất liệu:</td>
                                                <td><input type="text" name="chatlieu" id=""></td>
                                            </tr>
                                           
                                            <tr>
                                                <td>Kích thước:</td>
                                                <td><input type="text" name="kichthuoc" id=""></td>
                                            </tr>
                                            <tr>
                                                <td>Mô tả:</td>
                                                <td><textarea name="mota" id="" cols="30" rows="6"></textarea></td>
                                            </tr>
                                                
                                            
                                        </table>
                                        
                                    </div>
                                    <div >
                                        <input type="submit"class="btn btn-mini" style="background-color:blue; color:white; float:right; margin-right:350px; " value="ADD">
                                    </div>
                                            
                                </form>
                            </div>
                        </div>
                    </div>
                </main>
                <!-- sản phẩm mới thêm chưa mở bán -->
                <main>
                    <div class="container-fluid">
                       
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                Sản Phẩm mới thêm
                                <table  class="table table-bordered" id=""  width="100%" cellspacing="0">
                                    <thead>
                                        <th>Mã</th>
                                        <th>Tên</th>
                                        <th>Mã loại</th>
                                        <th>Mã không gian</th>
                                        <th>hình</th>
                                        <th>khối lượng</th>
                                        <th>Giá</th>
                                        <th>màu sắc</th>
                                        <th>trạng thái</th>
                                        <th>chat liệu</th>
                                        <th>kich thước</th>
                                        <th>mô tả</th>
                                    </thead>
                                    <?php
                                        $sql="SELECT * FROM sanpham where trangthai IS NULL";
                                        $stm=$obj->query($sql);
                                        $da=$stm->fetchALL();
                                        foreach($da as $k =>$v)
                                        {

                                    ?>
                                    <tbody>
                                        <td><?php echo $v['masanpham']?></td>
                                        <td><?php echo $v['tensanpham']?></td>
                                        <td><?php echo $v['maloai']?></td>
                                        <td><?php echo $v['makhonggian']?></td>
                                        <td><?php echo $v['hinh']?></td>
                                        <td><?php echo $v['khoiluong']?></td>
                                        <td><?php echo $v['gia']?></td>
                                        <td><?php echo $v['mausac']?></td>
                                        <td><?php echo $v['trangthai']?></td>
                                        <td><?php echo $v['chatlieu']?></td>
                                        <td><?php echo $v['kichthuoc']?></td>
                                        <td><?php echo $v['mota']?></td>
                                    </tbody>
                                    <?php
                                        }
                                        ?>
                                </table>
                            </div>
                            <div class="card-body">
                                
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2020</div>
                            
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/datatables-demo.js"></script>
    </body>
</html>
