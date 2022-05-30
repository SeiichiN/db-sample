<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>どこつぶ社員管理システム</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/common/header.jsp" />

	<div id="content">
		<jsp:include page="/WEB-INF/jsp/common/aside.jsp" />
		<main id="main">
			<h1>新規社員登録・確認</h1>

			<table>
				<tr>
					<th>ID</th>
					<td><c:out value="${emp.id}" /></td>
				</tr>
				<tr>
					<th>名前</th>
					<td><c:out value="${emp.name}" /></td>
				</tr>
				<tr>
					<th>年齢</th>
					<td><c:out value="${emp.age}" /></td>
				</tr>
			</table>
			<form action="<%=request.getContextPath()%>/register" method="post">
				<input type="hidden" name="id" value="${emp.id}"> <input
					type="hidden" name="name" value="${emp.name}"> <input
					type="hidden" name="age" value="${emp.age}"> <input
					class="submit-btn" type="submit" value="登録">
			</form>
			<a href="<%=request.getContextPath()%>/newEmp">
				<button class="cancel-btn">取消</button>
			</a>
		</main>
	</div>
	<!-- #content -->

	<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
</body>
</html>