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
	color:#ff794d;
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
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12"><br><br>
				<img src="images/pReg.jpg" style="width:75%; height:75vh">
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12">
			
				<%
					String adminRegister = (String) session.getAttribute("success-message");
				if (adminRegister != null) {
					session.removeAttribute("success-message");
				%>
				<div class="alert alert-success" id="success">Patient account
					created successfully.</div>
				<%
					}
				%>
				<div class="panel-heading" style="border-radius: 15px;color: #ff794d; text-shadow: 6px 2px 9px #ff794d; font-size:30px;">Create Patient Account</div>
				<div class="panel panel-info" style="background-color: #ecf0f3; border-radius: 15px;box-shadow: 13px 13px 20px #cbced1, -13px -13px 20px #fff;">
				
					<div class="panel-body">
						<form role="form" action="AccountCreate" method="post" name='patientRegister'>
							<div class="form-group">
								<label>Patient Id</label>
								<%
									String patientId = DatabaseConnection.generatePatientId();
								%>
								<input class="form-control" type="text" value="<%=patientId%>"
									name="patientId" readonly />
							</div>
							<div class="form-group">
								<label>Patient Name</label> <input class="form-control"
									type="text" name="patientName" />
							</div>
							<div class="form-group">
								<label>Email Id</label> <input class="form-control" type="text"
									name="emailId" onblur="ValidateEmail()"/>
							</div>
							<div class="form-group">
								<label>Mobile No</label> <input class="form-control" type="text"
									name="mobile" id="txtMB"
									onblur="return ValidateMobNumber('txtMB')" />
							</div>
							<div class="form-group">
								<label>Address</label> <input class="form-control" type="text"
									name="address" />
							</div>
							<div class="form-group">
								<label>User Name</label> <input class="form-control" type="text"
									name="uname" />
							</div>
							<div class="form-group">
								<label>Password</label> <input class="form-control"
									type="password" name="upass" />
							</div>
							<button type="submit" style="background-color: #ff794d" class="btn btn-info" id="btnValidate">Create
								Account</button>
							<a class="for-pwd" href="patient-login.jsp" id="anchAlAcc">Already
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
		var uemail = document.patientRegister.emailId;
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if (uemail.value.match(mailformat)) {
			document.patientRegister.desc;
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
			alert("You didn't enter a phone number.");
			fld.value = "";
			//fld.focus();
			return false;
		} else if (isNaN(fld.value)) {
			alert("The phone number contains illegal characters.");
			fld.value = "";
			//fld.focus();
			return false;
		} else if (!(fld.value.length == 10)) {
			alert("The phone number is the wrong length. \nPlease enter 10 digit mobile no.");
			fld.value = "";
			//fld.focus();
			return false;
		}

	}
</script>
</html>