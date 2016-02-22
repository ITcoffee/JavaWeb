<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:useBean id="date" class="java.util.Date"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>i18n标签库</title>
</head>
<body>
	<h4><c:out value="资源文件读取示例"></c:out> </h4>
	
	<fmt:bundle basename="conf.chapter8.message">
		<c:out value="从message资源文件中得到的key为username的值为："></c:out>
		<fmt:message key="username"></fmt:message>
	</fmt:bundle>
	<br>
	
	<c:out value="从message资源文件中得到的key为password的值为："></c:out>
	<fmt:setBundle basename="conf.chapter8.message" var="m"/>
	<fmt:message key="password" bundle="${m }"></fmt:message>
	<br>
	
	${m }
</body>
</html>