<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>catch标签的使用</title>
</head>
<body>
	<c:catch var="error">
		<c:set target="person" property="haha"></c:set>
	</c:catch>
	<c:out value="${error }"></c:out>
</body>
</html>