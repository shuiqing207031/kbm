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
	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/ztree.all-3.5.js"></script>
	<script type="text/javascript" src="js/ui.tree.js"></script>
  </head>
  
  <body>
		<@nav/>
		<div class="jumbotron" style="padding-top:15px;height:200px;border:1px solid #42ddcb;margin-bottom:0px;">
			<div class="alert alert-success" role="alert" style="width:50%;height:160px;background-color:#42ddcb;float:left;margin-left:10px;">
				<strong>最新公告:</strong><br>
					&nbsp;&nbsp;公司将于xxxx日在北京举行年会，参加的人员请在门户上报名!<br>
					<span style="bottom:5px;right:5px;">2015-07-15 12:32:42</span>
			</div>	
			<div style="position:relative;height:150px;float:left;">
 			 <a style="position:absolute;left:0px;top:0px;width:110px;height:75px;background-color:#42ddcb;margin-left:20px;margin-top:0px;padding:10px;color:#fff;">
 			 	<i class="icon-dashboard icon-4x "></i>
 			 	文章
 			 </a>
 			 <a style="position:absolute;left:135px;top:0px;width:110px;height:75px;background-color:#42ddcb;padding:10px;color:#fff;">
 			 	<i class="icon-user icon-4x "></i>
 				FAQ
 			 </a>
 			 <a style="position:absolute;left:250px;top:0px;width:120px;height:75px;background-color:#42ddcb;padding:10px;color:#fff;">
 			 	<i class="icon-money icon-4x "></i>
 			 	收藏
 			 </a>
 			 <a style="position:absolute;left:375px;top:0px;width:120px;height:75px;background-color:#42ddcb;padding:10px;color:#fff;">
 			 	<i class="icon-envelope icon-4x "></i>
 			 	消息
 			 </a>
 			 <a style="position:absolute;left:500px;top:0px;width:120px;height:75px;background-color:#42ddcb;padding:10px;color:#fff;">
 			 	<i class="icon-tasks icon-4x "></i>
 			 		待办
 			 </a>
 			 <a style="position:absolute;left:0px;top:80px;width:225px;height:75px;background-color:#42ddcb;padding:10px;color:#fff;margin-left:20px;">
 			 	<i class="icon-tint icon-4x "></i>
 			 	其他类型
 			 </a>
 			 <a style="position:absolute;left:230px;top:80px;width:120px;height:75px;background-color:#42ddcb;padding:10px;color:#fff;margin-left:20px;">
 			 	<i class="icon-trash icon-4x "></i>
 			 	回收站
 			 </a>
 			</div>
		</div>
		<div class="container-fluid">
			<div class="row fixed">
				<div class="col-lg-3 ">
					<ul id="ztree" class="ztree"></ul>
				</div>
				<div class="col-lg-9" style="padding-left:1px;padding-right:1px;vertical-align: center;">
						<div class="panel panel-default" style="padding:10px;min-height:300px;">
							<div class="btn-group" role="toolbar" aria-label="...">
  							<button type="button" class="btn btn-default active">最新文章</button>
  							<button type="button" class="btn btn-default">热门文章</button>
  							<button type="button" class="btn btn-default">最赞文章</button>
  							<button type="button" class="btn btn-default">列表视图</button>
							</div>
							<div class="list-group">
  							<span href="#" class="list-group-item ">
    								<h4 class="list-group-item-heading">【入职】 入职需要办理事项</h4>
    								<p class="list-group-item-text">
    										入职需要做.....
    								</p>
    								<p class="list-group-item-text">
    										做什么事情啊...
    								</p>
    								<p class="list-group-item-text">
    										author 发表于2015-07-16  
    								</p>
  							</span>
  							<span href="#" class="list-group-item ">
    								<h4 class="list-group-item-heading">【离职】 入职需要办理事项</h4>
    								<p class="list-group-item-text">
    										离职需要做.....
    								</p>
  							</span>
  							<span href="#" class="list-group-item ">
    								<h4 class="list-group-item-heading">【离职】 入职需要办理事项</h4>
    								<p class="list-group-item-text">
    										离职需要做.....
    								</p>
  							</span>
  							<span href="#" class="list-group-item ">
    								<h4 class="list-group-item-heading">【离职】 入职需要办理事项</h4>
    								<p class="list-group-item-text">
    										离职需要做.....
    								</p>
  							</span>
  							<span href="#" class="list-group-item ">
    								<h4 class="list-group-item-heading">【离职】 入职需要办理事项</h4>
    								<p class="list-group-item-text">
    										离职需要做.....
    								</p>
  							</span>
  							<a href="#" class="list-group-item ">
    								<h4 class="list-group-item-heading">【离职】 入职需要办理事项</h4>
    								<p class="list-group-item-text">
    										离职需要做.....
    								</p>
  							</a>
  							<a href="#" class="list-group-item ">
    								<h4 class="list-group-item-heading">【离职】 入职需要办理事项</h4>
    								<p class="list-group-item-text">
    										离职需要做.....
    								</p>
  							</a>
  							<a href="#" class="list-group-item ">
    								<h4 class="list-group-item-heading">【离职】 入职需要办理事项</h4>
    								<p class="list-group-item-text">
    										离职需要做.....
    								</p>
  							</a>
  							<a href="#" class="list-group-item ">
    								<h4 class="list-group-item-heading">【离职】 入职需要办理事项</h4>
    								<p class="list-group-item-text">
    										离职需要做.....
    								</p>
  							</a>
  							<a href="#" class="list-group-item ">
    								<h4 class="list-group-item-heading">【离职】 入职需要办理事项</h4>
    								<p class="list-group-item-text">
    										离职需要做.....
    								</p>
  							</a>
							</div>
						</div>
				</div>
			</div>
		</div>
<!--
		<div class="container-fluid">
			<div class="row fixed">
				<div class="col-lg-2" style="padding-left:0px;padding-right:0px;" >
				<div style="border:1px solid #ccc;border-bottom:0px;" align="center">
					<div align="center">
						<img alt="User photo" class="user-photo" src="css/thumb-6.jpg" >
					</div>
				  welcome you!&nbsp;&nbsp;张水清
				</div>
					<div class="menu">
					<ul class="nav nav-tabs nav-stacked">
						<li>
							<a href="index.jsp">
								<i class="icon-dashboard"></i>
								<span class="menu-text">生活小常识</span>
							</a>
						</li>
						<li>
							<a href="index.jsp">
								<i class="icon-dashboard"></i>
								<span class="menu-text">网购折扣活动</span>
							</a>
						</li>
						<li>
							<a href="index.jsp">
								<i class="icon-dashboard"></i>
								<span class="menu-text">杂项</span>
							</a>
						</li>
						<li>
							<a href="index.jsp">
								<i class="icon-dashboard"></i>
								<span class="menu-text">电影</span>
							</a>
						</li>
						<li>
							<a href="index.jsp">
								<i class="icon-dashboard"></i>
								<span class="menu-text">小说</span>
							</a>
						</li>
					</ul>
					</div>
				</div>
				<div class="col-lg-10" style="padding-left:1px;padding-right:1px;vertical-align: center;">
					<div>
						<ul class="breadcrumb">
 							<li>
   						 <a href="#"><i class="icon-home"></i>HOME</a> <span class="divider"></span>
  						</li>
  						<li>
   						 <a href="#">类库</a> <span class="divider"></span>
  						</li>
 				 	  	<li class="active">数据</li>
 				 	  	<li>
 				 	  		<input type="text" class="form-control" placeholder="Search">
 				 	  	</li>
						</ul>
					</div>
					<div class="alert alert-danger alert-dismissible col-lg-11" style="margin-left:15px;"  role="alert">
						<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<strong>警告:</strong>请勿传播暴力，赌博，反动，淫秽色情的文章，违者将受到法律制裁。请自觉遵守法律道德，做一个有素质的公民!				
					</div>
					<div class="alert alert-info col-lg-11 " style="margin-left:15px;"  role="alert">
					 系统公告:今天将举行xxx活动，请大家踊跃报名参加
					</div>
					<div  class="col-lg-12">
					<div class="panel panel-default" style="width:48%;float:left;">
						<div class="panel-heading">最新公告</div>
						<div class="panel-body">
							<ul class="list-group">
								<li class="list-group-item"><a>Cras justo odio</a><span></span><span class="badge">34545</span></li>
   							<li class="list-group-item"><a>Dapibus ac facilisis in</a><span class="badge">34545</span></li>
   							<li class="list-group-item"><a>Morbi leo risus</a><span class="badge">34545</span></li>
    						<li class="list-group-item"><a>Porta ac consectetur ac</a><span class="badge">34545</span></li>
    						<li class="list-group-item"><a>Vestibulum at eros</a><span class="badge">34545</span></li>
    					</ul>
						</div>
					</div>
					
					<div class="panel panel-default" style="margin-left:10px;width:48%;float:left;">
						<div class="panel-heading">热门文章</div>
						<div class="panel-body">
							<ul class="list-group">
								<li class="list-group-item"><a>Cras justo odio</a><span class="badge">点击:34545</span><span class="badge">赞:34545</span></li>
   							<li class="list-group-item"><a>Dapibus ac facilisis in</a><span class="badge">34545</span></li>
   							<li class="list-group-item"><a>Morbi leo risus</a><span class="badge">34545</span></li>
    						<li class="list-group-item"><a>Porta ac consectetur ac</a><span class="badge">34545</span></li>
    						<li class="list-group-item"><a>Vestibulum at eros</a><span class="badge">34545</span></li>
    					</ul>
						</div>
					</div>
				</div>
				
				<div  class="col-lg-12">
					<div class="panel panel-default" style="width:48%;float:left;">
						<div class="panel-heading">推荐文章</div>
						<div class="panel-body">
							<ul class="list-group">
								<li class="list-group-item"><a>Cras justo odio</a><span class="badge">34545</span></li>
   							<li class="list-group-item"><a>Dapibus ac facilisis in</a><span class="badge">34545</span></li>
   							<li class="list-group-item"><a>Morbi leo risus</a><span class="badge">34545</span></li>
    						<li class="list-group-item"><a>Porta ac consectetur ac</a><span class="badge">34545</span></li>
    						<li class="list-group-item"><a>Vestibulum at eros</a><span class="badge">34545</span></li>
    					</ul>
						</div>
					</div>
					
					<div class="panel panel-default" style="margin-left:10px;width:48%;float:left;">
						<div class="panel-heading">最新文章</div>
						<div class="panel-body">
							<ul class="list-group">
								<li class="list-group-item"><a>Cras justo odio</a><span class="badge">34545</span></li>
   							<li class="list-group-item"><a>Dapibus ac facilisis in</a><span class="badge">34545</span></li>
   							<li class="list-group-item"><a>Morbi leo risus</a><span class="badge">34545</span></li>
    						<li class="list-group-item"><a>Porta ac consectetur ac</a><span class="badge">34545</span></li>
    						<li class="list-group-item"><a>Vestibulum at eros</a><span class="badge">34545</span></li>
    					</ul>
						</div>
					</div>
				</div>
				</div>
				</div>
			</div>
		</div>
		-->
  </body>
</html>
