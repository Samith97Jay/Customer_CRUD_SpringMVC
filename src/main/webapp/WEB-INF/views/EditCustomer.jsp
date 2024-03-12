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
				<h1>Edit Customer</h1>
			</div>
		</div>
		
		<form action="updateCustomer" method="post">

			<div class="row">
				<div class="col">
					<div class="form-group">
						<input type="hidden" value="${customer.id}" class="form-control" id="id" name="id"
							readonly="readonly">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="name">Name</label> <input type="text"
							value="${customer.name }" class="form-control" id="name"
							name="name" placeholder="Enter Name" required title="Name can not be empty">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="email">Email</label> <input type="text"
							value="${customer.email }" class="form-control"
							id="email" name="email"
							placeholder="Enter Email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"
								 title="Please enter a valid email address" >
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="phonenumber">Phone Number</label> <input
							type="text" class="form-control" id="phonenumber"
							value="${customer.phonenumber }" name="phonenumber"
							placeholder="Enter Phone Number" pattern="0[0-9]{9}"
								title="Please enter a valid 10-digit phone number starting with 0"
								required>
					</div>
				</div>
				
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="address">Address</label>
						<textarea class="form-control" id="address" name="address"
							rows="5" placeholder="Enter Address" required title="Address can not be empty"> ${customer.address } </textarea>
					</div>
				</div>
			</div>

			<button type="submit" class="btn btn-success">Submit</button>
		</form>

	</div>

</body>
</html>