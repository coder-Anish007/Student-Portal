<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.nav {
	font-weight: bold;
}

#navbar ul li a:hover, #navbar ul li a.current {
	background: black;
	color: white;
}
</style>
</head>
<body>

	<nav class="navbar navbar-expand-lg bg-body-tertiary navbar-dark nav"
		id="navbar">
		<div class="container-fluid">

			<div class="collapse navbar-collapse justify-content-center "
				id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="allStudent">Student List</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="addStudent">Add Student</a></li>
				</ul>
			</div>
		</div>
	</nav>

</body>
</html>