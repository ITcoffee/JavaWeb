<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sql标签的使用</title>
</head>
<body>
	<sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/javaweb?useUnicode=true&characterEncoding=utf-8&useSSL=false"
		user="root" password="root"/>
	
	<sql:query var="result" sql="SELECT * FROM test" maxRows="2" startRow="1"></sql:query>
	结果集的实质是：${result }
	<br>
	得到的行数为：${result.rowCount }
	<br>
	是否收到了maxRows的限制：${result.limitedByMaxRows }
	<br>
	
	<table border="1" align="center">
		<tr>
			<c:forEach var="columnName" items="${result.columnNames }">
				<td><c:out value="${columnName }"></c:out> </td>
			</c:forEach>
		</tr>
		
		<c:forEach var="row" items="${result.rowsByIndex }">
			<tr>
				<c:forEach var="column" items="${row }">
					<td><c:out value="${column }"></c:out> </td>
				</c:forEach>
			</tr>
		</c:forEach>		
	</table>
</body>
</html>