<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>blog test list</title>
</head>
<body>

<table>
	<c:forEach items="${bloglist}" var="list" varStatus="status">
		<tr target="sid_user" rel="${list.id}">
			<td>${list.title}</td>
			<td>${list.userid}</td>
			<td>${list.content}</td>
			<td>${list.createtime}</td>
			<td>
			<!-- 注意此处的flag是经过后端处理的，
			原来是rec_flag（tinyint），此处应为recFlag(boolean) -->
				<c:if test="${list.recFlag==false}">不推荐</c:if> 
				<c:if test="${list.recFlag==true}">推荐</c:if>
			</td>
		</tr>
	</c:forEach>
</table>


</body>
</html>