<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin</title>
        <link href="../css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <?php
        include '../../../config/config.php';
        if(!isset($_SESSION)) session_start();
        if(!isset($_SESSION['boss']))
        {
            header('location:../logout.php');
            exit;
        }
        else if(isset($_SESSION['quanlykinhdoanh']))
        {
            header('location:../logout.php');
            exit;
        }
        else if(isset($_SESSION['quanlymarketting']))
        {
            header('location:../logout.php');
            exit;
        }
    ?>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.php"><img src="../assets/images/noi_that1.jpg" style="height:50px; width:200px; " alt=""></a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
            <!-- Navbar right-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img style="width:50px; height:50px;" src="../assets/images/<?php echo $_SESSION['boss']['hinh']; ?>" alt=""></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Settings</a>
                        <a class="dropdown-item" href="#">Activity Log</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="../logout.php">Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <a class="nav-link" href="index.php">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <div class="sb-sidenav-menu-heading">Interface</div>
                            <a class="nav-link collapsed" href="danhsach.php" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Quản lý Nhân Viên
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="create.php">Create NV</a>
                                    <a class="nav-link" href="danhsach.php">Danh sách NV</a>
                                    <a class="nav-link" href="nhanviencu.php">Danh sách NV cũ</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="../quanlykinhdoanh/quanlykinhdoanh.php">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Phòng kinh doanh
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            
                            <a class="nav-link collapsed" href="../quanlymarketting/quanlymarketting.php" >
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Phòng Marketting
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            
                            
                        </div>
                    </div>
                    
                </nav>
            </div>
            <?php
                $sql="SELECT * from quantri";
                $stm=$obj->query($sql);
                $soluong=$stm->rowcount(); 
            ?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Create New</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active"><?php echo"Số lượng tài khoản: $soluong"?></li>
                        </ol>
                        <div class="card-body">
                            <div class="table-responsive">
                                <form action="chucnang.php?action=them" enctype="multipart/form-data" style="width:700px;" method="post">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr><th  style="width:80px;">Username</th><td><input   type="text" name="Username" id=""></td></tr>
                                            <tr><th  style="width:80px;">Password</th><td><input   type="Password" name="Password" id=""></td></tr>
                                            <tr><th  style="width:80px;">Họ Tên NV</th><td><input   type="text" name="tenquantri" id=""></td></tr>
                                            <tr ><th  style="width:80px;">Quyền</th>
                                                <td>
                                                    <select name="quyen" id="">
                                                        <option value="1">Quản lý kinh doanh</option>
                                                        <option value="2">Quản lý Marketting</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr><th  style="width:80px;">Hình</th><td><input   type="file" name="hinh" id=""></td></tr>
                                            <tr><th  style="width:80px;">Thao tác</th><td ><input class="btn btn-primary"  type="submit" value="Create"></td></tr>
                                        </thead>
                                        
                                    </table>
                                </form>
                            </div>
                        </div>
                        
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2020</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
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
