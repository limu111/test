<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			body {
				padding: 0;
				margin: 0;
			}
			
			.top {
				height: 60px;
				background-color: #F80654;
				text-align: center;
			}
			
			.title {
				color: white;
				font-size: 30px;
				font-weight: 800;
				display: inline-block;
				height: 60px;
				line-height: 60px;
			}
			
			.user-div {
				width: 200px;
				height: 60px;
				float: right;
				vertical-align: middle;
			}
			
			.img-style {
				margin-top: 5px;
				border-radius: 50%;
				float: right;
				margin-right: 100px;
			}
			
			.name {
				height: 60px;
				color: white;
				line-height: 60px;
				float: left;
				font-size: 20px;
			}
			
			.content {
				width: 1200px;
				height: 800px;
				margin: 0 auto;
				margin-top: 20px;
			}
			
			.box {
				width: 228px;
				height: 350px;
				float: left;
				margin-left: 10px;
			}
			
			.box-num,
			.box-name {
				color: #F80654;
				float: left;
				margin-left: 5px;
				margin-right: 5px;
				font-size: 20px;
			}
			
			.box-content {
				width: 228px;
				height: 50px;
				line-height: 50px;
				text-align: center;
			}
			
			.box-img {
				margin-top: 10px;
				margin-right: 20px;
				transition: all 1s;
			}
			.box-img:hover{
				transform: scale(1.2);
			}
			
			.box-header {
				border-radius: 10px;
				transition: all 1s;
			}
			.box-header:hover{
				transform: scale(1.2);
			}
		</style>
	</head>

	<body>
		<div class="top">
			<a class="title">101点赞排行榜</a>
			<div class="user-div">
				<div class="name">
					${u.uName}
				</div>
				<img class="img-style" src="${u.uHeader}" width="50" height="50" />
			</div>
		</div>
		<div class="content" id="content">

			<!--<div class="box">
			
			<div id="img">
				<img class="box-header"  src="img/u=3998444156,807774090&fm=11&gp=0.jpg" width="228" height="300" />
			</div>
			<div class="box-content">
				<div class="box-name">孟美岐</div>
				<div class="box-num">34856378</div>
				<img class="box-img" src="img/1175797.png" width="30" height="30"/>
			</div>
			
		</div>-->

		</div>

		<script src="js/jquery.js"></script>
		<script type="text/javascript">
			function getData() {

				$.getJSON("queryAllInfo", function(data) {
					$("#content").empty();
					$.each(data, function(index, item) {
						var html = '<div class="box">';
						html += ' <div id="img">';
						html += '    <a href="detailInfo.jsp?iId=' + item.iId + '"><img class="box-header"  src="' + item.iImg + '" width="228" height="300" /></a>';
						html += ' </div>';
						html += ' <div class="box-content">';
						html += '	<div class="box-name">' + item.iName + '</div>';
						html += '	<div class="box-num">' + item.iLike + '</div>';
						html += '	<img class="box-img" src="img/1175797.png" width="30" height="30" onclick="like(' + item.iId + ')"/>';
						html += ' </div>';
						html += '</div>';
						$("#content").append(html);
					});

				});
			}
			getData();

			function like(iId) {
				$.get("updateLike", {
					iId: iId
				}, function(data) {
					if (data == "yes") {
						alert("点赞成功");
						getData();
					}
				});
			}
		</script>

	</body>

</html>