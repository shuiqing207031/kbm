(function($){

	$.fn.extend({
		uiForm:function(obj){
		  $(this).each(function(){
			  var type = $(this).attr("inputType");
			  if(type == "text"){
				  buildText(this);
			  }
		  });
		  function buildText(obj){
		  	var hasResolved = $(obj).attr("resolved");
				if(hasResolved)
					return;
				var label = $(obj).attr("inputLabel");
				var placeholder = $(obj).attr("emptyMsg")|| label;
				$(obj).addClass("input-group  input-group-sm");
				var span = $("<span/>").addClass("input-group-addon").attr("id","sizing-addon3").text(label);
				var input = $("<input/>").addClass("form-control").attr({"type":"text","placeholder":placeholder,"aria-describedby":"sizing-addon3"});
				$(obj).append(span).append(input);
				$(obj).attr("resolved",true);
				return obj;
		  }
		  
		
		}	
	});
})(jQuery)

$(function(){
	//解析输入框组
	$("div[inputType=text]").uiForm();
	
});