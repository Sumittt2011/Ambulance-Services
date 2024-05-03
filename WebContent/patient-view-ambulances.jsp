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


</style>

<body class="host_version" style="background-color: #f2f2f2">
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="patient-header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row pad-botm">
			<div class="col-md-12"><br>
				<h3 class="header-line text-bold">View Ambulance</h3><br>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<!--    Context Classes  -->
				<div class="panel panel-default">

					<!-- <div class="panel-heading">View Ambulance</div> -->

					<!-- <div class="panel-body"> -->
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th class="text-center">#</th>
										<th class="text-center">Ambulance Vehicle No</th>
										<th class="text-center">Ambulance Type</th>
										<th class="text-center">Driver Name</th>
										<th class="text-center">Mobile No</th>
										<th class="text-center">License No</th>
										<th class="text-center">State</th>
										<th class="text-center">City</th>
										<th class="text-center">Created At</th>
										<th class="text-center">Updated At</th>
										<th class="text-center">Vehicle Status</th>
									</tr>
								</thead>
								<%
								ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from tblrequest");
								ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblambulance");
								int id = 1;
								while (resultset.next() && rs.next()) {
								%>
								<tbody>
									<tr class="default">
										<td class="text-center"><%=id++%></td>
										<td class="text-center"><%=resultset.getString("ambulance_vehicle_no")%></td>
										<td class="text-center"><%=resultset.getString("ambulance_type")%></td>
										<td class="text-center"><%=resultset.getString("driver_name")%></td>
										<td class="text-center"><%=resultset.getString("driver_mobile")%></td>
										<td class="text-center"><%=resultset.getString("driver_lincense_no")%></td>
										<td class="text-center"><%=resultset.getString("state")%></td>
										<td class="text-center"><%=resultset.getString("city")%></td>
										<td class="text-center"><%=resultset.getString("created_at")%></td>
										<td class="text-center"><%=resultset.getString("updated_at")%></td>
										
										<%
											if (resultset.getString("status").equals("Added")) {
												if (rs.getString("ambulance_status").equals("Pending")){
										%>
										<td class="text-center"><span class="label label-success">Available</span></td>
										<%
													}
												 else if(rs.getString("ambulance_status").equals("Assigned")){
										%>
										<td class="text-center"><span class="label label-danger">Busy</span></td>
										<%
											}}else{
										%>
										<td class="text-center"><span class="label label-danger">Busy</span></td>
										<%
											}
										%>
										
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
	<br><br><br><br>
	<jsp:include page="footer.jsp"></jsp:include>
	<%
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>