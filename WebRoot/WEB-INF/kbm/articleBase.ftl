<#include "navbar.ftl" >
<html>
<head>   
	<title>KBM 知识库管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<link rel="stylesheet" href="css/ztree-metro.css" />
	<link rel="stylesheet" href="css/kms.css" />
	<link rel="stylesheet" href="css/article-base.css" />
	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/ztree.all-3.5.js"></script>
	<script type="text/javascript" src="js/ui.tree.js"></script>
</head>
<body>
	<@nav/>
	<div class="container-fluid">
		<div class="row fixed">
			<div class="col-lg-2" style="padding-left:0px;height:100%">
				<div class="tree-header">
					<i class="icon-home icon-2x"></i> Browse Files
				</div>
				<ul id="ztree" class="ztree"></ul>
			</div>
		</div>	
	</div>
</body>
<script type="text/javascript">
var zNodes = ${treeData!'[]'} ;

$(document).ready(function(){
    var t = $("#ztree");
    t = $.fn.zTree.init(t, setting, zNodes);
});
</script>
</html>	
