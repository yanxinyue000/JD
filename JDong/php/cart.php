<?php
		header('content-type:text/html;charset=utf-8');
		$cont=mysqli_connect('localhost','root','123456');
		if(!$cont){
			die('数据库连接失败'.mysqli_error());
		}
		mysqli_select_db($cont,'jingdong');
		mysqli_query($cont,'SET NAMES UTF8');
		
		$goods='select * from goods';
		$result6=mysqli_query($cont,$goods);
		$aGoods=array();
		for($i=0;$i<mysqli_num_rows($result6);$i++){
			$aGoods[$i]=mysqli_fetch_array($result6,MYSQLI_NUM);//数组的每一项是另外一个数组，二维数组
		}
	
	echo json_encode($aGoods);
?>