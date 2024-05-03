<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.util.*" %>
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


</style>

<body class="host_version">
	<%
	
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="driver-header.jsp"></jsp:include>
	<div class="container-fluid">
		<!-- <div class="row pad-botm">
			<div class="col-md-12"><br>
				<h4 class="header-line">Patients Request For Ambulance</h4>
			</div>
		</div> -->
		<div class="row">
			<div class="col-md-12">
				<!--    Context Classes  -->
				 <div class="panel panel-default">

					<!-- <div class="panel-heading"> --><h3>Patients Request For Ambulance<h3></div>

					<!-- <div class="panel-body"> -->
						<div class="table-responsive" style=" overflow-x: auto; overflow-y: auto;height: 222px;width: 100%">
							<table class="table">
								<thead>
									<tr>
										<th>#</th>
										<th>Request Id</th>
										<th>Patient Id</th>
										<th>Patient Name</th>
										<th>Email Id</th>
										<th>Mobile</th>
										<th>Disease</th>
										<th>Ambulance Id</th>
										<th>Source City</th>
										<th>Destination City</th>
										<th>Status</th>
										<th>Action</th> 
									</tr>
								</thead>
								<%
									int id=1;
									String avn = null;
								    //String did = null;
									ResultSet rs = DatabaseConnection.getResultFromSqlQuery("SELECT a.ambulance_vehicle_no, d.uname, d.driver_name FROM tblambulance as a cross JOIN tbldriver as d ON a.driver_id = d.driver_id WHERE d.driver_name = '"+ session.getAttribute("dname") +"'");
									
									while (rs.next()) {
										avn = rs.getString("ambulance_vehicle_no");
										/*System.out.println("avn " + avn);*/
									
									ResultSet resultset = null;
									
									 resultset = DatabaseConnection.getResultFromSqlQuery("SELECT * FROM tblpatient p CROSS JOIN tblrequest as r ON p.patient_id = r.patient_id CROSS JOIN tblambulance as a ON r.ambulance_vehicle_no = a.ambulance_vehicle_no CROSS JOIN tbldriver as d ON a.driver_id = d.driver_id WHERE r.sDel = '0' and a.ambulance_vehicle_no = '" + avn + "'");
									while (resultset.next()) {
								%>
								<tbody>
									<tr class="default">
										<td><%=id++%></td>
										<td><%=resultset.getString("request_id")%></td>
										<td><%=resultset.getString("patient_id")%></td>
										<td><%=resultset.getString("patient_name")%></td>
										<td><%=resultset.getString("patient_email")%></td>
										<td><%=resultset.getString("Patient_mobile")%></td>
										<td><%=resultset.getString("patient_disease")%></td>
										<td><%=resultset.getString("ambulance_vehicle_no")%></td>
										<td><%=resultset.getString("source_city")%></td>
										<td><%=resultset.getString("destination_city")%></td>
										  <%
											if (resultset.getString("ambulance_status").equals("Assigned")) {
										%>
										<td><span class="label label-success">Assigned</span></td>
										<%
											} else {
										%>
										<td><span class="label label-danger">Pending</span></td>
										<%
											}
										%>
										<%
											if (resultset.getString("ambulance_status").equals("Assigned")) {
										%>
										<td><a
											href="ManagePatientsAmbulanceRequest?id=<%=resultset.getString("ambulance_vehicle_no")%>&requestId=<%=resultset.getString("request_id")%>"><button
													class="btn btn-danger"
													onClick="return confirm('Are you sure, you want to cancel ambulance?');">Cancel</button></a>
										</td>
										<%
											} else if((resultset.getString("ambulance_status").equals("Pending"))){
										%>
										<td><a
											href="ManagePatientsAmbulanceRequest?id=<%=resultset.getString("ambulance_vehicle_no")%>&requestId=<%=resultset.getString("request_id")%>"><button
													class="btn btn-primary"
													onClick="return confirm('Are you sure, you want to assigned ambulance to patient?');">Assign</button></a>
										</td>
										<%
											}
										%>  
									</tr>
								</tbody>
								<%
									}
									}
								%>
							</table>
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
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
	<%
		} else {
			response.sendRedirect("index.jsp");
		}
	
	%> 
</body>
</html>