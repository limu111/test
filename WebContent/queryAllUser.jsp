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

		<style>
			.pagination {
				margin: 0!important;
			}
		</style>
	</head>

	<body>
		<div class="container">

			<h2 class="page-header">用户数据列表</h2>

			<table class="table table-bordered table-striped" id="dataTable">
				<thead>
					<tr>
						<th>用户编号</th>
						<th>用户姓名</th>
						<th>用户角色</th>
						<th>用户头像</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<!--<tr>
						<td>100</td>
						<td>tom</td>
						<td>tom@163.com</td>
						<td>13012345678</td>
						<td>开发部</td>
						<td>程序员</td>
						<td>
							<input type="button" value="删除" class="btn btn-danger btn-sm del-btn"/>
							<input type="button" value="详情" class="btn btn-success btn-sm update-btn" />
						</td>
					</tr>-->
				</tbody>
			</table>

			<div class="row" style="margin-top: 20px;">
				<div class="col-sm-offset-8 col-sm-4">
					<a href="insertUser.jsp" class="btn btn-success btn-block">增加新用户</a>
				</div>
			</div>

		</div>

		<!--引入jquery-->
		<script src="js/jquery.js"></script>
		<!-- 引入全局js -->
		<script src="js/global.js"></script>
		<!--引入请求参数插件js-->
		<script src="js/param.js"></script>
		<!--引入bootstrap的js功能-->
		<script src="js/bootstrap/js/bootstrap.js"></script>
		<!--引入layer插件-->
		<script src="js/layer/layer.js"></script>
		<!--引入日历js-->
		<script src="js/datetimepicker/jquery.datetimepicker.js"></script>

		<script>
			$(function() {

				//初始化调用
				getData();

			});

			//分页查询函数
			function getData() {
				$.getJSON('queryAllUser', function(data) {
					var list = data; //获得数据集合
					var html; //拼接html字符串
					var dataTable = $('#dataTable tbody');
					//清空原始内容
					dataTable.empty();
					//遍历数据集合
					$.each(list, function(index, item) {

						html = '<tr>';
						html += '	<td>' + item.uId + '</td>';
						html += '	<td>' + item.uName + '</td>';
						html += '	<td>' + item.uRole + '</td>';
						html += '	<td><img src="' + item.uHeader + '" width="50" height="50" /></td>';
						html += '	<td>';
						html += '		<input type="button"   class="btn btn-danger btn-sm"  onClick="deleteUser(' + item.uId + ')" value="删除"/>';
						html += '		<a class="btn btn-info btn-sm" href="queryUserById?uId=' + item.uId + '">修改</a>';
						html += '	</td>';
						html += '</tr>';

						dataTable.append(html);
					});
				});
			}
			function deleteUser(uId) {
				if (confirm("确认删除吗？")) {
					//删除掉
					$.get("deleteUserById", {
						uId: uId
					}, function(data) {

						if (data == 'yes') {
							alert("删除成功");
							getData();
						}
					});
				}
			}
		</script>
	</body>

</html>