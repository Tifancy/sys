

var Index = {
		
		init:function(){
			Index.ctrl.initEvent();
		},
		ctrl:{
			initEvent:function(){
				$("li[id^='_menu_']").unbind('click');
				$("li[id^='_menu_']").bind('click',function(e){
			            $("li[id^='_menu_']").removeClass('active');
			            $(this).addClass('active');
			            var url =$(this).children().attr("url");
			            $('#_main').attr('src',basePath + url);
			            return false;
				});
			}
		}
};

/***
 * 
 */
$(function(){
	
	Index.init();
});