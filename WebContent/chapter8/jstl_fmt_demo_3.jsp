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
	<fmt:formatDate value="${date }"/><br>
	<fmt:formatDate value="${date }" type="time"/><br>
	<fmt:formatDate value="${date }" type="both"/><br>
	<fmt:formatDate value="${date }" type="both" dateStyle="default" timeStyle="default"/><br>
	<fmt:formatDate value="${date }" type="both" dateStyle="short" timeStyle="short"/><br>
	<fmt:formatDate value="${date }" type="both" dateStyle="long" timeStyle="long"/><br>
	<fmt:formatDate value="${date }" type="both" dateStyle="full" timeStyle="full"/><br>
</body>
</html>