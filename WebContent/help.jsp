<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet">
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

<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
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
	<jsp:include page="header.jsp"></jsp:include>

	<div id="support" class="section wb">
		<div class="container">
			<div class="section-title text-center">
				<h3>Need Help? Sure we are Online!</h3>
			</div>
			<%
				String help = (String) session.getAttribute("message");
				if (help != null) {
				session.removeAttribute("message");
			%>
			<div class="alert alert-info" id="info"><strong><%=help%></strong></div>
			<%
				}
			%>
			<div class="row">
				<div class="col-md-12">
					<div class="contact_form">
						<div id="message"></div>
						<form id="contactform" class="row" action="ContactHelp"
							name="contactform" method="post">
							<fieldset class="row-fluid">
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="first_name" id="first_name"
										class="form-control" placeholder="First Name">
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="last_name" id="last_name"
										class="form-control" placeholder="Last Name">
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<input type="email" name="email" id="email"
										class="form-control" placeholder="Your Email">
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="phone" id="phone" class="form-control"
										placeholder="Your Phone">
								</div>

								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<textarea class="form-control" name="comments" id="comments"
										rows="6" placeholder="Give us more details.."></textarea>
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
									<button type="submit" value="SEND" id="submit"
										class="btn btn-light btn-radius btn-brd grd1 btn-block">Submit
										It</button>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3781.9818770863576!2d73.76539687465343!3d18.574855767514816!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2b949794ed0bd%3A0x56624695f81f245f!2sGenba%20Sopanrao%20Moze%20College%20Of%20Engineering!5e0!3m2!1sen!2sin!4v1707317959589!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
	<br><br><jsp:include page="footer.jsp"></jsp:include>
	<a href="#" id="scroll-to-top" class="dmtop global-radius"><i
		class="fa fa-angle-up"></i></a>

	<!-- ALL JS FILES -->
	<script src="js/all.js"></script>
	<!-- <script
		src="https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyCKjLTXdq6Db3Xit_pW_GK4EXuPRtnod4o"></script> -->
	<!-- Mapsed JavaScript -->
	<script src="js/mapsed.js"></script>
	<script src="js/01-custom-places-example.js"></script>
	<!-- ALL PLUGINS -->
	<script src="js/custom.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#info').delay(3000).show().fadeOut('slow');
		});
	</script>
</body>
</html>