<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="jakarta.tags.core"%>

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
	margin: 20px;
	text-align: center;
	font-size: 40px;
	font-weight: bold;
	padding-top: 20px;
}

.btns {
	margin-left: 315px;
}
</style>
</head>
<body class="bg-secondary">


	<%@ include file="components/navBar.jsp" %>

	<div class="container-lg ">
		<h2 class="h2">Edit student details</h2>
		<form action="update" method="POST">
			<input type="hidden" name="ids" value="${ids.id }">
			<table class="table table-dark mt-5">
				<thead>
					<tr>
						<th>Editing the following details</th>
						<th>ID: <c:out value="${ids.id}"></c:out></th>
						<th>Name: <c:out value="${ids.name}"></c:out></th>
						<th>Course: <c:out value="${ids.course}"></c:out></th>
					</tr>
				</thead>
			</table>

			<div class="row justify-content-center ">
				<div class="col-md-6">

					<div class="row g-3 align-items-center mb-3 ">
						<div class="col-auto pr-2">
							<label for="name" class=" pr-2 col-form-label"><strong>Name:</strong></label>
						</div>
						<div class="col-auto">
							<input type="text" id="name" class="form-control pl-1"
								name="name">
						</div>
					</div>
					<div class="row g-3 align-items-center">
						<div class="col-auto">
							<label for="course" class="col-form-label"><strong>Course:</strong></label>
						</div>
						<div class="col-auto pl-2">
							<input type="text" id="course" class="form-control pl-2 "
								name="course">
						</div>
					</div>

				</div>
			</div>
			<button type="submit" value="add student"
				class="btn btn-primary btns mt-2">Submit</button>
		</form>
	</div>
</body>
</html>