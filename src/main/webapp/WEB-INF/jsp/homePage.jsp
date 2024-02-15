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
#background_img {
	background: url('../components/img/home.jpg') no-repeat center center/cover;
	height: 726px;
}
.nav{
	font-weight: bold;
}
#navbar ul li a:hover,
#navbar ul li a.current{
  	  background: black;
   	  color: white;
}   
</style>
</head>
<body>
	<header>
		<div id="background_img" style="background: url('../home.jpg') no-repeat center center/cover">
			<nav class="navbar navbar-expand-lg bg-body-tertiary  nav navbar-dark" id="navbar">
				<div class="container-fluid">

					<div class="collapse navbar-collapse justify-content-center " id="navbarNav">
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link active"	aria-current="page" href="home">Home</a></li>
							<li class="nav-item"><a class="nav-link active" href="allStudent">Student List</a></li>
							<li class="nav-item"><a class="nav-link active" href="addStudent">Add Student</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<div class="container">
				<div class="menu-content">
					<h1>
						<span class="background_text">University</span> Of INDIA
					</h1>
					<p class="lead">A place where (mostly) distinguished professors
						teach and conduct research</p>
				</div>
			</div>
		</div>
	</header>

</body>
</html>