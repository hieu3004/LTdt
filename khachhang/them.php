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
            echo $err="ten đăng nhập rỗng <br>";
            
        }
        if($pass!=$confimpass)
        {
            echo $err=" mật khẩu nhập lại không chính xác. <br>";
            
        }
        if(strlen($hoten)<6)
        {
            echo $err="Họ tên phải nhiều hơn 6 ký tự! <br>";
            
        }
        if(strlen($sdt)<10 )
        {
            echo $err="vui long nhap sdt du 11 so! <br>";
        }
        if(checkEMAIL($email)==false)
        {
            echo $err="định dạng email không hợp lệ <br>";
        }
        if(!isset($err))
        {
            $pass=md5($pass);
            $sql="INSERT INTO khachhang(Usernames,Passwords,tenkhachhang,sdt,email,diachi) values('$user','$pass','$hoten','$sdt','$email','$diachi')";
            $stm= $obj->prepare($sql);
            $stm->execute();
            echo "đang ký thành công!";
            header('location:login.php');
        }
    }
    
?>