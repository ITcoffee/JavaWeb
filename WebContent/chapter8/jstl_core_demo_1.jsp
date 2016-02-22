<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>out标签的使用</title>
</head>
<body>
	<p><c:out value="&lt未使用字符转义&gt"></c:out></p>
	<p><c:out value="&lt使用字符转义&gt" escapeXml="false"></c:out> </p>
</body>
</html>