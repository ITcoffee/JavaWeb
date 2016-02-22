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
	<fmt:bundle basename="conf.chapter8.message">
		<fmt:message key="username" var="user"></fmt:message>
		<fmt:message key="password" var="pw"></fmt:message>
		<fmt:message key="news">
			<fmt:param value="${user }"></fmt:param>
			<fmt:param value="${pw }"></fmt:param>
			<fmt:param value="${date }"></fmt:param>
		</fmt:message>
	</fmt:bundle>
</body>
</html>