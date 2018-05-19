require.config({
	baseUrl:'http://apps.bdimg.com/libs/',
	paths:{
		'jquery':'jquery/2.1.4/jquery.min'
	}
})

define(['jquery'],function(){
	return {
		rankslider:(function(){
			var num=0;
			var count=null;
			
				
				$('.rank-tab-hd-dx-1').on('mouseover',function(){
					$('.rank-tab-hd-dx').css('color','#666666')
					$('.rank-tab-hd-dx-1').css('color','#e33333')
					$('.tab-con-wrap-w').hide()
					$('.tab-con-wrap-1').show();
				})
				$('.rank-tab-hd-dx-2').on('mouseover',function(){
					$('.rank-tab-hd-dx').css('color','#666666')
					$('.rank-tab-hd-dx-2').css('color','#e33333')
					$('.tab-con-wrap-w').hide()
					$('.tab-con-wrap-2').show();
				})
				$('.rank-tab-hd-dx-3').on('mouseover',function(){
					$('.rank-tab-hd-dx').css('color','#666666')
					$('.rank-tab-hd-dx-3').css('color','#e33333')
					$('.tab-con-wrap-w').hide()
					$('.tab-con-wrap-3').show();
				})
				$('.rank-tab-hd-dx-4').on('mouseover',function(){
					$('.rank-tab-hd-dx').css('color','#666666')
					$('.rank-tab-hd-dx-4').css('color','#e33333')
					$('.tab-con-wrap-w').hide()
					$('.tab-con-wrap-4').show();
				})
				$('.rank-tab-hd-dx-5').on('mouseover',function(){
					$('.rank-tab-hd-dx').css('color','#666666')
					$('.rank-tab-hd-dx-5').css('color','#e33333')
					$('.tab-con-wrap-w').hide()
					$('.tab-con-wrap-5').show();
				})
				$('.rank-btns-1').on('mouseover',function(){
					$('.tab-item-1').show();
					$('.tab-item-2').hide();
					
				})
				$('.rank-btns-2').on('mouseover',function(){
					$('.tab-item-2').show();
					$('.tab-item-1').hide();
					
				})
			
		})(),
		
		slider:(function(){
			var num=0;
			var timer=null;
			$('.alumb-bd').on('mouseover',function(){
				clearInterval(timer)
			})
			$('.alumb-bd').on('mouseout',function(){
				timer=setInterval(function(){
					$('.album-control-next').click();
				},2000)
			})
			$('.alumb-btns').on('mouseover',function(){
				num=$(this).index();
			})
			$('.album-control-prev').on('click',function(){
				num--;
				if(num<=-1){
					num=2;
				}
				$('.alumb-item-dx').eq(num).show().siblings('a').hide()
			})
			$('.album-control-next').on('click',function(){
				num++;
				if(num>=3){
					num=0;
				}
				$('.alumb-item-dx').eq(num).show().siblings('a').hide()
			})
			timer=setInterval(function(){
				$('.album-control-next').click();
			},2000)
		})()
	}
})