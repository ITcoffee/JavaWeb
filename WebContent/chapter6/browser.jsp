<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
body {font-size: 9pt}
td {font-size: 9pt}
</style>
<title>获取request属性</title>
</head>

<body>
	<form runat="server" method="post">
		<table border="1" width="600" bordercolor="black">
			<tr bgcolor="skyblue">
				<td width="50%"><b>客户端及浏览器属性</b></td>
				<td width="50%"><b>检测结果</b></td>
			</tr>
			
			<tr>
				<td width="50%">客户端检测浏览器及机器属性：</td>
				<td width="50%"><% out.print(request.getHeader("user-agent")); %></td>
			</tr>
			
			<tr bgcolor="skyblue">
				<td width="50%">客户使用的协议：</td>
				<td width="50%"><% out.print(request.getProtocol()); %></td>
			</tr>
			
			<tr bgcolor="skyblue">
				<td width="50%">客户提交信息的方式：</td>
				<td width="50%"><% out.print(request.getMethod()); %></td>
			</tr>
			
			<tr bgcolor="skyblue">
				<td width="50%">客户提交信息的长度：</td>
				<td width="50%"><% out.print(request.getContentLength()); %></td>
			</tr>
			
			<tr bgcolor="skyblue">
				<td width="50%">获取客户的IP地址：</td>
				<td width="50%"><% out.print(request.getRemoteAddr()); %></td>
			</tr>
			
			<tr bgcolor="skyblue">
				<td width="50%">获取客户机的名称：</td>
				<td width="50%"><% out.print(request.getRemoteHost()); %></td>
			</tr>
			
			<tr bgcolor="skyblue">
				<td width="50%">获取服务器的名称：</td>
				<td width="50%"><% out.print(request.getServerName()); %></td>
			</tr>
			
			<tr bgcolor="skyblue">
				<td width="50%">获取服务器的端口号：</td>
				<td width="50%"><% out.print(request.getServerPort()); %></td>
			</tr>
			
			<tr bgcolor="skyblue">
				<td width="50%">获取文件路径：</td>
				<td width="50%"><% out.print(request.getServletPath()); %></td>
			</tr>
			
			<tr bgcolor="skyblue">
				<td width="50%">获取网络连接状态：</td>
				<td width="50%"><% out.print(request.getHeader("connection")); %></td>
			</tr>
			
			<tr bgcolor="skyblue">
				<td width="50%">生成的cookie对象：</td>
				<td width="50%"><% out.print(request.getHeader("cookie")); %></td>
			</tr>
		</table>
	</form>
</body>
</html>