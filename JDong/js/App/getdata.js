
	require.config({
	baseUrl:'http://apps.bdimg.com/libs/',
	paths:{
		'jquery':'jquery/2.1.4/jquery.min'
	}
	})
	define(['jquery'],function(){
		return {
		getdata:(function(){
			$.ajax({
				type:"get",
				url:"php/data.php",
				async:true,
				success:function(d){
					var data=[];
					data=JSON.parse(d);
					var $hotwords=data.hotword;
					var $lunbo=data.bannerpic;
					var $youhui=data.youhuipic;
					var $seckill=data.seckillpic;
					var $banadv=data.banadvpic;
					var $goods=data.goodpic;
					var $mime=data.mime;
					var $subnav=data.subnav;
 					var $hotwA=$('.hotwords a');
					$.each($hotwords,function(i){
						$('.hotwords').append('<a href="'+$hotwords[i][1]+'">'+$hotwords[i][2]+'</a>')
					})
					$('.hotwords').find('a:eq(0)').addClass('hotword-first').css('color','#f10215')
					$.each($lunbo,function(i){
						$('.ban-pic').append('<li class="ban-pic-item"><a class="ban-pic-item-dx"><img src="'+$lunbo[i][2]+'"/></a></li>')
						
					})
					$('.ban-pic li:eq(0)').css('opacity',1).siblings('li').css('opacity',0);
					var $liwidth=$('.ban-pic').find('li:eq(0)').outerWidth();
					$('.ban-pic').css('width',$liwidth*$lunbo.length);
					
					$.each($youhui,function(i){
						$('.ban-col3-wrap').append('<div class="rec-item"><a href="'+$youhui[i][1]+'" target="_blank" class="rec-item-dx"><img src="'+$youhui[i][2]+'" class="rec-item-img"/></a></div>')
					})
					$('.rec-item').eq(0).css('margin-top',0);
					for (var i=0;i<4;i++) {
						$('.sk-slider-wrap-1').append('<li class="sk-list-item"><a href="'+$seckill[i][1]+'" target="_blank" class="sk-list-item-dx"><img class="sk-item-img" src="'+$seckill[i][2]+'"/><p class="sk-item-name">'+$seckill[i][3]+'</p><div class="sk-item-price clear"><span class="sk-item-price-new"><i>¥</i><span>'+$seckill[i][4]+'</span></span><span class="sk-item-price-old"><i>¥</i><span>'+$seckill[i][5]+'</span></span></div></a></li>')
					}
					for (var i=4;i<8;i++) {
						$('.sk-slider-wrap-2').append('<li class="sk-list-item"><a href="'+$seckill[i][1]+'" target="_blank" class="sk-list-item-dx"><img class="sk-item-img" src="'+$seckill[i][2]+'"/><p class="sk-item-name">'+$seckill[i][3]+'</p><div class="sk-item-price clear"><span class="sk-item-price-new"><i>¥</i><span>'+$seckill[i][4]+'</span></span><span class="sk-item-price-old"><i>¥</i><span>'+$seckill[i][5]+'</span></span></div></a></li>')
					}
					$('.sk-slider-list').css({'width':'1600px','position':'absolute'})
					$('.sk-list-item-dx').css('color','#666666')
					for (var i=0;i<2;i++) {
						$('.sk-r-wrap').append('<a href="'+$banadv[i][1]+'" target="_blank" class="slider-item sk-r-dx"><img src="'+$banadv[i][2]+'" alt="" /></a>')
					}
					$('.sk-r-wrap').append($('.sk-r-dx').eq(0).clone(true))
					$('.sk-r-wrap').css({'width':'540px'})
					$('.slider-list').css({'width':'540px','position':'absolute'})
					
					for (var i=0;i<3;i++) {
						$('.tab-con-wrap-1 .tab-item-1 .tab-con-wrap').append('<div class="con-'+(i+1)+'-item con-item-inner"><a href="'+$goods[i][5]+'" target="_blank" class="tab-con-dx clear"><img src="'+$goods[i][7]+'" alt="" class="tab-con-img"/><span class="tab-con-id">'+(i+1)+'</span><span class="tab-con-name">'+$goods[i][3]+'</span></a></div>')
					}
					for (var i=3;i<6;i++) {
						$('.tab-con-wrap-1 .tab-item-2 .tab-con-wrap').append('<div class="con-'+(i+1)+'-item con-item-inner"><a href="'+$goods[i][5]+'" target="_blank" class="tab-con-dx clear"><img src="'+$goods[i][7]+'" alt="" class="tab-con-img"/><span class="tab-con-id">'+(i+1)+'</span><span class="tab-con-name">'+$goods[i][3]+'</span></a></div>')
					}
					
					for (var i=0;i<3;i++) {
						$('.tab-con-wrap-2 .tab-item-1 .tab-con-wrap').append('<div class="con-'+(i+1)+'-item con-item-inner"><a href="'+$goods[i+6][5]+'" target="_blank" class="tab-con-dx clear"><img src="'+$goods[i+6][7]+'" alt="" class="tab-con-img"/><span class="tab-con-id">'+(i+1)+'</span><span class="tab-con-name">'+$goods[i+6][3]+'</span></a></div>')
					}
					for (var i=3;i<6;i++) {
						$('.tab-con-wrap-2 .tab-item-2 .tab-con-wrap').append('<div class="con-'+(i+1)+'-item con-item-inner"><a href="'+$goods[i+6][5]+'" target="_blank" class="tab-con-dx clear"><img src="'+$goods[i+6][7]+'" alt="" class="tab-con-img"/><span class="tab-con-id">'+(i+1)+'</span><span class="tab-con-name">'+$goods[i+6][3]+'</span></a></div>')
					}
					
					for (var i=0;i<3;i++) {
						$('.tab-con-wrap-3 .tab-item-1 .tab-con-wrap').append('<div class="con-'+(i+1)+'-item con-item-inner"><a href="'+$goods[i+12][5]+'" target="_blank" class="tab-con-dx clear"><img src="'+$goods[i+12][7]+'" alt="" class="tab-con-img"/><span class="tab-con-id">'+(i+1)+'</span><span class="tab-con-name">'+$goods[i+12][3]+'</span></a></div>')
					}
					for (var i=3;i<6;i++) {
						$('.tab-con-wrap-3 .tab-item-2 .tab-con-wrap').append('<div class="con-'+(i+1)+'-item con-item-inner"><a href="'+$goods[i+12][5]+'" target="_blank" class="tab-con-dx clear"><img src="'+$goods[i+12][7]+'" alt="" class="tab-con-img"/><span class="tab-con-id">'+(i+1)+'</span><span class="tab-con-name">'+$goods[i+12][3]+'</span></a></div>')
					}
					for (var i=0;i<3;i++) {
						$('.tab-con-wrap-4 .tab-item-1 .tab-con-wrap').append('<div class="con-'+(i+1)+'-item con-item-inner"><a href="'+$goods[i+18][5]+'" target="_blank" class="tab-con-dx clear"><img src="'+$goods[i+18][7]+'" alt="" class="tab-con-img"/><span class="tab-con-id">'+(i+1)+'</span><span class="tab-con-name">'+$goods[i+18][3]+'</span></a></div>')
					}
					for (var i=3;i<6;i++) {
						$('.tab-con-wrap-4 .tab-item-2 .tab-con-wrap').append('<div class="con-'+(i+1)+'-item con-item-inner"><a href="'+$goods[i+18][5]+'" target="_blank" class="tab-con-dx clear"><img src="'+$goods[i+18][7]+'" alt="" class="tab-con-img"/><span class="tab-con-id">'+(i+1)+'</span><span class="tab-con-name">'+$goods[i+18][3]+'</span></a></div>')
					}
					for (var i=0;i<3;i++) {
						$('.tab-con-wrap-5 .tab-item-1 .tab-con-wrap').append('<div class="con-'+(i+1)+'-item con-item-inner"><a href="'+$goods[i+24][5]+'" target="_blank" class="tab-con-dx clear"><img src="'+$goods[i+24][7]+'" alt="" class="tab-con-img"/><span class="tab-con-id">'+(i+1)+'</span><span class="tab-con-name">'+$goods[i+24][3]+'</span></a></div>')
					}
					for (var i=3;i<6;i++) {
						$('.tab-con-wrap-5 .tab-item-2 .tab-con-wrap').append('<div class="con-'+(i+1)+'-item con-item-inner"><a href="'+$goods[i+24][5]+'" target="_blank" class="tab-con-dx clear"><img src="'+$goods[i+24][7]+'" alt="" class="tab-con-img"/><span class="tab-con-id">'+(i+1)+'</span><span class="tab-con-name">'+$goods[i+24][3]+'</span></a></div>')
					}
					$('.rank-tab-con .tab-con-wrap-w').css({'position':'absolute','left':'20px'})
					$('.rank-tab-con').css({'position':'relative','height':'356px'})
					
					
					for(var i=0;i<3;i++){
						$('.slider-item-wrap').append('<a href="'+$mime[i][1]+'" target="_blank" class="slider-item-dx alumb-item-dx"><img src="'+$mime[i][2]+'" alt="" class="slider-img"/><h3 class="slider-tit">'+$mime[i][3]+'</h3><p class="slider-text">'+$mime[i][4]+'</p></a>')
					}
					$('.slider-item-wrap').css({'position':'absolute','padding-left':'20px','padding-riht':'20px'})
					$('slider-wrap').css({'position':'relative'})
					for (var i=0;i<8;i++) {
						$('.menu-details-con').append('<a href="'+$subnav[i][1]+'" target="_blank" class="menu-details-con-dx">'+$subnav[i][2]+'</a>')
					}
					
				}
			});
		})()
	}
})