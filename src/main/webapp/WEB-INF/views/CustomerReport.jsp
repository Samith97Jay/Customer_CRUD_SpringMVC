<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>


	<div class="container mt-3">
	
		<div class="row p-2">
			<div class="col-md-12 bg-light text-center">	
				<h1> Customer's Records</h1>
			</div>
		</div>
		
		<div class="row p-2">
        	<div class="col-md-12 bg-light text-right">
        		<a href="addCustomer" class="btn btn-primary"> Add Customer </a>
        	</div>
       	</div>
        
		
		<div class="row">

			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Name</th>
						<th scope="col">Email</th>
						<th scope="col">Phone Number</th>
						<th scope="col">Address</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cust" items="${customer}">
						<tr>
							<td class="table-plus">${cust.id}</td>
							<td>${cust.name}</td>
							<td>${cust.email}</td>
							<td>${cust.phonenumber}</td>
							<td>${cust.address}</td>
							
							<td><a href="editCustomer/${cust.id}" class="btn btn-warning">
									Edit </a></td>
							<td><a href="deleteCustomer/${cust.id}"
								class="btn btn-danger"> Delete </a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>