require.config({
	baseUrl:'http://apps.bdimg.com/libs/',
	paths:{
		'jquery':'jquery/2.1.4/jquery.min'
	}
})
define(['jquery'],function(){
	return {
		lunbo:(function(){
			setTimeout(function(){
				 var $liwidth=$('.ban-pic').find('li:eq(0)').outerWidth();
				 var $prev=$('.btn-prev')
				 var $next=$('.btn-next')
				 var pindex=0;
				 var index=0;
				 var num=null;
				 var timer=null;
				 $('.ban-col2-wrap').on('mouseover',function(){
				 	clearInterval(timer)
				 })
				 $('.ban-col2-wrap').on('mouseout',function(){
				 	timer=setInterval(function(){
						$next.click();
					},2000)
				 })
				
				$('.bot-btns-dx').on('click',function(){
					num=$(this).index();
					$('.bot-btns-inner').hide();
					$(this).find('i').show();
					if(pindex!=num){
						$('.ban-pic').find('li:eq('+num+')').stop(true).animate({
							opacity:1
						})
						$('.ban-pic').find('li:eq('+pindex+')').stop(true).animate({
							opacity:0
						})
						
					}
					pindex=num;
				})
				$next.on('click',function(){
					num++;
					if(num>=8){
						num=0;
						pindex=7;
					}
					$('.bot-btns-inner').hide();
					$('.bot-btns-inner').eq(num).show();
					$('.ban-pic').find('li:eq('+num+')').animate({
						opacity:1
					})
					$('.ban-pic').find('li:eq('+pindex+')').animate({
						opacity:0
					})
					pindex=num;
				})
				$prev.on('click',function(){
					num--;
					if(num<=-1){
						num=7;
						pindex=0;
					}
					$('.bot-btns-inner').hide();
					$('.bot-btns-inner').eq(num).show();
					$('.ban-pic').find('li:eq('+num+')').animate({
						opacity:1
					},500)
					$('.ban-pic').find('li:eq('+pindex+')').animate({
						opacity:0
					},500)
					pindex=num;
				})
				timer=setInterval(function(){
					$next.click();
				},2000)
				
				
				
				//二级导航
				setTimeout(function(){
					$('#banner a').hover(function(){
						$(this).css('color','#e33333')
					},function(){
						$(this).css('color','#666666')
					})
					$('.ban-col1-wrap').on('mouseover',function(){
						$('.nav-menu-two').show();
					})
					$('.ban-col1-wrap').on('mouseout',function(){
						$('.nav-menu-two').hide();
					})
				},0)
				
				//右侧Tab切换
				$('.news-a').on('mouseover',function(){
					$('.tab-con-item-a').addClass('tab-con-item-on').siblings('div').removeClass('tab-con-item-on');
					$('.news-bot-line').stop(true).animate({
						left:0
					},300)
				})
				$('.news-b').on('mouseover',function(){
					$('.tab-con-item-b').addClass('tab-con-item-on').siblings('div').removeClass('tab-con-item-on');
					$('.news-bot-line').stop(true).animate({
						left:55
					},300)
				})
				
				},0)
		})()
	}
})