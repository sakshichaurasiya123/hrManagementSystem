<%@page import="java.util.Iterator"%>
<%@page import="com.nagarro.model.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- Font Awesome CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">



</head>



<style>
h5 {
	line-height: 0em;
}

h5 span {
	background: #fff;
	color: blue;
}

.my-custom-scrollbar {
	position: relative;
	height: 340px;
	overflow: auto;
}

table.table-bordered>thead>tr>th {
	border: 1px solid black;
}

table.table-bordered>tbody>tr>td {
	border: 1px solid black;
}

.table-wrapper-scroll-y {
	display: block;
}

th {
	position: sticky;
	top: 0;
	background-color: #EDEADB;
}
</style>



<body>
    <%! String username=null; %>
   <%  username=(String)request.getSession().getAttribute("username");%>
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
					     
						Welcome <%= username%>> ! <a href="index.jsp"><i
							style="color: red; font-size: 30px;" class="fa fa-times-circle"></i></a>
					</h3>
				</div>
			</div>
		</div>
	</div>
	<!-- Header -->

	<div class="container">
		<div class="row d-flex justify-content-center">
			<div class="col-lg-12">
				<div class="col-sm-12 col-lg-12 col-md-12 mt-3"
					style="border: 2px solid lightgray; border-radius: 5px;">
					<h5>
						<span class="pr-2 pl-2">Employee Listings</span>
					</h5>
					<div class="col-lg-12 d-flex flex-row-reverse">
						<input type="button" class="m-3" name="login"
							value="Download Employee Details"> <input type="button"
							class="m-3" name="login" value="Upload Employee Details">
					</div>

					<div class="col-lg-12 table-wrapper-scroll-y my-custom-scrollbar">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th scope="col">Employee Code</th>
									<th scope="col">Employee Name</th>
									<th scope="col">Location</th>
									<th scope="col">Email</th>
									<th scope="col">Date Of Birth</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%  
                          List<Employee> employeeList=null; 
                          
                          employeeList=(List)request.getAttribute("employeeList");
                     	 if( employeeList.isEmpty()){
                     		 %>
								<script>
                     		 alert("No Details Available !!!");
                     		 location="index.jsp";
                     		 </script>


								<% 
                     	 
                     	 }else{
                      
                      Iterator<Employee> result = employeeList.iterator();
                    while(result.hasNext()){
                 	   Employee employee =result.next();
                 	   
                   
                   %>



								<tr>

									<td><%=employee.getEmployeeCode() %></td>
									<td><%=employee.getEmployeeName() %></td>
									<td><%=employee.getLocation() %></td>
									<td><%=employee.getEmail() %></td>
									<td><%=employee.getDateOfBirth() %></td>
									<td>
										<div class="d-flex justify-content-center"
											style="background-color: lightgray;">
											<a
												href="edit.jsp?employeeCode=<%=employee.getEmployeeCode() %>&employeeId=<%=employee.getEmpid() %>"
												style="text-decoration: none;">Edit</a>
										</div>
									</td>
								</tr>

								<% }
                     	 } %>
							</tbody>

						</table>
					</div>

				</div>
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



	<!-- jquery -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<!-- Bootstrap Core javascript -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>