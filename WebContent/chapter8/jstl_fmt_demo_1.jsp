<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>i18n标签库</title>
</head>
<body>
	<h4 align="center"><c:out value="&ltfmt:number&gt标签的使用" escapeXml="false"></c:out> </h4>
	<br>
	<table border="1" cellpadding="0" cellspacing="0" align="center">
		<tr align="center">
			<td width="100">类型</td>
			<td width="100">使用数据</td>
			<td width="100">结果</td>
			<td width="300">说明</td>
		</tr>
		
		<tr>
			<td>数字格式化</td>
			<td>108.75</td>
			<td><fmt:formatNumber type="number" pattern="###.#">108.75</fmt:formatNumber> </td>
			<td>使用pattern可以定义显示的样式。本例设定为###.#小数部分将使用四舍五入法。</td>
		</tr>
		
		<tr>
			<td>数字格式化</td>
			<td>9557</td>
			<td><fmt:formatNumber type="number" pattern="#.####E0">9557</fmt:formatNumber> </td>
			<td>使用科学计数法。</td>
		</tr>
		
		<tr>
			<td>数字格式化</td>
			<td>9557</td>
			<td><fmt:formatNumber type="number">9557</fmt:formatNumber> </td>
			<td>使用默认格式。</td>
		</tr>
		
		<tr>
			<td>数字格式化</td>
			<td>9557</td>
			<td><fmt:formatNumber type="number" groupingUsed="false">9557</fmt:formatNumber> </td>
			<td>不使用格式。</td>
		</tr>
		
		<tr>
			<td>数字格式化</td>
			<td>9557</td>
			<td><fmt:formatNumber type="number" maxIntegerDigits="3">9557</fmt:formatNumber> </td>
			<td>使用位数限定，根据指定的位数显示，其他数字忽略。例如：9不被显示。</td>
		</tr>
		
		<tr>
			<td>数字格式化</td>
			<td>9557</td>
			<td><fmt:formatNumber type="number" minIntegerDigits="5">9557</fmt:formatNumber> </td>
			<td>使用位数限定，根据指定的位数显示，不足前面用0补充。</td>
		</tr>
		
		<tr>
			<td>百分比格式化</td>
			<td>0.98</td>
			<td><fmt:formatNumber type="percent">0.98</fmt:formatNumber> </td>
			<td>使用百分比格式显示一个数据。</td>
		</tr>
		
		<tr>
			<td>货币格式化</td>
			<td>188.88</td>
			<td><fmt:formatNumber type="currency">188.88</fmt:formatNumber> </td>
			<td>使用货币格式显示一个数据。</td>
		</tr>
		
		<tr>
			<td>存储数据</td>
			<td>188.88</td>
			<td>
				<fmt:formatNumber type="currency" var="money">188.88</fmt:formatNumber>
				<c:out value="${money }"></c:out>
			</td>
			<td>存储money的值为${money }</td>
		</tr>
	</table>
</body>
</html>