;(function(){
	$(function(){
		var userreg=/^([\u4e00-\u9fa5]|[\w\-]){4,20}$/;
		var password=0;
		var bpuser=true;
		var bppwd=true;
		var bprepwd=true;
		$('#form-account').on({
			'input':function(){
				cancel($(this))
			},
			'blur':function(){
				var that=$(this);
				setTimeout(function(){
					that.nextAll('.i-cancel').hide();
					var username=that.val();
					if(username!=''){
						if(userreg.test(username)){
							
							$.ajax({
								type:'post',
								url:"php/reg.php",
								data:{
									name:username
								},
								success:function(d){
									if(d){
										$('#account-error').html('<i class="i-error"></i>用户名已存在')
										$('#account-error').css('color','red')
										bpuser=true;
									}else{
										that.next('.i-status').show()
										$('#account-error').html('')
										bpuser=false;
									}
								}
							});
							
							
						}else{
							$('#account-error').html('<i class="i-error"></i>请输入正确格式')
							$('#account-error').css('color','orange')
							that.next('.i-status').hide()
							bpuser=true;
						}
					}else{
						$('#account-error').html('')
						$('#account-error').css('color','#c5c5c5')
						bpuser=true;
					}
				},100)
			},
			'focus':function(){
				$('#account-error').html($(this).attr('default'))
				$('#account-error').css('color','#c5c5c5')
			}
		})
		
		$('#form-password').on({
			'focus':function(){
				$('#pwd-error').html($(this).attr('default'))
				$('#pwd-error').css('color','#c5c5c5')
			},
			'input':function(){
				cancel($(this));
				password=$('#form-password').val();
				if(password.length>=6){
					if(password.match(/(^[a-zA-Z]+$)|(^[0-9]+$)|(^[\W]+$)/)){
						$('#pwd-error').html('<i class="i-pwd-di"></i>有被盗风险，建议使用字母、数字和符号两种及以上')
					}else if(password.match(/^[a-zA-Z0-9]+$|^[a-zA-Z\W]+$|^[\W0-9]+$/)){
						$('#pwd-error').html('<i class="i-pwd-zhong"></i>安全强度适中，可以使用三种以上的组合来提高安全强度')
					}else if(password.match(/^[a-zA-Z0-9\W]+$/)){
						$('#pwd-error').html('<i class="i-pwd-gao"></i>你的密码很安全')
					}
				}
			},
			'blur':function(){
				var that=$(this);
				setTimeout(function(){
					that.nextAll('.i-cancel').hide();
					password=that.val();
					if(password.length>=6){
						that.next('.i-status').show()
						$('#pwd-error').html('')
						bppwd=false;
					}else{
						$('#pwd-error').html($(this).attr('default'))
						bppwd=true;
					}
					if(password==''){
						$('#pwd-error').html('')
						bppwd=true;
					}
				},100)
			}
		})
		
		
		$('#form-repeatpwd').on({
			'input':function(){
				cancel($(this))
			},
			'blur':function(){
				var that=$(this)
				setTimeout(function(){
					var repwd=that.val();
					that.nextAll('.i-cancel').hide();
					if(repwd==password && repwd!=''){
						that.next('.i-status').show();
						$('#repwd-error').html('');
						bprepwd=false;
					}else{
						$('#repwd-error').html('<i class="i-error"></i>密码不一致')
						bprepwd=true;
					}
					if(repwd==''){
						$('#repwd-error').html('')
						bprepwd=true;
					}
				},100)
				
		},
			'focus':function(){
				$('#repwd-error').html($(this).attr('default'))
			}
		})
		
		
		$('form').on('submit',function(){
			if(bpuser==true||bppwd==true||bprepwd==true){
				return false;
			}
		})
		
		function cancel(obj){
				obj.nextAll('.i-cancel').show();
				obj.next('.i-status').hide();
				obj.nextAll('.i-cancel').on('click',function(){
					obj.val('');
					$(this).hide();
					$(this).siblings('.i-status').hide()
				})
				if(obj.val()==''){
					obj.nextAll('.i-cancel').hide();
				}
			}
		
		
		
	})
})();