<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="person" class="chapter8.Person"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>set标签的使用</title>
</head>
<body>
	<p>使用的目标对象为：${person }</p>
	<p>从Bean中获得的name值为：<c:out value="${person.name }"></c:out></p>
	<p>从Bean中获得的age值为：<c:out value="${person.age }"></c:out></p>
	<p>从Bean中获得的sex值为：<c:out value="${person.sex }"></c:out></p>
	<p>从Bean中获得的home值为：<c:out value="${person.home }"></c:out></p>
	
	<c:set target="${person }" property="name">周云</c:set>
	<c:set target="${person }" property="age">30</c:set>
	<c:set target="${person }" property="sex">男</c:set>
	<c:set target="${person }" property="home">江西</c:set>
	
	<p>使用的目标对象为：${person }</p>
	<p>从Bean中获得的name值为：<c:out value="${person.name }"></c:out></p>
	<p>从Bean中获得的age值为：<c:out value="${person.age }"></c:out></p>
	<p>从Bean中获得的sex值为：<c:out value="${person.sex }"></c:out></p>
	<p>从Bean中获得的home值为：<c:out value="${person.home }"></c:out></p>
</body>
</html>