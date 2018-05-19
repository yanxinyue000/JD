require.config({
	baseUrl:'http://apps.bdimg.com/libs/',
	paths:{
		'jquery':'jquery/2.1.4/jquery.min'
	}
})

define(['jquery'],function(){
	return {
		seckilltime:(function(){
				var intDiff = parseInt(3000);//倒计时总秒数量
				function timer(intDiff){
			    window.setInterval(function(){
				    var day=0,
				        hour=0,
				        minute=0,
				        second=0;//时间默认值        
				    if(intDiff > 0){
				        day = Math.floor(intDiff / (60 * 60 * 24));
				        hour = Math.floor(intDiff / (60 * 60)) - (day * 24);
				        minute = Math.floor(intDiff / 60) - (day * 24 * 60) - (hour * 60);
				        second = Math.floor(intDiff) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
				    }
				    if (minute <= 9) minute = '0' + minute;
				    if (second <= 9) second = '0' + second;
				    $('#day_show').html(day+"天");
				    $('.cd-hour-text').html(hour);
				    $('.cd-min-text').html(minute);
				    $('.cd-sec-text').html(second);
				    intDiff--;
				    }, 1000);
				} 
				$(function(){
					 timer(intDiff);
				})
				   
				
		})(),
		
		slider:(function(){
			var num=0;
			setTimeout(function(){
				$('.sk-btns-prev').on('click',function(){
					num--;
					if(num==-1){
						num=0;
					}
					$('.sk-slider-list').stop(true).animate({
						left:num*800
					})
				})
				$('.sk-btns-next').on('click',function(){
					num++;
					if(num==2){
						num=1;
					}
					$('.sk-slider-list').stop(true).animate({
						left:-num*800
					})
				})
			},0)
			
		})(),
		
		
		tabs:(function(){
			var num=0;
			var timer=null;
			setTimeout(function(){
				$('.sk-r-inner').on('mouseover',function(){
					clearInterval(timer)
				})
				$('.sk-r-inner').on('mouseout',function(){
					timer=setInterval(function(){
						num++;
						$('.slider-list').animate({
								left:-num*180
							},200,function(){
								if(num==2){
									$('.slider-list').css('left','0')
									num=0;
								}
							})
					},1000)
				})
				$('.slider-btns').on('mouseover',function(){
					num=$(this).index();
					$(this).find('.slider-btns-after').css('background','#e83632')
					$('.slider-list').animate({
						left:-num*180
					},200)
				})
				$('.slider-btns').on('mouseout',function(){
					$(this).find('.slider-btns-after').css('background','#ffffff')
				})
			timer=setInterval(function(){
				num++;
				$('.slider-list').animate({
						left:-num*180
					},200,function(){
						if(num==2){
							$('.slider-list').css('left','0')
							num=0;
						}
					})
			},2000)
			},0)
		})()
	}
})