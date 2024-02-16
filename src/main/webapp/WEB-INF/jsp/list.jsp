<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.anish.*"%>
<%--    <%= request.getAttribute("lists") %> --%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous" />
<style type="text/css">
.h2 {
	color: white;
	font-weight: bold;
	text-align: center;
	margin-top: 50px;
	margin-bottom: 50px;
}
</style>
</head>
<body class="bg-secondary">

	<%@ include file="components/navBar.jsp" %>

	<div class="container-lg mt-10">
		<h2 class="h2">
			Student Details of Id no:
			<c:out value="${singleId.id }">
			</c:out>
		</h2>
		<table class="table table-dark">
			<tr>
				<th scope="col">Student Id</th>
				<th scope="col">Name</th>
				<th scope="col">Course</th>

			</tr>
			<tr>
				<td scope="row"><c:out value="${singleId.id }"></c:out></td>
				<td scope="row"><c:out value="${singleId.name }"></c:out></td>
				<td scope="row"><c:out value="${singleId.course }"></c:out></td>
			</tr>
		</table>
	</div>
</body>
</html>