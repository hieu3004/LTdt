<?php
	include("../config/config.php");
	if(!isset($_SESSION)) session_start();
	function postdata($index,$value="")
	{
		if(!isset($_POST[$index])) return $value;
		return $_POST[$index];
	}
	$user= isset($_POST['Username'])?$_POST['Username']:'';
	$pass= isset($_POST['Password'])?$_POST['Password']:'';
	$pass=md5($pass);
	if(!$user||!$pass)
	{
		echo "Vui lòng điền đầy đủ thông tin!";
	}
	else{
		
		$sql="SELECT * From khachhang where Usernames=? and Passwords=?";
		$stm=$obj->prepare($sql);
		$stm->execute([$user,$pass]);
		$n= $stm->rowCount();
		if($n==0)
		{
			
			header('location:login.php');exit;
		} 
		$_SESSION['khachhang']=$stm->fetch();
		header('location:index.php');
		//print_r($_SESSION['khachhang']);
	 }
?>