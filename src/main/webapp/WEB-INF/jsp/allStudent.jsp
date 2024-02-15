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
.me {
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

		<table
			class="table table-dark table-bordered table-striped table-hover ">
			<thead>
				<tr>
					<th scope="col">Student Id</th>
					<th scope="col">Name</th>
					<th scope="col">Course</th>
				</tr>
			</thead>

			<c:forEach items="${StudentList}" var="student">

				<tbody>
					<tr>
						<th scope="row">${student.id }</th>
						<td>${student.name }</td>
						<td>${student.course}</td>
					</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>