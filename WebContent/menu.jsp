<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			body{
				background-color: rgba(0,0,0,0.9);
			}
			.navbar-left {
				width: 200px;
				height: 100%;
			}
			
			a {
				display: block;
				height: 30px;
				color: wheat;
				text-decoration: none;
				margin-left: 20px;
			}
			
			a:hover {
				color: white;
			}
			
			.header {
				padding: 10px 0px;
				width: 200px;
				height: 120px;
				text-align: center;
			}
			
			#myHeader {
				width: 100px;
				height: 100px;
				border-radius: 50%;
			}
			.name{
				width: 200px;
				height: 30px;
				color: white;
				text-align: center;
			}
		</style>
	</head>

	<body>
        <input id="uId" type="hidden" value="<%=request.getParameter("uId") %>" />
		<div class="navbar-left">
			<div class="header" id="header">
				
			</div>
			<div class="name" id="name"></div>
			<a href="queryAllUser.jsp" target="content">显示所有用户信息</a>
			<a href="queryAllInfo.jsp" target="content">显示所有新闻信息</a>
			<a href="#">修改密码</a>
		</div>
	</body>
	<script src="js/jquery.js"></script>
	<script type="text/javascript">
		$(function(){
			
            var uId=  $("#uId").val()			
			$.getJSON("queryUserById2",{uId:uId},function(data){
				alert(data.uName);
				$("#name").html(data.uName);
				var html='<img src="'+data.uHeader+'" id="myHeader" />';
				$("#header").html(html);
			});
			
			
		});
		
		
	</script>

</html>