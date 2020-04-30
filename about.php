<?php
//引入配置文件
require_once "config.php";
//获取当前的阅读量//查询字段
$resultRead1 = mysqli_query($conn,"SELECT *  FROM `pages` WHERE `title` LIKE '关于'");
$resRead = mysqli_fetch_assoc($resultRead1);
//var_dump($resRead);
//获取查询到的阅读量数据
$resultRead2 = $resRead["read"];
//var_dump($resultRead2);
//把获取到的阅读量数据加1
$resultRead3 = (int)$resultRead2 + 1;
//var_dump($resultRead3);
//更新字段
$resultRead = mysqli_query($conn,"UPDATE  `boke`.`pages` SET  `read` =  '$resultRead3' WHERE  `pages`.`id` =1;");

//查询数据库
$result = mysqli_query($conn,"SELECT *  FROM `pages` WHERE `title` LIKE '关于'");
//输出第一条数据
$res = mysqli_fetch_assoc($result);
//var_dump($res);
$id = $res["id"];
$title = $res["title"];
$text = $res["text"];
$like = $res["like"];
$read = $res["read"];
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>关于-闲言轻博客</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="res/layui/css/layui.css">
	<link rel="stylesheet" href="res/static/css/mian.css">
</head>
<body class="lay-blog">
		<div class="header">
			<div class="header-wrap">
				<h1 class="logo pull-left">
					<a href="index.php">
						<img src="res/static/images/logo.png" alt="" class="logo-img">
						<img src="res/static/images/logo-text.png" alt="" class="logo-text">
					</a>
				</h1>
				<form class="layui-form blog-seach pull-left" action="">
					<div class="layui-form-item blog-sewrap">
					    <div class="layui-input-block blog-sebox">
					      <i class="layui-icon layui-icon-search"></i>
					      <input type="text" name="title" lay-verify="title" autocomplete="off"  class="layui-input">
					    </div>
					</div>
				</form>
				<div class="blog-nav pull-right">
					<ul class="layui-nav pull-left">
					  <li class="layui-nav-item"><a href="index.php">首页</a></li>
					  <li class="layui-nav-item"><a href="message.php">留言</a></li>
					  <li class="layui-nav-item  layui-this"><a href="about.php">关于</a></li>
					  <li class="layui-nav-item"><a href="help.php">帮助</a></li>
					</ul>
					<a href="admin/index.php" class="personal pull-left">
						<i class="layui-icon layui-icon-username"></i>
					</a>
				</div>
				<div class="mobile-nav pull-right" id="mobile-nav">
					<a href="javascript:;">
						<i class="layui-icon layui-icon-more"></i>
					</a>
				</div>
			</div>
			<ul class="pop-nav" id="pop-nav">
				<li><a href="index.php">首页</a></li>
				<li><a href="message.php">留言</a></li>
				<li><a href="about.php">关于</a></li>
                <li><a href="help.php">帮助</a></li>
			</ul>
		</div>
		<div class="container-wrap">
			<div class="container container-message container-details container-about">
					<div class="contar-wrap">
						<div class="item">
							<div class="item-box">
								<h3><?php echo $title; ?></h3>
                                <p><?php echo nl2br($text); ?></p>
								<div class="count layui-clear">
									<span class="pull-left">阅读
                                        <em>
                                            <?php
                                            if($read > 999){
                                                echo "999+";
                                            }else{
                                                echo $read;
                                            }
                                            ?>
                                        </em>
                                    </span>
									<span class="pull-right like" id="about_like<?php echo $id; ?>" onclick="about_like(<?php echo $id; ?>)">
                                        <i class="layui-icon layui-icon-praise"></i>
                                        <em>
                                            <?php
                                            if($like > 999){
                                                echo "999+";
                                            }else{
                                                echo $like;
                                            }
                                            ?>
                                        </em>
                                    </span>
								</div>
							</div>
						</div>			
					</div>
			</div>
		</div>
		<div class="footer">
			<p>
				<span>&copy; 2018</span>
				<span><a href="http://www.layui.com" target="_blank">layui.com</a></span> 
				<span>MIT license</span>
			</p>
			<p><span>人生就是一场修行</span></p>
          <p class="footer-p"><a href="http://www.beian.miit.gov.cn">冀ICP备18033167号</a></p> 
        <p class="footer-p"><a href="http://www.beian.miit.gov.cn">冀ICP备18033167号-1</a></p> 
		</div>
	<script src="res/layui/layui.js">

	</script>
	<script>
		layui.config({
		  base: 'res/static/js/' 
		}).use('blog');
	</script>
        <script src="js/script.js"></script>
</body>
</html>