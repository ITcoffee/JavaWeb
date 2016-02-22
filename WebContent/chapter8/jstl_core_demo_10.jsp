<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>import标签的使用</title>
</head>
<body>
	<h4><c:out value="绝对路径引用的实例"></c:out></h4>
	<c:catch var="error1">
		<c:import url="http://www.baidu.com"></c:import>
	</c:catch>
	<c:out value="${error1 }"></c:out>
	<br>
	
	<h4><c:out value="相对路径引用的实例，引用本应用中的文件"></c:out></h4>
	<c:catch var="error2">
		<c:import url="/system/conf/a.text" charEncoding="UTF-8"></c:import>
	</c:catch>
	<c:out value="${error2 }"></c:out>
	<br>
	
	<h4><c:out value="使用字符串输出相对路径引用的实例，并保存在session范围内"></c:out></h4>
	<c:catch var="error3">
		<c:import url="/system/conf/a.text" var="myurl" scope="session" charEncoding="UTF-8"></c:import>
		<c:out value="${myurl }"></c:out>
	</c:catch>
	<c:out value="${error3 }"></c:out>
</body>
</html>