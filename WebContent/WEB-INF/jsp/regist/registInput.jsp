<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>社員管理システム</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/common/header.jsp" />

	<div id="content">
		<jsp:include page="/WEB-INF/jsp/common/aside.jsp" />
		<main id="main">
			<h1>新規社員登録</h1>
			<c:forEach var="errorMsg" items="${errorMsgList}">
				<p><c:out value="${errorMsg}"/></p>
			</c:forEach>

			<form action="<%=request.getContextPath()%>/registConfirm" method="post">
				<jsp:include page="/WEB-INF/jsp/common/input.jsp" />
				<input class="submit-btn" id="create-confirm-btn" type="submit" value="確認">
			</form>
			<a href="<%=request.getContextPath() %>/list">
			    <button class="cancel-btn" id="create-cancel-btn">戻る</button></a>
		</main>
	</div>
	<!-- #content -->

	<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
</body>
</html>