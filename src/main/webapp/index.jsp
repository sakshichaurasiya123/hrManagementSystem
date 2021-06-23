<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>



<style>
h5 {
	line-height: 0em;
}

h5 span {
	background: #fff;
	color: blue;
}
</style>



<body>
	<!-- Header -->
	<div class="mb-5 navbar navbar-expand-lg navbar-light bg-secondary"
		style="background-image: linear-gradient(#AFAEFD, #efe8de);">
		<h1>
			<a class="navbar-brand" style="color: darkblue; font-size: 30px;"
				href="#">Welcome To EMS</a>
		</h1>
	</div>
	<!-- Header -->

	<div class="container">
		<div class="row d-flex justify-content-center">
			<div class="col-lg-6">
				<form action="login" method="post"
					class="col-sm-12 col-lg-12 col-md-12 mt-3"
					style="border: 2px solid lightgray; border-radius: 5px;">
					<h5>
						<span class="pr-2 pl-2">Login</span>
					</h5>
					<div class="form-group row mt-4 d-flex justify-content-center">
						<label for="Name" class="col-sm-2 col-lg-2 col-form-label">User
							Id</label>
						<div class="col-sm-6 col-md-8 col-lg-7">
							<input type="text" required class="form-control"
								style="height: 30px;" name="username" id="username" onblur="checkUserName()">
						</div>
					</div>
					<div class="form-group row d-flex justify-content-center">
						<label for="Email" class="col-sm-2 col-lg-2 col-form-label">Password:</label>
						<div class="col-sm-6 col-md-8 col-lg-7">
							<input type="password" required class="form-control"
								style="height: 30px;" name="password" id="password" onblur="checkPassword()"> <input
								class="pt-0 pr-3 pl-3 mt-3" type="submit" name="login"
								value="Login">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<div style="background-image: linear-gradient(#efe8de, #AFAEFD);"
		class="page-footer font-small blue mt-5">
		<div class="footer-copyright text-center py-3">
			<h6 style="color: darkblue;">Copyright 2020-2021 by Fresher
				Training</h6>
		</div>
	</div>
	<div class="row d-flex justify-content-center fixed-top">
        <div class="col-lg-6 ">
            <div id="alert">               
            </div>
        </div>
    </div>
	<!-- Footer -->
	<!-- jquery -->
	<script type="text/javascript"><%@include file="js/validation.js"%></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<!-- Bootstrap Core javascript -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>