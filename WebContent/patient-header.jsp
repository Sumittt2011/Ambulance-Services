<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<style>
		.txterrr:hover{
			color:#ff5050 !important;
		}
	</style>
<header class="header header_style_01" >
	<nav class="megamenu navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="active" href="patient-dashboard.jsp">Home</a></li>
					<li><a class="txterrr"
						href="search-ambulance.jsp">Search Ambulance</a></li>
					<!-- <li><a class="txterrr"
						href="patient-view-ambulances.jsp">View Ambulances</a></li> -->
					<li><a class="txterrr"
						href="patient-view-ambulance-status.jsp">Booking Ambulance
							Status</a></li>
					<li><a class="txterrr"
						href="patient-feedback-complaints.jsp">Feedback/Complaints</a></li>
					<li><a class="txterrr"
						href="details-ambulance-application.jsp">Help</a></li>
					<li class="dropdown"><a class="dropdown-toggle txterrr"
						data-toggle="dropdown" href="#"><span class="caret"></span> My Account</a>
						<ul class="dropdown-menu ">
							<li><a href="patient-profile.jsp" class="txterrr">My Profile</a></li>
							<li><a href="patient-change-password.jsp" class="txterrr">Change Password</a></li>
							<li><a href="logout.jsp" class="txterrr">Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
</header>