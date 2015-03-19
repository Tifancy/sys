

var AdminIndexUser = {
	
	
	init:function() {
		AdminIndexUser.ctrl.initEvent();
	},
	ctrl:{
		initEvent:function(){
			$('#_addNewUser').click(function(){
				
				window.location.href =basePath +"admin/user/addUser.do";
				return false;
			});
		}
		
	}
};




$(function(){
	AdminIndexUser.init();
});
