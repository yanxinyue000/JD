require.config({
	baseUrl:'http://apps.bdimg.com/libs/',
	paths:{
		'jquery':'jquery/2.1.4/jquery.min'
	}
})
define(['jquery'],function(){
	return {
		topheadhover:(function(){
			var oZuobiao=$('.l_add');
			oZuobiao.hover(function(){
				oZuobiao.find('.zuobiao').css({
					'background': 'white',
				    'border-color': '#cccccc',
				    'border-bottom-color': 'white'
				});
				oZuobiao.find('.zuobiao').siblings('div').show();
			},function(){
				oZuobiao.find('.zuobiao').css({
					'background': '#e3e4e5',
				    'border-color': 'transparent',
				    'border-bottom-color': 'transparent'
				});
				oZuobiao.find('.zuobiao').siblings('div').hide();
			})
			$('.item-add').hover(function(){
				$(this).css({
					'background':'#f4f4f4',
					'color':'#e33333'
				})
			},function(){
				$(this).css({
					'background':'#ffffff',
					'color':'#999999'
				})				
			})
			$('.r_nav li').has('div ul').not('.mobileJD-li').hover(function(){
				$(this).find('a').css({
					'background': 'white',
				    'border-color': '#cccccc',
				    'border-bottom-color': 'white'
				});
				$(this).find('div').show();
			},function(){
				$(this).find('a').css({
					'background': '#e3e4e5',
				    'border-color': 'transparent',
				    'border-bottom-color': 'transparent'
				});
				$(this).find('div').hide();
			})
			$('.mobileJD-li').hover(function(){
				$('.mobileJD-two').show();
				$('.JD-code').hide();
			},function(){
				$('.mobileJD-two').hide();
				$('.JD-code').show();
				
			})
			$('#top_head a').hover(function(){
				$(this).css('color','#e33333')
			},function(){
				$(this).css('color','#999999')
			})
		})()
	}
	
})