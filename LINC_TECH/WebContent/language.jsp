<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty param.lingua}">
		<f:setLocale value="${param.lingua}" scope="session" />
	</c:if>

	<jsp:forward page="index.jsp" />
	<jsp:forward page="timeline.jsp" />
	<jsp:forward page="ano1955.jsp" />
	<jsp:forward page="ano1985.jsp" />
	<jsp:forward page="ano2015.jsp" />
	<jsp:forward page="curiosidades.jsp" />
</body>
</html>