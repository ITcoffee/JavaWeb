<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forEach标签的使用</title>
</head>
<body>
	<% 
		List<String> list = new ArrayList<String>();
		list.add("贝贝");
		list.add("晶晶");
		list.add("欢欢");
		list.add("莹莹");
		list.add("妮妮");
		request.setAttribute("list", list);
	%>
	
	<b><c:out value="不指定begin和end的迭代"></c:out></b>
	<br>
	<c:forEach var="a" items="${list }" varStatus="status">
		&nbsp;<c:out value="${a }"></c:out>
		<br>
		&nbsp;<c:out value="${status.first }"></c:out>
		<br>
		&nbsp;<c:out value="${status.last }"></c:out>
		<br>
	</c:forEach>
	
	<b><c:out value="指定begin和end的迭代，并输出迭代信息"></c:out></b>
	<br>
	<c:forEach var="a" items="${list }" begin="2" end="4" step="2" varStatus="status">
		&nbsp;<c:out value="${a }"></c:out>的4种属性：
		<br>
		
		&nbsp;&nbsp;索引：<c:out value="${status.index }"></c:out>
		<br>
		&nbsp;&nbsp;总共已迭代次数：<c:out value="${status.count }"></c:out>
		<br>
		&nbsp;&nbsp;是否是第一个位置：<c:out value="${status.first }"></c:out>
		<br>
		&nbsp;&nbsp;是否是最后一个位置：<c:out value="${status.last }"></c:out>
		<br>
	</c:forEach>
</body>
</html>