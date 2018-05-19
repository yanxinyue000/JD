;(function(){
	//底部商品数据拼接
	var $data=null;
	$.ajax({
		url:"php/cart.php",
		success:function(d){
			$data=JSON.parse(d);
			for (var i=0;i<4;i++) {
				$('.goods-list-inner').append('<li><div class="goodsinfo"><p class="p-img"><img sid='+i+' src="'+$data[i][7]+'"/></p><p class="p-name">'+$data[i][3]+'</p><p class="p-price"><strong>'+$data[i][2]+'</strong></p><p class="p-btn"><a href="javascript:;">加入购物车</a></p></div></li>')
			}
		}
	});
	//购物车
	var sidarr=[];
	var numarr=[];
	setTimeout(function(){
		kong();
		
		$('.goodsinfo a').on('click',function(){
			if($.cookie('sid')){
				sidarr=$.cookie('sid').split(',');
			}
			if($.cookie('goodsnum')){
				numarr=$.cookie('goodsnum').split(',');
			}
			var $sid=$(this).parents('.goodsinfo').find('img').attr('sid');
			if($.inArray($sid,sidarr)!=-1){
				return false;

			}else{
				sidarr.push($sid);
				$.cookie('sid',sidarr.toString(),7)
				numarr.push(1)
				$.cookie('goodsnum',numarr.toString(),7)
				var cdiv=$('.goods-item:hidden').clone(true);
					cdiv.find('.goods-pic').find('img').attr('src',$data[$sid][7])
					cdiv.find('.goods-pic').find('img').attr('sid',$sid)
					cdiv.find('.goods-d-info').find('a').html($data[$sid][3])
					cdiv.find('.b-props').find('.prop-text').html($data[$sid][1])
					cdiv.find('.b-price').find('strong').html($data[$sid][2])
					cdiv.find('.quantity-form').find('input').val(1)
					var cnum=parseInt(cdiv.find('.quantity-form').find('input').val());
					var oprice=parseFloat(cdiv.find('.b-price').find('strong').html());
					cdiv.find('.b-sum').find('strong').html((cnum*oprice).toFixed(2));
					cdiv.css('display','block');
					$('.item-list').append(cdiv);
					totalprice();
			}
			

		})
		
		if($.cookie('sid')){
			sidarr=$.cookie('sid').split(',');
			console.log(sidarr)
			numarr=$.cookie('goodsnum').split(',');
			$.each(sidarr, function(i) {
				var cdiv=$('.goods-item:hidden').clone(true);
				cdiv.find('.goods-pic').find('img').attr('src',$data[sidarr[i]][7])
				cdiv.find('.goods-pic').find('img').attr('sid',sidarr[i])
				cdiv.find('.goods-d-info').find('a').html($data[sidarr[i]][3])
				cdiv.find('.b-props').find('.prop-text').html($data[sidarr[i]][1])
				cdiv.find('.b-price').find('strong').html($data[sidarr[i]][2])
				cdiv.find('.quantity-form').find('input').val(numarr[i])
				var cnum=parseInt(cdiv.find('.quantity-form').find('input').val());
				var oprice=parseFloat(cdiv.find('.b-price').find('strong').html());
				cdiv.find('.b-sum').find('strong').html((cnum*oprice).toFixed(2));
				cdiv.css('display','block');
				$('.item-list').append(cdiv);
			});
			totalprice();
			
		}
		
		$('.quantity-add').on('click',function(){
			var $count=$(this).parents('.quantity-form').find('input').val();
			$count++;
			if($count>=99){
				$count=99;
			}
			$(this).parents('.goods-item').find('.quantity-form input').val($count);
			$(this).parents('.goods-item').find('.b-sum strong').html(onesumprice($(this)))
			totalprice()
			setnumcookie($(this))
		})
		$('.quantity-down').on('click',function(){
			var $count=$(this).parents('.quantity-form').find('input').val();
			$count--;
			if($count<=1){
				$count=1;
			}
			$(this).parents('.goods-item').find('.quantity-form input').val($count);
			$(this).parents('.goods-item').find('.b-sum strong').html(onesumprice($(this)))
			totalprice()
			setnumcookie($(this))
		})
		
	},200)
	
	
	$('.item-list').on('click','.b-action a',function(){
		if($.cookie('sid')){
			sidarr=$.cookie('sid').split(',');
		}
		if($.cookie('goodsnum')){
			numarr=$.cookie('goodsnum').split(',');
		}
		$(this).first().parents('.goods-info').remove();
		var delsid=$(this).first().parents('.goods-info').find('img').attr('sid')
		delgoods(delsid,sidarr)
		totalprice();
	})
	
	$('.operation a:first').on('click', function() {
    $('.goods-item:visible').each(function() {
        if ($(this).find('input:checkbox').is(':checked')) {
            $(this).remove();
            delgoods($(this).find('img').attr('sid'), sidarr);
        }
    });
    totalprice();
});
	
	function delgoods(sid,sidarr){
		var index=-1;
		for (var i=0;i<sidarr.length;i++) {
			if(sid==sidarr[i]){
				index=i;
			}
		}
		sidarr.splice(index,1);
		numarr.splice(index,1);
		$.cookie('sid',sidarr.toString(),7);
		$.cookie('goodsnum',numarr.toString(),7);
	}
	
	function kong(){
		if($.cookie('sid')&&$.cookie('goodsnum')){
			$('.empty-cart').css('display','none')
		}else{
			$('.empty-cart').css('display','block')
		}
	}
	function totalprice(){
		var sumprice=0;
		var sumnum=0;
		$('.goods-item:visible').each(function(){
			if($(this).find('input:checkbox').is(':checked')){
				sumprice+=parseFloat($(this).find('.b-sum strong').html())
				sumnum+=parseInt($(this).find('.quantity-form').find('input').val())
			}
			$('.totalprice').html('￥' + sumprice.toFixed(2));
   			$('.amount-sum em').html(sumnum);
		})
	}
	
	function onesumprice(obj){
		var cnum=parseInt(obj.parents('.goods-item').find('.quantity-form input').val());
		var oprice=parseFloat(obj.parents('.goods-item').find('.b-price').find('strong').html());
		return (cnum*oprice).toFixed(2);
	}
	
	function setnumcookie(obj){
		if($.cookie('sid')){
			sidarr=$.cookie('sid').split(',');
		}
		if($.cookie('goodsnum')){
			numarr=$.cookie('goodsnum').split(',');
		}
		var $index = obj.parents('.goods-item').find('img').attr('sid');
	    numarr[sidarr.indexOf($index)] = obj.parents('.goods-item').find('.quantity-form input').val();
	    $.cookie('goodsnum', numarr.toString(), 7);
	}
	
	
	
})();