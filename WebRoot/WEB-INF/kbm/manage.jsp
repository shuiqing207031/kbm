<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>系统管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<link rel="stylesheet" href="css/kms.css" />
	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
  </head>
  
  <body>
  	<nav class="navbar navbar-default nav-kms" role="navigation">
			<div class="navbar-container">
				<div class="navbar-header pull-left">
					<a class="navbar-brand" href="javascript:void(0);">
						<small>
							<i class="icon-leaf"></i>
							KMS
						</small>
					</a>
				</div>
		  <div class="collapse navbar-collapse">
			<ul class="nav navbar-nav nav-menu">
					<li>
						<a href="#">HOME</a>
					</li>
					<li>
						<a href="#">收藏夹</a>
					</li>
					<li>
						<a href="#">FAQ—问答</a>
					</li>
					<li>
						<a href="#">我的文章</a>
					</li>
					<li>
						<a href="#">系统管理</a>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">运营分析
							<b class="caret"></b> </a>
						<ul class="dropdown-menu">
							<li>
								<a href="#">统计</a>
							</li>
							<li>
								<a href="#">点击排行</a>
							</li>
							<li>
								<a href="#">搜藏排行</a>
							</li>
							<li>
								<a href="#">最赞知识</a>
							</li>
							<li>
								<a href="#">最热搜索词</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#">反馈</a>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right kms-msg">
					<li class="grey">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							<i class="icon-tasks"></i>
							<span class="badge badge-grey">4</span>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="#">jmeter</a>
							</li>
							<li>
								<a href="#">EJB</a>
							</li>
							<li>
								<a href="#">Jasper Report</a>
							</li>
						</ul>
					</li>
						<li class="purple">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							<i class="icon-fire"></i>
							<span class="badge important">4</span>
						</a>
					</li>
					<li class="green">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#" >
							<i class="icon-envelope"></i>
							<span class="badge success">4</span>
						</a>
					</li>
					
					<li class="orange">
						<a href="javascript:return false;">
							<i class="icon-loginout"></i>
						</a>
					</li>
				</ul>
			</div>
		</div>
		</nav>
		
	<div class="container-fluid">
			<div class="row fixed">
				<div class="col-lg-2" style="padding-left:0px;padding-right:0px;" >
					<div class="menu">
					<ul class="nav nav-tabs nav-stacked">
						<li>
							<a href="index.jsp">
								<i class="icon-dashboard"></i>
								<span class="menu-text">角色管理</span>
							</a>
						</li>
						<li>
							<a href="index.jsp">
								<i class="icon-dashboard"></i>
								<span class="menu-text">群组管理</span>
							</a>
						</li>
						<li>
							<a href="index.jsp">
								<i class="icon-dashboard"></i>
								<span class="menu-text">人员管理</span>
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
					
					sss
				</div>
			</div>
  	</div>
  
  </body>
</html>
