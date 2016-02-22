<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
	用户名为：${param.username }
<body>
	<p>用户名为：<%=request.getParameter("username") %></p>
	<p>用户名为：${param.username }</p>
	<p>密&nbsp;码&nbsp;为：${param.password }</p>
	<p>年&nbsp;龄&nbsp;为：${param.age }</p>
	<p>${param.submit1 } ${param.submit2 }</p>
</body>
</html>