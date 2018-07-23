<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<!--设置浏览器的布局视口，只在移动端浏览器起作用-->
		<meta name="viewport" content="width=width-device,initial-scale=1,user-scalable=no" />
		<title></title>
		<!--引入bootstrap的核心css-->
		<link rel="stylesheet" href="js/bootstrap/css/bootstrap.css" />
		<!--引入日历css-->
		<link rel="stylesheet" href="js/datetimepicker/jquery.datetimepicker.css" />
		
		<!--判断如果是IE9以下，引入兼容h5标签的js文件，注意空格的位置-->		
		<!--[if lt IE 9]>
		<script src="js/bootstrap/js/html5shiv.min.js"></script>
		<script src="js/bootstrap/js/respond.min.js"></script>		
		<![end if] -->
	</head>
	<body>
		<div class="container">		
					
			<h2 class="page-header">登陆</h2>
			
			<form id="form1" class="form-horizontal" action="userLogin" method="post">
				<div class="form-group">
					<label for="" class="col-md-2">用户名称</label>
					<div class="col-md-10">
						<input id="uName" name="uName" type="text" placeholder="请输入用户姓名" class="form-control" onchange="checkName()"/>
					</div>					
				</div>	
				
				<div class="form-group">
					<label for="" class="col-md-2">用户密码</label>
					<div class="col-md-10">
						<input id="uPwd" name="uPwd" type="password" placeholder="请输入初始密码" class="form-control"/>
					</div>					
				</div>	
				
				<div class="form-group" >					
					<div class="col-md-10 col-md-offset-2">
						<input type="submit" value="登陆" class="btn btn-success" id="addBtn" onclick="login()"/>
						<input type="button" value="注册" class="btn btn-danger" onclick="toInsertUser()" />
					</div>
				</div>
			</form>		
		</div>
		
		<!--引入jquery-->
		<script src="js/jquery.js"></script>
		<!-- 引入全局js -->
		<script src="js/global.js"></script>
		<!--引入bootstrap的js功能-->
		<script src="js/bootstrap/js/bootstrap.js"></script>
		<!--引入layer插件-->
		<script src="js/layer/layer.js"></script>
		<!--引入日历js-->
		<script src="js/datetimepicker/jquery.datetimepicker.js"></script>
		
		<script type="text/javascript">
			
			function login(){
				var uName = $("#uName").val();
				if(uName.length == 0){
					
					alert("用户名不能为控")
					$("#uName").focus();
					
				}
			}
			
			
			function toInsertUser(){
				location.href="insertUser.jsp"
				
			}
			
			
		</script>
		
		
	</body>
</html>