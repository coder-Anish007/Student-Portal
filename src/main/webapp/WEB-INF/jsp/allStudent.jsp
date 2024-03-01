<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
<style>
.search {
	float: right;
	padding-bottom: 10px;
}

.h2 {
	text-align: center;
	font-weight: bold;
	color: white;
}
</style>
</head>
<body class="bg-secondary">

	<%@ include file="components/navBar.jsp"%>

	<div class="container-lg mt-10">
		<h2 class="h2 p-3">Total List Of Students</h2>

		<!-- added a search bar to find the student -->

		<form action="listing" method="post" class="search">
			<input type="text" name="id" class="p-1">
			<button type="submit" class="btn btn-success p-1 btn-sm">Search
				By Id</button>
		</form>

		<table
			class="table table-dark table-bordered table-striped table-hover ">
			<thead>
				<tr>
					<th scope="col">Student Id</th>
					<th scope="col">Name</th>
					<th scope="col">Course</th>
					<th scope="col">Delete Record</th>
					<th scope="col">Update Record</th>
				</tr>
			</thead>

			<c:forEach items="${StudentList}" var="student">

				<c:url var="deleteLink" value="delete">
					<c:param name="id" value="${student.id }"></c:param>
				</c:url>

				<c:url var="updateLink" value="LoadUpdate">
					<c:param name="id" value="${student.id }"></c:param>
				</c:url>
				<tbody>
					<tr>
						<th scope="row">${student.id }</th>
						<td>${student.name }</td>
						<td>${student.course}</td>
						<td><a href="${deleteLink}"
							onclick="if(!(confirm('Are you sure you want to delete this student?')))return false">Delete</a></td>
						<td><a href="${updateLink}">Update</a></td>
					</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>