<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<!-- Bootstrap core css -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="container mt-5 shadow-lg p-3 mb-5 rounded"
		style="background-color: aliceblue;">
		<div class="row d-flex justify-content-center mt-2">
			<div
				class="col-lg-8 d-flex justify-content-center shadow mb-3 p-3 rounded"
				style="background-color: #004691; color: white;">
				<h4>
					Welcome <i class="fa fa-plane"></i>
				</h4>
			</div>
			<form action="addUser" method="POST"
				class="col-lg-8 shadow p-3 mb-3 bg-white rounded">
				<div class="form-outline mb-4">
					<label class="form-label" for="form1Example1">Username</label> <input
						type="text" required name="username" class="form-control" />
				</div>



				<div class="form-outline mb-4">
					<label class="form-label" for="form1Example2">Password</label> <input
						type="password" required name="password" class="form-control" />
				</div>



				<div class="row mb-4">
					<div class="col">
						<a href="#">Forgot password?</a>
					</div>
				</div>
				<div class="row d-flex justify-content-center">
					<div class="col-lg-6">
						<input type="submit" class="btn btn-primary btn-block"
							name="addUser" value="Sign Up">
					</div>
				</div>
			</form>



		</div>
	</div>



	<!-- jquery -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<!-- Bootstrap Core javascript -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>






