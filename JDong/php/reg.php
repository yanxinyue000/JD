<?php
	header('content-type:text/html;charset=utf-8');
	$cont=mysqli_connect('localhost','root','123456');
	if(!$cont){
		die('数据库连接失败'.mysqli_error());
	}
		mysqli_select_db($cont,'jingdong');
		mysqli_query($cont,'SET NAMES UTF8');
		
	if(isset($_POST['name']) || isset($_POST['submit'])){
		$username=$_POST['name'];
	}else{
		exit('非法操作');
	}
	
	$query1="select * from admin where user='$username'";
	$result1=mysqli_query($cont,$query1);
	if (!$result1) {
	 printf("Error: %s\n", mysqli_error($cont));
	 exit();
	}
	if(mysqli_fetch_array($result1)){
		echo true;
	}else{
		echo false;
	}

	if(isset($_POST['submit'])){
		$user=$_POST['username'];
		$pass=md5($_POST['password']);
		$query="insert admin values(null,'$user','$pass')";
		mysqli_query($cont,$query);
		header('location:../index.html');//跳转到login.html页面
	}
?>