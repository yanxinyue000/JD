;(function(){
	$(function(){
		$('#username').on('focus',function(){
			$('.error').hide();
		})
		$('#password').on('focus',function(){
			$('.error').hide();
		})
		$('#btn').on('click',function(){
			var username=$('#username').val();
			var password=$('#password').val();
			$.ajax({
				type:"post",
				url:"php/login.php",
				data:{
					name:username,
					pwd:password
				},
				success:function(d){
					if(d){
						addcookies('UserName',username,7);
						location.href='index.html';
					}else{
						$('.error').show();
					}
				}
			});
		})
		function addcookies(k,v,days){
				var day=new Date()
				day.setDate(day.getDate()+days);
				document.cookie=k+'='+v+';expires='+day;
			}
	})
})();