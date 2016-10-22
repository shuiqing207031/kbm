/**
 * @description:在bootstrap上的modal插件上做了一次封装
 * @author zhangshuiqing
 * @time:2015/06/29
 */

(function($){
  $.fn.extend({
	"uiModal":function(options){
		var defaults = {
			title:"modal example",
			buttonName:"Save changes",
			clickButton:function(){}
		}
		var options = $.extend(defaults,options);
		var g = this;
		function render(){
			var modal  = $(g).addClass("modal fade").attr("role","dialog");
			var seconds = new Date().getMilliseconds();
			var id = options.id || "modal-"+seconds;
			modal.attr({"id":id,"aria-labelledby":id+"-title"});
			
			var dialog = $("<div/>").addClass("modal-dialog").attr("role","document");
			var content = $("<div/>").addClass("modal-content");
			var headerHtml = '<div class="modal-header"> '
						+'<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button> '
						+' <h4 class="modal-title" id="'+id+'-title">'
						+options.title +'</h4></div>';
			
			var modal_body =$("<div/>").addClass("modal-body");
			modal_body.append($(g).children());
			var footer = $("<div/>").addClass("modal-footer");
			var closeButton = $("<button/>").attr({"type":"button","data-dismiss":"modal"}).addClass("btn btn-default").text("Close");
			var submitButton = $("<button/>").attr({"type":"button"}).addClass("btn btn-primary").text(options.buttonName);
			footer.append(closeButton).append(submitButton);
			
			content.append(headerHtml).append(modal_body).append(footer);
			dialog.append(content);
			modal.append(dialog);
			
			submitButton.on("click",options.clickButton);
		}
		
		return render();
	 }
	});  
})(jQuery);


$(function(){
	 $("div .uiModal").each(function(){
		 var hasResolved = $(this).attr("resolved");
		 if(hasResolved)
			 return;
		
		 var id = $(this).attr("modalId");
		 var title = $(this).attr("modalTitle");
		 var buttonName = $(this).attr("buttonName");
		 $(this).uiModal({id:id,title:title,buttonName:buttonName});
		 $(this).removeClass("uiModal");
		 $(this).attr("resolved",true);
	 });
});