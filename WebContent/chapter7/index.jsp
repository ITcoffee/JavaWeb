<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<body>
	<h3 align="center">用户登录</h3>
	<hr>
	<form action="showData.jsp" name="form1" method="post">
		<table width="355" border="1" align="center" cellpadding="0" cellspacing="0">
			<tr align="center">
				<td width="100" height="30">用户名：</td>
				<td height="30"><input type="text" name="username"></td>
			</tr>
			
			<tr align="center">
				<td height="30">密&nbsp;&nbsp;码：</td>
				<td><input type="password" name="password"></td>
			</tr>
			
			<tr align="center">
				<td height="30">年&nbsp;&nbsp;龄：</td>
				<td><input type="text" name="age"></td>
			</tr>
		</table>
		
		<table align="center">
			<tr align="center">
				<td>
					<input type="submit" name="submit1" value="提交">
					<input type="reset" name="submit2" value="重置">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>