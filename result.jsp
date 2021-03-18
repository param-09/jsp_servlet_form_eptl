<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

</head>

<%
	String vehicle[] = request.getParameterValues("vehicle");
	if (vehicle != null) {
%>

<body>
	<div class="container my-2">
		<table border="1" class="table table striped table-responsive-xl">
			<tr>
				<td>First Name:</td>
				<td>${firstName}</td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td>${lastName}</td>
			</tr>
			<tr>
				<td>Contact No:</td>
				<td>${contact}</td>
			</tr>
			<tr>
				<td>Email:</td>
				<td>${email}</td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td>${gender}</td>
			</tr>
			<tr>
				<td>State:</td>
				<td>${state}</td>
			</tr>

			<tr>
				<td>vehicle</td>
				<td><%
					for (int i = 0; i < vehicle.length; i++) {
				%>
				<%=vehicle[i]%>
				<%
					}
				%>
				<%
					}
				%></td>
			</tr>
		</table>
	</div>
</body>
</html>