<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示学生信息</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	
	<jsp:useBean id="people" class="chapter9.Student" scope="request"></jsp:useBean>
	<jsp:setProperty property="*" name="people"/>
	
	<!-- 输出存储在bean中相应的信息 -->
	学号：<jsp:getProperty property="number" name="people"/><br>
	名字：<jsp:getProperty property="name" name="people"/><br>
	密码：<jsp:getProperty property="password" name="people"/><br>
	性别：
	<%
		if (people.isMale()) {
			out.println("男");
		} else {
			out.println("女");
		}
	%>
</body>
</html>