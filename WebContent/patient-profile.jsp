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
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="patient-header.jsp"></jsp:include>
	<div class="container">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">My Profile</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<img src="images/my-profile.jpg"
					style="width: 600px; height: 400px;">
			</div>

			<div class="col-md-6 col-sm-6 col-xs-12">
				<%
					String success = (String) session.getAttribute("profile-update");
					if (success != null) {
					session.removeAttribute("profile-update");
				%>
				<div class="alert alert-success" id="success">Your profile updated successfully.</div>
				<%
					}
				%>
				<div class="panel panel-info">
					<div class="panel-heading">My Profile</div>
					<div class="panel-body">
						<form role="form" action="EditPatientProfile" method="post">
							<%
								ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblpatient where uname='"+ session.getAttribute("uname") + "' and patient_id='" + session.getAttribute("pid") + "'");
								while (resultset.next()) {
							%>
							<div class="form-group">
								<label>Patient Id</label> <input class="form-control"
									type="text" name="pid"
									value="<%=resultset.getString("patient_id")%>" readonly />
							</div>
							<div class="form-group">
								<label>Full Name</label> <input class="form-control" type="text"
									name="fname" value="<%=resultset.getString("patient_name")%>" />
							</div>
							<div class="form-group">
								<label>Email Id</label> <input class="form-control" name="email"
									type="text" value="<%=resultset.getString("patient_email")%>" />
							</div>
							<div class="form-group">
								<label>Mobile No</label> <input class="form-control"
									name="mobile" type="text"
									value="<%=resultset.getString("Patient_mobile")%>" />
							</div>
							<div class="form-group">
								<label>Address</label> <input class="form-control"
									name="address" type="text"
									value="<%=resultset.getString("patient_address")%>" />
							</div>
							<div class="form-group">
								<label>Created At</label> <input class="form-control"
									type="text" value="<%=resultset.getString("created_at")%>"
									readonly />
							</div>
							<div class="form-group">
								<label>Updated At</label> <input class="form-control"
									type="text" value="<%=resultset.getString("updated_at")%>"
									readonly />
							</div>
							<button type="submit" class="btn btn-info">Update
								Profile</button>
							<%
								}
							%>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
</body>
<script type="text/javascript">
	$(function() {
		$('#success').delay(3000).show().fadeOut('slow');
	});
</script>
</html>