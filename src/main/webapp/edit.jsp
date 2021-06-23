

<%@page import="com.nagarro.apiutil.ConsumeApiUtil"%>
<%@page import="com.nagarro.apiutil.ApiConstants"%>
<%@page import="com.nagarro.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- Font Awesome CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


</head>


<style>
h5 {
	​​​​​​​ line-height: 0em;
}

​​​​​​​


h5 span {
	​​​​​​​ background: #fff;
	color: blue;
}

​​​​​​​


.my-custom-scrollbar {
	​​​​​​​ position: relative;
	height: 340px;
	overflow: auto;
}

​​​​​​​


table.table-bordered>thead>tr>th {
	​​​​​​​ border: 1px solid black;
}

​​​​​​​


table.table-bordered>tbody>tr>td {
	​​​​​​​ border: 1px solid black;
}

​​​​​​​


.table-wrapper-scroll-y {
	​​​​​​​ display: block;
}

​​​​​​​


th {
	​​​​​​​ position: sticky;
	top: 0;
	background-color: #EDEADB;
}
​​​​​​​
</style>


<body>
	<!-- Header -->
	<div class="container-fliud">
		<div class="row">
			<div class="col-lg-12 mb-2"
				style="background-image: linear-gradient(#AFAEFD, #efe8de);">
				<div class="col-lg-12">
					<h1>
						<a class="navbar-brand" style="color: darkblue; font-size: 30px;"
							href="#">EMS</a>
					</h1>
				</div>
				<div class="col-lg-12 d-flex justify-content-end">
					<h3>
						Welcome user ! <a href="#"><i
							style="color: red; font-size: 30px;" class="fa fa-times-circle"></i></a>
					</h3>
				</div>
			</div>
		</div>
	</div>
	<!-- Header -->
	<%! int employeeCode,employeeId; Employee employee=null;%>
	<%
               employeeCode= Integer.parseInt(request.getParameter("employeeCode"));
               employeeId=Integer.parseInt(request.getParameter("employeeId"));
                employee =ConsumeApiUtil.getEmployeeById(employeeId);
        
        %>

	<div class="container">
		<div class="row d-flex justify-content-center">
			<div class="col-lg-12">
				<div class="col-sm-12 col-lg-12 col-md-12 mt-3"
					style="border: 2px solid lightgray; border-radius: 5px;">
					<h5>
						<span class="pr-2 pl-2">Employee Listings</span>
					</h5>
					<form action="updateDetails" class="col-lg-8 mx-auto">
						<div class="col-lg-8 mx-auto">

							<div class="form-group row mt-4 d-flex justify-content-center">

								<div class="col-sm-6 col-md-8 col-lg-7">
									<input type="text" hidden class="form-control"
										name="employeeid" value="<%=employeeId%>">
								</div>
							</div>

							<div class="form-group row mt-4 d-flex justify-content-center">
								<label for="Name" class="col-sm-3 col-lg-3 col-form-label">Employee
									Code:</label>
								<div class="col-sm-6 col-md-8 col-lg-7">
									<input type="text" readonly class="form-control"
										name="employeecode" value="<%=employeeCode%>">
								</div>
							</div>
							<div class="form-group row d-flex justify-content-center">
								<label for="Email" class="col-sm-3 col-lg-3 col-form-label">Employee
									Name:</label>
								<div class="col-sm-6 col-md-8 col-lg-7">
									<input type="text" required class="form-control"
										name="employeename" id="employeename" onblur="checkName()" value="<%=employee.getEmployeeName()%>">
								</div>
							</div>

							<div class="form-group row mt-4 d-flex justify-content-center">
								<label for="Name" class="col-sm-3 col-lg-3 col-form-label">Location:</label>
								<div class="col-sm-6 col-md-8 col-lg-7">
									<textarea required class="form-control" onblur="checkLocation()" id="location"  name="location"
										value="<%=employee.getLocation()%>"><%=employee.getLocation()%></textarea>
								</div>
							</div>
							<div class="form-group row d-flex justify-content-center">
								<label for="Email" class="col-sm-3 col-lg-3 col-form-label">Email:</label>
								<div class="col-sm-6 col-md-8 col-lg-7">
									<input type="email" required class="form-control" name="email" id="email" onblur="checkEmail()"
										value="<%=employee.getEmail()%>">
								</div>
							</div>

							<div class="form-group row d-flex justify-content-center">
								<label for="example-date-input"
									class="col-sm-3 col-lg-3 col-form-label">Date Of Birth:</label>
								<div class="col-sm-6 col-md-8 col-lg-7">
									<input class="form-control" type="text" name="date" id="date" onblur="checkDate()"
										value="<%=employee.getDateOfBirth()%>">
								</div>
							</div>

							<div class="form-group row d-flex justify-content-center">
								<label for="Email" class="col-sm-3 col-lg-3 col-form-label">
									<input type="submit" name="submit" value="Submit">
								</label>
								<div class="col-sm-6 col-md-8 col-lg-7 pl-0">
									<label for="Email" class="col-sm-3 col-lg-3 col-form-label">
										<input type="submit" name="cancel"
										 value="cancel">
								</div>
								</label>
							</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
<div class="row d-flex justify-content-center fixed-top">
        <div class="col-lg-6 ">
            <div id="alert">               
            </div>
        </div>
    </div>
   
	<!-- Footer -->
	<div style="background-image: linear-gradient(#efe8de, #AFAEFD);"
		class="page-footer font-small blue mt-3">
		<div class="footer-copyright text-center py-3">
			<h6 style="color: darkblue;">Copyright 2020-2021 by Fresher
				Training</h6>
		</div>
	</div>
	<!-- Footer -->
	<script type="text/javascript"><%@include file="js/validation.js"%></script>

	<!-- jquery -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<!-- Bootstrap Core javascript -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>














