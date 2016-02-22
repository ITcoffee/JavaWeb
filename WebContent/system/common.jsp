<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${baseName }/js/jQuery/jquery-2.2.0.min.js"></script>
</head>
<body>
	<c:set var="basePath" value='<%=request.getSession().getServletContext().getRealPath("/") %>'></c:set>
	<c:set var="baseName" value='<%=request.getContextPath() %>'></c:set>
	
	<input type="hidden" id="baePath" value="${basePath }">
	<input type="hidden" id="baseName" value="${baseName }">
</body>
</html>