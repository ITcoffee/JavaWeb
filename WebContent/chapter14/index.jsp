<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/system/common.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${baseName }/js/chapter14/changeProvince.js"></script>
<title>动态加载联动框</title>
</head>
<body>
	<table align="center" border="1" width="320">
		<tr>
			<td>省份：</td>
			<td>
				<select id="province" style="width:85" onchange="proChange2(this.value);">
					<option value="gd">广东</option>
					<option value="gx">广西</option>
					<option value="hn">湖南</option>
					<option value="hb">湖北</option>
					<option value="ah">安徽</option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td>地市：</td>
			<td>
				<select id="city" style="width:85">
					<option value="">--请选择--</option>
				</select>
			</td>
		</tr>
	</table>
</body>
</html>