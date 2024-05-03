<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!DOCTYPE html>
<html lang="en">

<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Site Metas -->
<title>AS</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="images/staff.png" type="image/x-icon" />
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="style.css">
<!-- Colors CSS -->
<link rel="stylesheet" href="css/colors.css">
<!-- ALL VERSION CSS -->
<link rel="stylesheet" href="css/versions.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">

<!-- Modernizer for Portfolio -->
<script src="js/modernizer.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>

<style>
#anchAlAcc:hover{
	color:#66ffb3;
}
#anchAlAcc{
	color:grey;
}

table {
	border-collapse: collapse; 
   
}

table th,
table td {
  	max-width: auto;
  	padding: 8px 16px;
  	border: 1px solid #ddd;
  	overflow: hidden;
  	text-overflow: ellipsis;
  	white-space: nowrap;
}

table thead {
  position: sticky;
  background-color: #ff794d;
}

/* width */
::-webkit-scrollbar {
  width: 5px;
  height: 5px;
}

/* Track */
::-webkit-scrollbar-track {
  box-shadow: inset 0 0 5px grey; 
  border-radius: 5px;
}
 
/* Handle */
::-webkit-scrollbar-thumb {
  background: red; 
  border-radius: 5px;
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
  background: #b30000; 
}

</style>

<body class="host_version">
	<jsp:include page="header.jsp"></jsp:include><br>
	<div class="container">
		
		<div class="row" style="height:70vh">
			<div class="col-md-6 col-sm-6 col-xs-12"><br><br><br>
				<img src="images/dReg.jpg" style="width:75%; height:75vh" >
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12" style="width:50%; height:70vh">
				<div class="panel-heading" style="border-radius: 15px;color: #66ffb3; text-shadow: 6px 2px 9px #66ffb3; font-size:30px;">Create Driver Account</div>
				<div class="panel panel-default" style="background-color: #ecf0f3; border-radius: 15px;box-shadow: 13px 13px 20px #cbced1, -13px -13px 20px #fff;">

					<div class="panel-body">
						<%
							String adminRegister = (String) session.getAttribute("success-message");
						if (adminRegister != null) {
							session.removeAttribute("success-message");
						%>
						<div class="alert alert-success" id="success">Driver account
							created successfully.</div>
						<%
							}
						%>
						<form action="DriverAccountCreate" method="post" name='driverRegister'>
							<div class="form-group">
								<label>Driver Id</label>
								<%
									String driverId = DatabaseConnection.generateDriverId();
								%>
								<input class="form-control" type="text" name="driverId"
									value="<%=driverId%>" readonly required />
							</div>
							<div class="form-group">
								<label>Driver Name</label> <input class="form-control"
									type="text" name="dname" required/>
							</div>
							<div class="form-group">
								<label>Email Id</label> <input class="form-control" type="text"
									name="demail" onfocusout="ValidateEmail()" required/>
							</div>
							<div class="form-group">
								<label>Mobile No</label> <input class="form-control" type="text"
									name="dmobile" id="txtMB" onfocusout="return ValidateMobNumber('txtMB')" required/>
							</div>
							<div class="form-group">
								<label>Address</label> <input class="form-control" type="text"
									name="daddress" required/>
							</div>
							<div class="form-group">
								<label>User Name</label> <input class="form-control" type="text"
									name="uname" required/>
							</div>
							<div class="form-group">
								<label>Password</label> <input class="form-control"
									type="password" name="upass" required/>
							</div>
							<button type="submit" style="background-color: #66ffb3;" class="btn btn-info">Create
								Account</button>
							<a class="for-pwd" href="patient-login.jsp" id="anchAlAcc" >Already
								registered,Please Login</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script type="text/javascript">
	$(function() {
		$('#danger').delay(3000).show().fadeOut('slow');
	});

	$(function() {
		$('#success').delay(3000).show().fadeOut('slow');
	});

	$(function() {
		$('#info').delay(3000).show().fadeOut('slow');
	});
</script>
<script>
	//This function will validate Email.
	function ValidateEmail() {
		var uemail = document.driverRegister.demail;
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if (uemail.value.match(mailformat)) {
			document.driverRegister.desc;
			return true;
		} else {
			alert("Please enter valid email id.!");
			//uemail.focus();
			return false;
		}
	}

	function ValidateMobNumber(txtMobId) {
		var fld = document.getElementById(txtMobId);
		if (fld.value == "") {
			alert("You didn't enter a mobile number.");
			fld.value = "";
			//fld.focus();
			return false;
		} else if (isNaN(fld.value)) {
			alert("The mobile number contains illegal characters.");
			fld.value = "";
			//fld.focus();
			return false;
		} else if (!(fld.value.length == 10)) {
			alert("The mobile number is the wrong length. \nPlease enter 10 digit mobile no.");
			fld.value = "";
			//fld.focus();
			return false;
		}

	}
</script>
</html>