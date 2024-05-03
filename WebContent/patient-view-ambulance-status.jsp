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
<style>

</style>
</head>
<body class="host_version">
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="patient-header.jsp"></jsp:include>
	<div class="container-fluid">
		 <!-- <div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">Booking Ambulance Status</h4>
			</div>
		</div>  --><br>
		<div class="row">
			<div class="col-md-12">
			<div class="" style="border-radius: 15px; text-shadow: 6px 2px 9px grey;  font-size:30px;">Booking Ambulance Status</div> 
				<!--    Context Classes  -->
				<!-- <div class="panel panel-default"> -->

					
<br>
					<div class="panel-body" style="height: auto;">
						<div class="table-responsive tableFixHead" style=" overflow-x: auto; overflow-y: auto;height: 222px;width: 100%">
							<table class="table">
								<thead class="panel-heading">
									<tr>
										<th class="text-center" >Request Id</th>
										<th class="text-center">Patient Name</th>
										<th class="text-center">Email</th>
										<th class="text-center">Mobile</th>
										<th class="text-center">Address</th>
										<th class="text-center">Disease</th>
										<th class="text-center">Ambulance Id</th>
										<th class="text-center">Source City</th>
										<th class="text-center">Destination City</th>
										<th class="text-center">Ambulance Status</th>
										<!-- <th class="text-center">Created At</th>
										<th class="text-center">Updated At</th> --> 
									</tr>
								</thead>
								<%
									ResultSet resultset = DatabaseConnection
										.getResultFromSqlQuery("select * from tblpatient as p CROSS JOIN tblrequest as r ON p.patient_id = r.patient_id where p.patient_name='" + session.getAttribute("pname") + "'");
								while (resultset.next()) {
								%>
								<tbody>
									<tr class="default">
										<td class="text-center"><%=resultset.getString("request_id")%></td>
										<td class="text-center"><%=resultset.getString("patient_name")%></td>
										<td class="text-center"><%=resultset.getString("patient_email")%></td>
										<td class="text-center"><%=resultset.getString("Patient_mobile")%></td>
										<td class="text-center"><%=resultset.getString("patient_address")%></td>
										<td class="text-center"><%=resultset.getString("patient_disease")%></td>
										<td class="text-center"><%=resultset.getString("ambulance_vehicle_no")%></td>
										<td class="text-center"><%=resultset.getString("source_city")%></td>
										<td class="text-center"><%=resultset.getString("destination_city")%></td>
										<%
											if (resultset.getString("ambulance_status") != null) {
												if (resultset.getString("ambulance_status").equals("Assigned")) {
										%>
										<td class="text-center"><span class="label label-success">Assigned</span></td>
										<%
											} else {
										%>
										<td class="text-center"><span class="label label-danger">Pending</span></td>
										<%
											}
										}
										%>
										<!-- <td class="text-center"><%=resultset.getString("created_at")%></td>
										<td class="text-center"><%=resultset.getString("updated_at")%></td> -->
									</tr>
								</tbody>
								<%
									}
								%>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
<!-- 	</div> -->
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
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>