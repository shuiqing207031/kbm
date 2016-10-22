<#include "navbar.ftl" >
<html>
  <head>   
    <title>KBM 知识库管理系统</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/ztree-metro.css" />
	<link rel="stylesheet" href="css/kms.css" />
	<link rel="stylesheet" href="css/article.css" />
	<style>
		#editor {
			overflow-x:hidden;
			overflow-y:auto;
			max-height:500px;
  			height: 500px;
 			background-color: white;
  			border-collapse: separate;
  			border: 1px solid rgb(204, 204, 204);
  			padding: 4px;
  			box-sizing: content-box;
  		-webkit-box-shadow: rgba(0, 0, 0, 0.0745098) 0px 1px 1px 0px inset;
  		box-shadow: rgba(0, 0, 0, 0.0745098) 0px 1px 1px 0px inset;
  		border-top-right-radius: 3px;
  		border-bottom-right-radius: 3px;
  		border-bottom-left-radius: 3px;
  		border-top-left-radius: 3px;
  		outline: none;
  		
	}
	
	</style>
	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="js/jquery.hotkeys.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-wysiwyg.js"></script>
  </head>
  
  <body>
	  <@nav/>
	<div class="container-fluid">
			<div class="row fixed">
				<div class="col-lg-8 col-lg-offset-2"  >
					<article class="panel panel-default" style="padding:10px;">
						<form id="form" action="addArticle.do" method="post">
						<input type="hidden" id="content" name="content" />
						<input type="hidden" id="articleId" name="articleId" value="${(article.articleId)!''}" />
						<div class="form-group">
						  <label class="sr-only" for="docTitle">Title</label>
							<div class="input-group">
   							 <div class="input-group-addon">标题:</div>
    						<input type="text" name="title" class="form-control" id="title" value="${(article.title)!''}" placeholder="标题">
    					</div>
 					 	</div>
			<!--  <div class="form-group">
						  <label class="sr-only" for="keywords">keywords</label>
							<div class="input-group">
   							 <div class="input-group-addon">关键词:</div>
    						 <input type="text" name="keywords" class="form-control" id="keywords" placeholder="关键词1,关键词2,关键词3">
    					</div>
    				</div>	
    				<div class="form-group" >
						  	<label class="sr-only" for="group">授权群组:</label>
								<div class="input-group">
    							  <div class="input-group-addon">授权群组:</div>
    								<input type="text" class="form-control" id="group" placeholder="群组">
    						</div>
    					</div>
    					
    					<div class="form-group ">
    						<label class="sr-only" for="docType" style="margin-left:15px;">文章类型:</label>
    						<div class="input-group">
    								<div class="input-group-addon">文章类型:</div>
    								<select name="type" class="form-control" id="docType" >
    									<option value="1">JAVA</option>
    									<option value="2">HTML</option>
    									<option value="3">Spring</option>
    								</select>
    						</div>
    					</div>		
    					-->		
						
	<div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">
      <div class="btn-group">
        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="icon-font"></i><b class="caret"></b></a>
          <ul class="dropdown-menu">
          </ul>
        </div>
      <div class="btn-group">
        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="icon-text-height"></i>&nbsp;<b class="caret"></b></a>
          <ul class="dropdown-menu">
          <li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
          <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
          <li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
          </ul>
      </div>
      <div class="btn-group">
        <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="icon-bold"></i></a>
        <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a>
        <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="icon-strikethrough"></i></a>
        <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="icon-underline"></i></a>
      </div>
      <div class="btn-group">
        <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="icon-list-ul"></i></a>
        <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="icon-list-ol"></i></a>
        <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
        <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="icon-indent-right"></i></a>
      </div>
      <div class="btn-group">
        <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
        <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
        <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
        <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>
      </div>
      <div class="btn-group">
		  <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="icon-link"></i></a>
		    <div class="dropdown-menu input-append">
			    <input class="span2" placeholder="URL" type="text" data-edit="createLink"/>
			    <button class="btn" type="button">Add</button>
        </div>
        <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="icon-cut"></i></a>

      </div>
      
      <div class="btn-group">
        <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="icon-picture"></i></a>
        <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
      </div>
      <div class="btn-group">
        <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="icon-undo"></i></a>
        <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
      </div>
    </div>

    <div id="editor">
       ${(article.content)!'start ....'}
    </div>
    <div style="margin:10px auto;height:50px;">
			<button type="button" onclick="beforeSubmit();" style="float:right;margin-right:50px;"  class="btn btn-primary">保存</button>    
    <div>
   </form>
	</article>
</div>
</div>
</div>
					
<script type="text/javascript">
  $(function(){
    function initToolbarBootstrapBindings() {
      var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier', 
            'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
            'Times New Roman', 'Verdana'],
            fontTarget = $('[title=Font]').siblings('.dropdown-menu');
      $.each(fonts, function (idx, fontName) {
      fontTarget.append($('<li><a data-edit="fontName ' + fontName +'" style="font-family:\''+ fontName +'\'">'+fontName + '</a></li>'));
     });
      $('a[title]').tooltip({container:'body'});
    	$('.dropdown-menu input').click(function() {return false;})
		    .change(function () {$(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');})
        .keydown('esc', function () {this.value='';$(this).change();});

      $('[data-role=magic-overlay]').each(function () { 
        var overlay = $(this), target = $(overlay.data('target')); 
        overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
      });
    };
    initToolbarBootstrapBindings();  
    $('#editor').wysiwyg();
    window.prettyPrint && prettyPrint();
    
  });
  function 	beforeSubmit(){
    	var content = encodeURI($("#editor").html());
    	$("#content").val(content);
    	form.submit();
    	
   }
</script>	
	
</body>
</html>