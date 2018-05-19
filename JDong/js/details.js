;(function(){
	$(function(){
		var num=0;
		var count=0;
		var cnum=$('.lh li').length-5;
		var $spic=$('.spic');
		var $sf=$('.sf');
		var $bpic=$('.bpic');
		var $bf=$('.bf');
		var $add=$('.add');
		var $reduce=$('.reduce');
		var $count=$('.count');
		var gnum=1;
		$('.lh li').on('click',function(){
			num=$(this).index();
			$(this).find('img').css('border-color','red')
			$(this).siblings('li').find('img').css('border-color','white')
			$('.spic').find('img').attr('src','img/b-'+num+'.dpg')
			$('.bpic').find('img').attr('src','img/bb-'+num+'.dpg')
		})
		$('.btn-next').on('click',function(){
			count++;
			if(count>=cnum){
				count=cnum;
			}
			$('.lh').animate({
				'margin-left':-58*count
			})
		})
		$('.btn-prev').on('click',function(){
			count--;
			if(count<=0){
				count=0;
			}
			$('.lh').animate({
				'margin-left':58*count
			})
		})
		
		
		
		$spic.on('mouseover',function(){
			$sf.show();
			$bf.show();
			var $sfwidth=$spic.outerWidth()*$bf.outerWidth()/$bpic.outerWidth();
			var $sfheight=$spic.outerHeight()*$bf.outerHeight()/$bpic.outerHeight();
			var $bili=$bpic.outerWidth()/$spic.outerWidth();
			$sf.css({
				'width':$sfwidth,
				'height':$sfheight
			})
			$spic.on('mousemove',function(ev){
				var ev=ev||window.event;
				var sx=ev.pageX-$('.f-wrap').offset().left-$sf.outerWidth()/2;
				var sy=ev.pageY-$('.f-wrap').offset().top-$sf.outerHeight()/2;
				if(sx<=0){
					sx=0;
				}else if(sx>=$spic.outerWidth()-$sf.outerWidth()+2){
					sx=$spic.outerWidth()-$sf.outerWidth()+2
				}
				if(sy<=0){
					sy=0
				}else if(sy>=$spic.outerHeight()-$sf.outerHeight()+2){
					sy=$spic.outerHeight()-$sf.outerHeight()+2
				}
				$sf.css({
					'left':sx,
					'top':sy
				})
				$bpic.css({
					'left':-sx*$bili,
					'top':-sy*$bili
				})
			})
		}).on('mouseout',function(){
			$sf.hide();
			$bf.hide();
		})
		
		$add.on('click',function(){
			gnum++;
			if(gnum>=100){
				gnum=99;
				$('.error-tip').html('装不下了...').show();
			}else{
				$('.error-tip').html('').hide();
			}
			$count.html(gnum);
			return false;
		})
		$reduce.on('click',function(){
			gnum--;
			if(gnum<=0){
				gnum=1;
				$('.error-tip').html('真的不能再减了...').show();
			}else{
				$('.error-tip').html('').hide();
			}
			
			$count.html(gnum);
			return false;
		})
		var data=null;
		var $sid=null;
		var sidarr=[];
		var numarr=[];
		$('.btn-cart').on('click',function(){
			$.ajax({
				url:"php/cart.php",
				async:false,
				success:function(d){
					data=JSON.parse(d)
					$sid=data[21][0];
				}
			});
			if($.cookie('sid')){
				sidarr=$.cookie('sid').split(',')
			}
			if($.cookie('goodsnum')){
				numarr=$.cookie('goodsnum').split(',')
			}
			
			if($.inArray($sid,sidarr)!=-1){
				var num=Number(numarr[$.inArray($sid,sidarr)])+Number($count.html())
				numarr[$.inArray($sid,sidarr)]=num;
				$.cookie('goodsnum',numarr.toString(),7)
			}else{
				sidarr.push($sid);
				$.cookie('sid',sidarr.toString(),7)
				numarr.push($count.html())
				$.cookie('goodsnum',numarr.toString(),7)
			}
		})
	
	})
})();
