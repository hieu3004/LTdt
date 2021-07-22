<?php

    include '../../../config/config.php';
    
    $masp= isset($_POST['masanpham'])?$_POST['masanpham']:"";
    $tensp= isset($_POST['tensanpham'])?$_POST['tensanpham']:"";
    $maloai= isset($_POST['maloai'])?$_POST['maloai']:"";
    $makhonggian= isset($_POST['makhonggian'])?$_POST['makhonggian']:"";
    $gia= isset($_POST['gia'])?$_POST['gia']:"";
    $khoiluong= isset($_POST['khoiluong'])?$_POST['khoiluong']:"";
    $mausac= isset($_POST['mausac'])?$_POST['mausac']:"";
    $kichthuoc= isset($_POST['kichthuoc'])?$_POST['kichthuoc']:"";
    $chatlieu= isset($_POST['chatlieu'])?$_POST['chatlieu']:"";
    $mota= isset($_POST['mota'])?$_POST['mota']:"";
    $action=isset($_GET['action'])?$_GET['action']:'';
    /////////////////////////////////hình/////////
    $errFile =$_FILES['hinh']['error'];
    if($action=="them")
    {
    echo $masp.$maloai.$makhonggian.$tensp.$gia.$khoiluong.$mausac.$kichthuoc.$chatlieu.$mota;
        if(!$masp||!$maloai||!$makhonggian||!$tensp||!$gia||!$khoiluong||!$mausac||!$kichthuoc||!$chatlieu||!$mota)
        {
            echo "nhập đầy đủ thông tin";

        }
        else
        {   
            if($errFile>0)
            {
                echo $err ="loi file hinh";
            }
            
            if(!isset($err))
            {
                $hinh= $_FILES['hinh']['name'];
                if($hinh=='')
                {
                    echo "hinh rông";
                }
                $tmp=$_FILES['hinh']['tmp_name'];
                if(!move_uploaded_file($tmp,"../assets/images/$hinh"))
                {
                    echo "khoong up hinh dc";
                    exit;
                }
                $sql="INSERT INTO sanpham(masanpham,maloai,tensanpham,khoiluong,hinh,gia,trangthai,mausac,chatlieu,kichthuoc,mota,makhonggian)
                                    values('$masp','$maloai','$tensp','$khoiluong','$hinh','$gia','0','$mausac','$chatlieu','$kichthuoc','$mota','$makhonggian')";
                $stm=$obj->query($sql);
                echo "them thành công";
                header('location:sanpham.php');
            }
        }
    }