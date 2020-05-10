<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userlist</title>
</head>
<body>
<table>
	<c:forEach items="${userlist}" var="list" varStatus="status">
		<tr target="sid_user" rel="${list.id}">
			<td>${list.id}</td>
			<td>${list.username}</td>
			<td>${list.password}</td>
			<td>${list.roleid}</td>
			<td>
			<!-- 注意sex在后端被处理为了布尔值 -->
				<c:if test="${list.sex==false}">女</c:if> 
				<c:if test="${list.sex==true}">男</c:if>
			</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>