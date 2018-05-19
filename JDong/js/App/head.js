require.config({
	baseUrl:'http://apps.bdimg.com/libs/',
	paths:{
		'jquery':'jquery/2.1.4/jquery.min'
	}
})
define(['jquery'],function(j,g){
	function ranNum(max,min){
		return Math.round(Math.random()*(max-min))+min;
	}
	function getCookie(key){
				var str=decodeURI(document.cookie);
				var arr=str.split('; ');
				for(var i=0;i<arr.length;i++){
					var arr1=arr[i].split('=');
	 				if(arr1[0]==key){
						return arr1[1];
					}
				}
			}
	return {
		getname:(function(){
			if(getCookie('UserName')){
				$('#login').html('你好，'+getCookie('UserName'))
			}
		})(),
		changecolor:(function(){
			setTimeout(function(){
				var $oldcolor=null;
				var bp=true;
				$('#head a').hover(function(){
					$oldcolor=$(this).css('color');
					$(this).css('color','#f10215');
				},function(){
					$(this).css('color',$oldcolor);
				});
				timer=setInterval(function(){
					if(bp){
						$('.hotword-first').html('智能黑科技')
						bp=false;
					}else{
						$('.hotword-first').html('卡帕新品日')
						bp=true;
					}
					
				},1000)
			},500)
				
			
			
		})()
		
		
		
		
	}
})