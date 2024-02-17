<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
.form {
	padding-left: 80px;
}

.btns {
	margin-left: 210px;
}
</style>
</head>
<body class="bg-secondary">

	<%@ include file="components/navBar.jsp"%>

	<div class="container ">
		<div class="row justify-content-center  mt-3 ">
			<div class="col-md-6 ">
				<h2 class="mb-5 pl-5 mt-3 font-weight-bold text-light">Add New
					Student Details</h2>
				<div class="form">
					<form action="addStudent" method="POST">

						<div class="row g-3 align-items-center mb-3 ">
							<div class="col-auto pr-2">
								<label for="name" class=" pr-2 col-form-label pl-4 name"><strong>Id
										:</strong></label>
							</div>
							<div class="col-auto">
								<input type="text" id="name" class="form-control " name="id">
							</div>
						</div>
						<div class="row g-3 align-items-center ">
							<div class="col-auto">
								<label for="course" class="col-form-label"><strong>Name
										:</strong></label>
							</div>
							<div class="col-auto pl-2">
								<input type="text" id="course" class="form-control pl-3  mb-2  "
									name="name">
							</div>
						</div>

						<div class="row g-3 align-items-center">
							<div class="col-auto ">
								<label for="course" class="col-form-label "><strong>Course
										:</strong></label>
							</div>
							<div class="col-auto pl-2">
								<input type="text" id="course" class="form-control pl-2 mt-2 "
									name="course">
							</div>
						</div>

						<button type="submit" value="add student"
							class="btn btn-primary btns mt-2">Submit</button>
					</form>

				</div>
			</div>
		</div>
	</div>

</body>
</html>