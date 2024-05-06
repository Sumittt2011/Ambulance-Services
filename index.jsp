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
<link rel="shortcut icon" href="./WebContent/images/staff.png" type="image/x-icon" />
<link rel="apple-touch-icon" href="./WebContent/images/apple-touch-icon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="./WebContent/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet">
<!-- Site CSS -->
<link rel="stylesheet" href="./WebContent/style.css">
<!-- Colors CSS -->
<link rel="stylesheet" href="./WebContent/css/colors.css">
<!-- ALL VERSION CSS -->
<link rel="stylesheet" href="./WebContent/css/versions.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="./WebContent/css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="./WebContent/css/custom.css">

<!-- Modernizer for Portfolio -->
<script src="./WebContent/js/modernizer.js"></script>

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
</head>
<body class="host_version" style="width: auto;">
	<jsp:include page="header.jsp"></jsp:include>
	<div id="bootstrap-touch-slider"
		class="carousel bs-slider fade  control-round indicators-line"
		data-ride="carousel" data-pause="hover" data-interval="false">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#bootstrap-touch-slider" data-slide-to="0"
				class="active"></li>
			<li data-target="#bootstrap-touch-slider" data-slide-to="1"></li>
			<li data-target="#bootstrap-touch-slider" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div id="home" class="first-section"
					style="background-image: url('uploads/123.jpg');background-repeat: no-repeat;">
					<div class="container">
						<div class="row">
							<div class="col-md-12 col-sm-12 text-center">
								<div class="big-tagline">
									<h2 data-animation="animated zoomInRight">
										<strong>Ambulance Services</strong>
									</h2>
									<p class="lead" data-animation="animated fadeInLeft">Not
										everybody would choose to be a firefighter or an ambulance
										driver.</p>
								</div>
							</div>
						</div>
						<!-- end row -->
					</div>
					<!-- end container -->
				</div>
				<!-- end section -->
			</div>
			<div class="item">
				<div id="home" class="first-section"
					style="background-image: url('uploads/ambu1.png'); background-repeat: no-repeat;">
					<div class="container">
						<div class="row">
							<div class="col-md-12 col-sm-12 text-center">
								<div class="big-tagline">
									<!-- <img src="images/logos/ambulance.jpg" alt="image"> -->
									<h2 data-animation="animated zoomInRight">
										<strong>Ambulance Services</strong>
									</h2>
									<p class="lead" data-animation="animated fadeInLeft">Now
										the ambulance is always ready; the paramedics are always
										ready.</p>
								</div>
							</div>
						</div>
						<!-- end row -->
					</div>
					<!-- end container -->
				</div>
				<!-- end section -->
			</div>
			<div class="item">
				<div id="home" class="first-section"
					style="background-image: url('uploads/3.jpg');">
					<div class="container">
						<div class="row">
							<div class="col-md-12 col-sm-12 text-center">
								<div class="big-tagline">
									<!-- <img src="images/logos/logo-hosting.png" alt="image"> -->
									<h2 data-animation="animated zoomInRight">
										<strong>Ambulance Services</strong>
									</h2>
									<p class="lead" data-animation="animated fadeInLeft">People
										have more fun if they don't eat so much they have to be taken
										home in an ambulance. </p>
								</div>
							</div>
						</div>
						<!-- end row -->
					</div>
					<!-- end container -->
				</div>
				<!-- end section -->
			</div>
			<!-- Left Control -->
			<a class="left carousel-control" href="#bootstrap-touch-slider"
				role="button" data-slide="prev"> <span class="fa fa-angle-left"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a>

			<!-- Right Control -->
			<a class="right carousel-control" href="#bootstrap-touch-slider"
				role="button" data-slide="next"> <span class="fa fa-angle-right"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</div>

		<div id="overviews" class="section wb">
		<div class="container">
			
			<!-- end title -->

			<div class="row">
				<div class="col-md-6">
					<div class="message-box">
						<h4>Ambulance Services</h4>
						<p class="lead">It is used for patients to, from or between places of medical treatment, such as hospital, dialysis center, Medical Appointments for non-urgent/ emergency care. Main aim of all such transfers is to maintain the continuity of medical care.</p>
					</div>
					<!-- end messagebox -->
				</div>
				<!-- end col -->

				<div class="col-md-6">
					<div class="post-media wow fadeIn">
						<img src="images/logos/ambulance1.png" alt=""
							class="img-responsive img-rounded">
					</div>
					<!-- end media -->
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->

			<hr class="invis">

			<!-- <div class="row">
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="icon-wrapper wow fadeIn" data-wow-duration="1s"
						data-wow-delay="0.2s">
						<i class="flaticon-server global-radius effect-1 alignleft"></i>
						<h3>Collective Ambulance</h3>
					</div>
					end icon-wrapper
				</div>
				end col

				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="icon-wrapper wow fadeIn" data-wow-duration="1s"
						data-wow-delay="0.6s">
						<i class="flaticon-server global-radius effect-1 alignleft"></i>
						<h3>Individual Ambulance</h3>
					</div>
					end icon-wrapper
				</div>
				end col

				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="icon-wrapper wow fadeIn" data-wow-duration="1s"
						data-wow-delay="0.4s">
						<i class="flaticon-server global-radius effect-1 alignleft"></i>
						<h3>Mobile ICU Ambulance</h3>
					</div>
					end icon-wrapper
				</div>
				end col
			</div> -->
			<!-- end row -->

			<hr class="hr2">

			<!-- <div class="row">
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="icon-wrapper wow fadeIn" data-wow-duration="1s"
						data-wow-delay="0.2s">
						<i class="flaticon-server global-radius effect-1 alignleft"></i>
						<h3>Basic Life Support Ambulance</h3>
					</div>
					end icon-wrapper
				</div>
				end col

				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="icon-wrapper wow fadeIn" data-wow-duration="1s"
						data-wow-delay="0.4s">
						<i class="flaticon-server global-radius effect-1 alignleft"></i>
						<h3>Neonatal Incubator</h3>
					</div>
					end icon-wrapper
				</div>
				end col

				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="icon-wrapper wow fadeIn" data-wow-duration="1s"
						data-wow-delay="0.6s">
						<i class="flaticon-server global-radius effect-1 alignleft"></i>
						<h3>Cardiac Ambulance</h3>
					</div>
					end icon-wrapper
				</div>
				end col
			</div> -->
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->
<div class="section-title row text-center">
				<div class="col-md-8 col-md-offset-2">
					<h3>About Us</h3>
					<p class="lead">It is used for patients to, from or between places of medical treatment, such as hospital, dialysis center, Medical Appointments for non-urgent/ emergency care. Main aim of all such transfers is to maintain the continuity of medical care.</p>
				</div>
			</div>
	<!-- end section -->
	<jsp:include page="./WebContent/footer.jsp"></jsp:include>
	<!-- end copyrights -->

	<a href="#" id="scroll-to-top" class="dmtop global-radius"><i
		class="fa fa-angle-up"></i></a>

	<!-- ALL JS FILES -->
	<script src="js/all.js"></script>
	<!-- ALL PLUGINS -->
	<script src="js/custom.js"></script>

</body>
</html>
