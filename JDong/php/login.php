<?php
	header('content-type:text/html;charset=utf-8');
	$cont=mysqli_connect('localhost','root','123456');
	if(!$cont){
		die('数据库连接失败'.mysqli_error());
	}
		mysqli_select_db($cont,'jingdong');
		mysqli_query($cont,'SET NAMES UTF8');
		
	if(isset($_POST['name'])){
		$username=$_POST['name'];
		$pwd=md5($_POST['pwd']);
	}
	
	$query1="select * from admin where user='$username' and password='$pwd'";
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

?>