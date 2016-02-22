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
	
	<c:catch var="error1">
		实现数据库表的创建：<br>
		<sql:update var="result1">
			CREATE TABLE IF NOT EXISTS user (
				id int(10) primary key not null auto_increment,
				name varchar(50),
				sex varchar(50)
			)
		</sql:update>
	</c:catch>		
	<c:out value="${error1 }"></c:out>
	
	<c:catch var="error2">
		<sql:update var="result2">
			INSERT INTO user (name, sex) VALUES ('John', '男'), ('Jack', '男')
		</sql:update>
		影响的记录数为：<c:out value="${result2 }"></c:out>
	</c:catch>
	<c:out value="${error2 }"></c:out>
</body>
</html>