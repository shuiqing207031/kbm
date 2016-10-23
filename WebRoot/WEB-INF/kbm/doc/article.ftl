<#include "../navbar.ftl" >
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
	<link rel="stylesheet" href="css/article.css" />
	<style>
	.article-head  span{
		margin-left:5px;
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
  			 			<section class="article-head" style="border-bottom:1px solid #eee;padding-bottom:10px;margin-top:5px;text-align:center;">
  			 				<h2>${article.title}</h2>
  			 				<span><i class="icon-user"></i>author</span>
  			 				<span><i class="icon-eye-open"></i>13</span>
  			 				<span><i class="icon-comment"></i>5</span>
  			 				<span><i class="icon-time"></i>${article.createTime}</span>
  			 				<span><i class="icon-edit"></i>${article.updateTime}</span>
   							<span class="label label-default">电信</span>
							<span class="label label-primary">天翼</span>
							<span class="label label-success">支付</span>
							<span class="label label-info"><a href="article.do?view=edit&articleId=${article.articleId}">编辑</a></span>
						</section>
						<section class="article-body " style="border-bottom:1px solid #eee;padding-bottom:10px;margin-bottom:10px;">
							${article.content}
						</section>
						<section class="article-foot" style="text-align:left;border-bottom:1px solid #eee;padding-bottom:10px;margin-bottom:10px;">
							<span><i class="icon-thumbs-up"></i>赞</span>
  			 				<span><i class="icon-thumbs-down"></i>踩</span>
  			 				<span><i class="icon-heart-empty"></i>收藏</span>
  			 				<span><i class="icon-envelope"></i>私信</span>
						</section>
						<section class="article-faq" style="text-align:left;border-bottom:1px solid #eee;padding-bottom:10px;margin-bottom:10px;">
							<span style="border-color:white " >问答:</span><br>
							<!-- <div class="panel panel-success">
								<div class="panel-heading">Q:你这些年过的还好吗?</div>
								<div class="panel-body">
									<textarea class="form-control" rows=3 >ss</textarea>
									<button style="margin-top:10px;float:right;" class="btn btn-primary"" type="submit">发送</button>
								</div>
							 </div> -->
							 <div class="panel panel-success">
								<div class="panel-heading">Q:你这些年过的还好吗?<span style="float:right;">发表于10分钟前</span></div>
								<div class="panel-body">
									<p>
										A:还好啦，就那样呗!
									</p>
									<span class="icon-edit icon-large" style="float:right;"></span>
								</div>
							 </div>
							<div class="panel panel-success">
								<div class="panel-heading">Q:你这些年过的还好吗?</div>
								<div class="panel-body">A:还好啦，就那样呗!</div>
							</div>
						</section>
						<!--<section class="article-comment">
							<span style="border-color:white">评论:</span><br>
							<div class="panel panel-success">
								<div class="panel-heading" style="padding-left:0px;">上善若水:<span style="float:right;">发表于10分钟前</span></div>
								<div class="panel-body">非常有用</div>
							</div>
							
							<div class="panel panel-success">
								<div class="panel-heading" style="padding-left:0px;">上善若水:<span style="float:right;">发表于10分钟前</span></div>
								<div class="panel-body">非常有用</div>
							</div>
						</section>-->
					</article>
				</div>
			</div>
		</div>
	</body>
</html>