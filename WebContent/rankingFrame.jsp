<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
    <frameset cols="200px,*" frameborder="0" framespacing="0">
    	 <frame src="menu.jsp?uId=${u.uId}" />
    	 <frame src="queryAllUser.jsp" name="content"/>
    </frameset>

</html>