<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html SYSTEM "about:legacy-compat">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form</title>
<style>
input[type=text] {
	width: 70%;
	padding: 11px 17px;
	margin: 10px 5px;
	box-sizing: border-box;
}

input[type=number] {
	width: 70%;
	padding: 11px 17px;
	margin: 10px 5px;
	box-sizing: border-box;
}

input[type=email] {
	width: 70%;
	padding: 11px 17px;
	margin: 10px 5px;
	box-sizing: border-box;
}

input[type=checkbox] {
	margin: 0 20px 0;
}

input[type=radio] {
	margin: 0 20px 0;
}

select[name=state] {
	width: 70%;
	padding: 11px 17px;
	margin: 10px 5px;
	box-sizing: border-box;
}
</style>


<link rel="stylesheet" type="text/css" href="/WEB-INF/css/style.css">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<!--   <script type="text/javascript">
 function validateForm() {
	  var x = document.forms["form1"]["first_name"].value;
	  if (x == "") {
	    alert("Name must be filled out");
	    return false;
	  }
	}
</script>   pattern="[a-z]" required="required"-->
<script>
	function phoneNumberCheck(contact) {
		var regEx = /^[0]?[789]\d{9}$/;

		if (contact.value.match(regEx)) {
			return true;
		} else {
			alert("Please enter a valid phone number.");
			return false;
		}
	}
</script>
</head>
<body>
	<font color="blue">
		<h1 style="text-align: center;">Registration Form</h1>
	</font>
	<form name="form1" action="Servlet" onsubmit="return validateForm()"
		method="post">
		<div class="container">
			<table style="border:2px solid DodgerBlue;" border="1" class="table table striped table-responsive-xl">
				<div class="container pt-3">
					<tr>
						<td>First Name</td>
						<td><input type="text" name="firstName" /></td>
					</tr>
				</div>
				<div class="container pt-3">
					<tr>
						<td>Last Name</td>
						<td><input type="text" name="lastName" /></td>
					</tr>
				</div>
				<div class="container pt-3">
					<tr>
						<td>Contact No</td>
						<td><input type="number" name="contact" pattern=".{10}"
							title="Enter Valid Mob No" required /></td>
					</tr>
				</div>

				<div class="container pt-3">
					<tr>
						<td>Email</td>
						<div class="container pt-3">
							<td><input type="email" name="email" size="30" required /></td>
						</div>
					</tr>
				</div>
				<div class="container pt-3">
					<tr>
						<td>Gender</td>
						<td><input type="radio" id="male" name="gender" value="male"
							checked="checked">Male <input type="radio" id="female"
							name="gender" value="female">Female</td>
					</tr>
				</div>

				<div class="container pt-3">
					<td>Vehicle</td>
					<td>
						<p>
							<input type="checkbox" name="vehicle" value="bicycle" />bicycle <input
								type="checkbox" name="vehicle" value="bike" />bike <input
								type="checkbox" name="vehicle" value="car" />car <input
								type="checkbox" name="vehicle" value="boat" />boat <input
								type="checkbox" name="vehicle" value="bus" />bus
					</td>
					</tr>
				</div>
				<div class="container pt-3">
					<tr>
						<td>State</td>
						<td><select name="state">
								<option>Gujarat</option>
								<option>Maharashtra</option>
								<option>Rajasthan</option>
						</select></td>
					</tr>
				</div>
			</table>
		</div>
		<input type="submit"
			style='width: 100px; margin: 0 50%; position: relative; left: -50px;'
			value="Submit" class="btn btn-primary btn-sm mb-2"
			onclick="phoneNumberCheck(document.form1.contact)" />
	</form>


</body>
</html>
<!-- <script>
<div id="demo">
<h2>The XMLHttpRequest Object</h2>
<button type="button" onclick="loadDoc()">CLICK HERE</button>
</div>

function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("demo").innerHTML =
      this.responseText;
    }
  };
  xhttp.open("GET", "ajax_info.txt", true);
  xhttp.send();
}
</script> -->


