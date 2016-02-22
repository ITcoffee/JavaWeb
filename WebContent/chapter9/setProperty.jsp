<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>setProperty标签的使用</title>
</head>
<body>
	<jsp:useBean id="current" class="java.util.Date" scope="page"></jsp:useBean>
	当前的时间为：<jsp:getProperty property="time" name="current"/>
	<jsp:setProperty property="time" name="current" value='<%=Integer.parseInt(request.getParameter("timevalue")) %>'/>
	请求中的时间为：<jsp:getProperty property="time" name="current"/>
</body>
</html>