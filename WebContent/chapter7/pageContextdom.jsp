<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>请求的参数：${pageContext.request.queryString }</p>
	<p>请求的URL：${pageContext.request.requestURL }</p>
	<p>web应用的名字：${pageContext.request.contextPath }</p>
	<p>请求的方式：${pageContext.request.method }</p>
	<p>请求的协议：${pageContext.request.protocol }</p>
	<p>用户的名字：${pageContext.request.remoteUser }</p>
	<p>用户的IP：${pageContext.request.remoteAddr }</p>
	<p>主机信息：${pageContext.servletContext.serverInfo }</p>
	<p>sessionId：${pageContext.session.id }</p>
</body>
</html>