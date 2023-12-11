<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Student Contacts and Upcoming Schedule</title>
<link rel='stylesheet'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css'>
<link rel="stylesheet" href="./style.css">
</head>
<body>
	<nav class="navbar navbar-default">
	<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">Student Contacts and Upcoming Schedule </a>
	</div>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Access<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp">Login</a></li>
						<li><a href="join.jsp">Join</a></li>
						<li><a href="Contact.jsp">Contact</a></li>
						<li><a href="Schedule.jsp">Upcoming Schedule</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	
	
	
	<!-- partial:index.partial.html -->
	<div class="container">
		<div id="login-box">
			<div class="logo">
				<img src="http://placehold.it/100x100?text=DD"
					class="img img-responsive img-circle center-block" />
				<h1 class="logo-caption">
					<span class="tweak">J</span>oin
				</h1>
			</div>
			<!-- /.logo -->
			
			<c:if test="${not empty failedMsg }">
			<h5 class = text-center-text-danger>${failedMsg}</h5>
			<c:remove var="failedMsg" scope="session"/>t 
			</c:if>
			
			<form action=join" method="post" >
			<div class="form-group">
						<input type="text" class="form-control" placeholder="ID" name="userID" maxlength="10"/>
						</div>
						<div class="form-group">
						<input type="text" class="form-control" placeholder="Name" name="userName" maxlength="10"/>
						</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="Password" name="userPassword" maxlength="20"/>
					</div>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="Email" name="userEmail" maxlength="20"/>
					</div>
					<div class="form-group" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">
					
					<button type="submit" class="btn btn-default btn-block btn-custom">Sign up</button>
					  </div>
         
			</form>
		</div>
	</div>
	<div id="particles-js"></div>
	<!-- partial -->
	<script
		src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css'></script>
	<script src='https://code.jquery.com/jquery-1.11.1.min.js'></script>
	<script src="./script.js"></script>

</body>
</html>