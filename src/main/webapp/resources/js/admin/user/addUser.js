

var AdminAddUser = {
	
	 init:function(){
	 	
	AdminAddUser.ctrl.initEvent();
	 },
	 ctrl:{
	 	
		initEvent:function(){
			  $('.selectize-select').selectize();
			    $('.datepicker').datepicker();
				
				/***
				 * 初始化 验证规则
				 */
				$('#_addUserForm').validate({
					rules:{
						name:{
							required:true,
							rangelength:[3,20],
							remote:{
								url:'',
								dataType:'json',
								data:{
								
									
								},
								dataFilter:function(data){
									return data.success;
								}
							}
						}
					},
					messages:{
						name:{
						required:'请输入用户名',
						rangelength:jQuery.format("用户名位数必须在{0}到{1}字符之间！"),
						remote:jQuery.format("此用户名已经被注册")
						}
						
					}
				});
		}
	 }
};

$(function(){
	
	AdminAddUser.init();
});
