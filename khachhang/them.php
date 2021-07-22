<?php
    include('../config/config.php');
   function postINDEX($index,$values="")
    {
       if(!isset($_POST[$index])) return $values;
       return trim($_POST[$index]);
    }
    function checkEMAIL($string)
    {
       
        if(preg_match("/^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-z.]{2,5}$/",$string))
        {
            return true;
        }
        return false;
    }
    $user =postINDEX("Username");
    $pass=postINDEX("pass");
    $confimpass=postINDEX("confimpass");
    $hoten=postINDEX("hoten");
    $sdt=postINDEX("sdt");
    $diachi=postINDEX("diachi");
    $email=postINDEX("email");
    $sm=postINDEX("submit");
    
    if($sm!="")
    {
        if($user=="")
        {
            echo $err="Tên đăng nhập rỗng <br>";
            
        }
        if($pass=="")
        {
            echo $err="Mật khẩu không đuợc để trống";
        }
        if($confimpass=="")
        {
            echo $err="Nhập lai mật khẩu không đuợc để trống";
        }
        if($pass!=$confimpass)
        {
            echo $err="Mật khẩu nhập lại không chính xác. <br>";
            
        }
        if(strlen($hoten)<6)
        {
            echo $err="Họ tên phải nhiều hơn 6 ký tự! <br>";
            
        }
        if(strlen($sdt)!=10 )
        {
            echo $err="Vui long nhap sdt du 10 so! <br>";
        }
        if(checkEMAIL($email)==false)
        {
            echo $err="Định dạng email không hợp lệ <br>";
        }
        if(!isset($err))
        {
            $pass=md5($pass);
            $sql="INSERT INTO khachhang(Usernames,Passwords,tenkhachhang,hinh,sdt,email,diachi) 
            values('$user','$pass','$hoten','photo-4.jpg','$sdt','$email','$diachi')";
            
            if($sql!="")
            {
                $stm= $obj->query($sql);


                // echo '<script language="javascript">alert("Đăng ký thành công"); window.location="register.php";</script>';
                header('location:login.php');
            }
            else
            { 
                echo "Bạn vui lòng nhập đầy đủ thông tin!";
            }
        }
    }
    
?>