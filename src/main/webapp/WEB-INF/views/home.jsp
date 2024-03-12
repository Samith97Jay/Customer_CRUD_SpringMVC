<!--  <html>
   <head>
      <title>Hello Spring MVC</title>
   </head>
   
   <body>
      <h2>${message}</h2>
      
      <div class="container mt-3">

      
      <a href="customerReport" class="btn btn-primary"> Customer </a>
      
      <button class="btn btn-success" >Customers</button>
      
      <input type="button" >
       
      </div>
   </body>
</html>-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>

</head>
<body>
<center><h1>Customer Management</h1></center><br>
 <center> <button onclick="redirectToURL()" class="btn btn-success">Customers</button></center>

  <script>
    function redirectToURL() {
     
      window.location.href = 'customerReport';
    }
  </script>
</body>
</html>