<?php
header('content-type:text/html;charset=utf-8');
$cont=mysqli_connect('localhost','root','123456');
if(!$cont){
	die('数据库连接失败'.mysqli_error());
}
mysqli_select_db($cont,'jingdong');
	mysqli_query($cont,'SET NAMES UTF8');
	
	$hotwords ='select * from hotwords';
	$result1=mysqli_query($cont,$hotwords);
	$hotw=array();
	for($i=0;$i<mysqli_num_rows($result1);$i++){
		$hotw[$i]=mysqli_fetch_array($result1,MYSQLI_NUM);//数组的每一项是另外一个数组，二维数组
	}
	
	$lunbopic ='select * from lunbotu';
	$result2=mysqli_query($cont,$lunbopic);
	$lunbo=array();
	for($i=0;$i<mysqli_num_rows($result2);$i++){
		$lunbo[$i]=mysqli_fetch_array($result2,MYSQLI_NUM);//数组的每一项是另外一个数组，二维数组
	}
	
	$youhui ='select * from youhui';
	$result3=mysqli_query($cont,$youhui);
	$aYouhui=array();
	for($i=0;$i<mysqli_num_rows($result3);$i++){
		$aYouhui[$i]=mysqli_fetch_array($result3,MYSQLI_NUM);//数组的每一项是另外一个数组，二维数组
	}
	
	$seckill='select * from seckill';
	$result4=mysqli_query($cont,$seckill);
	$aSeckill=array();
	for($i=0;$i<mysqli_num_rows($result4);$i++){
		$aSeckill[$i]=mysqli_fetch_array($result4,MYSQLI_NUM);//数组的每一项是另外一个数组，二维数组
	}
	
	$banadv='select * from banrightadv';
	$result5=mysqli_query($cont,$banadv);
	$aBanadv=array();
	for($i=0;$i<mysqli_num_rows($result5);$i++){
		$aBanadv[$i]=mysqli_fetch_array($result5,MYSQLI_NUM);//数组的每一项是另外一个数组，二维数组
	}
	
	$goods='select * from goods';
	$result6=mysqli_query($cont,$goods);
	$aGoods=array();
	for($i=0;$i<mysqli_num_rows($result6);$i++){
		$aGoods[$i]=mysqli_fetch_array($result6,MYSQLI_NUM);//数组的每一项是另外一个数组，二维数组
	}
	
	$mime='select * from mime';
	$result7=mysqli_query($cont,$mime);
	$aMime=array();
	for($i=0;$i<mysqli_num_rows($result7);$i++){
		$aMime[$i]=mysqli_fetch_array($result7,MYSQLI_NUM);//数组的每一项是另外一个数组，二维数组
	}
	
	$subnav='select * from subnav';
	$result8=mysqli_query($cont,$subnav);
	$aSubnav=array();
	for($i=0;$i<mysqli_num_rows($result8);$i++){
		$aSubnav[$i]=mysqli_fetch_array($result8,MYSQLI_NUM);//数组的每一项是另外一个数组，二维数组
	}
	
	Class obj{};
	$date=new obj();
	$date->hotword=$hotw;
	$date->bannerpic=$lunbo;
	$date->youhuipic=$aYouhui;
	$date->seckillpic=$aSeckill;
	$date->banadvpic=$aBanadv;
	$date->goodpic=$aGoods;
	$date->mime=$aMime;
	$date->subnav=$aSubnav;
	
	
	
	echo json_encode($date);
	
?>