<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String pagename="user_booking_failed.jsp"; session.setAttribute("pagename", pagename); %>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Airline Ticket Reservation System</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons 
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  -->
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

<!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="style.css" rel="stylesheet">
  
  <script>
        function booking_validate(){
            if(document.getElementById("username").value===""){
                alert("Please Enter Username!");
                return false;
            }
            else if(document.getElementById("flight_id").value===""){
                alert("Please Enter Flight Id!");
                return false;
            }
            else if(document.getElementById("no_of_seats").value===""){
                alert("Please Enter Total Number Of Seats");
                return false;
            }
            else if(document.getElementById("adults").value===""){
                alert("Please Enter Number Of Adults!");
                return false;
            }
            else if(document.getElementById("date_of_flight").value===""){
                alert("Please Enter Date Of Flight!");
                return false;
            }
           }
        
    </script>    
  
  
  <style>
  .custom-page-header {
    margin-top: 60px; /* Adjust the value to increase or decrease the distance from the top */
}
  
  .custom-page-header h1{
 font-weight: bold;}  

  .color-text {
        color:#37423b /* Your desired color */;
        font-weight: bold;

}

  .color-text h6, span{
        color:#5f77cf  /* Your desired color */;
        font-weight: bold;

}
  </style>
</head>

<body>
<!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center" id="nav-menu">

      <h1 class="logo me-auto" id="Title"><a href="index.html">Sharma Airlines</a></h1>
      
      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a   href="user_login_pass.jsp">Home</a></li>
          <li><a  href="availability_from_user_booking.jsp">Check Availability</a></li>
          <li><a class="active" href="booking.jsp">Bookings</a></li>
                    <li><a href="coupon_search_u.jsp">Coupon</a></li>
          
          <li><a href="Cancellation.jsp">Cancellation</a></li>          
           <li><a href="user_about.jsp">About</a></li>
          <li><a href="contact_u.jsp">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
      
      
    						<a href="index.jsp" class="get-started-btn">LogOut As<small> 
                                    <%  String U_name=(String)session.getAttribute("username");  
                                        out.print(U_name);  
                                    %>  
                            </small><i class="fa fa-arrow-right ms-3"></i></a>
			 
    
    </div>
  </header><!-- End Header -->



 <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0 custom-page-header" style="   background:linear-gradient(rgba(0, 0, 0, 0.436),rgba(0, 0, 0, 0.09)),url(assets/img/aeroplane1.jpg) top center;">         
          <div class="container-fluid page-header-inner py-5" data-aos="zoom-in" data-aos-delay="100">
            <div class="container text-center pb-5">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Booking</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="user_login_pass.jsp">Home</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Booking</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Page Header End -->

        
        <!--
        
        <h5><span class="text-primary text-uppercase">Your Ticket ID Is ->  </span></h5>
        <h6 type="text" id="mainCaptcha"></h6>
        <p><input type="button" class="btn btn-primary w-75" value="Refresh" id="refresh" onclick="Captcha();"/></p>
        
        -->

        <!-- Booking Start -->
        <div class="container-xxl py-5">
            <div class="container color-text" data-aos="fade-left" data-aos-delay="100">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center  text-uppercase">Tickets Booking</h6>
                    <h1 class="mb-5">Book A <span class=" text-uppercase">Plane Ticket</span></h1>
                </div>
                
                <div class="container newsletter mt-5 wow fadeIn" data-wow-delay="0.1s">
                    <div class="row justify-content-center">
                        <div class="col-lg-10 p-1">
                            <div class="text-center p-1">
                            
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row g-5">
                    <div class="col-lg-6">
                        <div class="row g-3"  data-aos="zoom-in" data-aos-delay="100">
                            <div class="col-6 text-end">
                                <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.1s" src="assets/img/about-1.png" style="margin-top: 25%;">
                            </div>
                            <div class="col-6 text-start">
                                <img class="img-fluid rounded w-100 wow zoomIn" data-wow-delay="0.3s" src="assets/img/about-2.png">
                            </div>
                            <div class="col-6 text-end">
                                <img class="img-fluid rounded w-50 wow zoomIn" data-wow-delay="0.5s" src="assets/img/about-3.png">
                            </div>
                            <div class="col-6 text-start">
                                <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.7s" src="assets/img/about-4.png">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            
                            <form name="m_f" method="post" action="user_booking_validation_check">
                                <div class="row g-3">
                                    
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="username" placeholder="Your User Name" name="username">
                                            <label for="name">Your User Name</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="flight_id" placeholder="Plane Id" name="flight_id">
                                            <label for="name">Provide Plane ID</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="number" class="form-control" id="no_of_seats" placeholder="Total Number Of Seats" name="no_of_seats">
                                            <label for="number">Number of Seats</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <select class="form-select" id="select3" placeholder="Select Ticket Type" name="ticket_type">
                                              <option value="Business Class">Business Class</option>
                                              <option value="First Class">First Class</option>
                                              <option value="Coach Class">Coach Class</option>
                                            </select>
                                            <label for="select3">Select Ticket Type</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="number" class="form-control" id="adults" placeholder="Total Number Of Adults" name="adults">
                                            <label for="adults">Select Number Of Adults</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="number" class="form-control" id="child" placeholder="Total Number Of Child(s)" name="child">
                                            <label for="child">Select Number Of Child(s)</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating date">
                                            <input type="date" class="form-control" placeholder="Date Of Flight" id="date_of_flight" name="date_of_flight">
                                            <label for="checkin">Date Of Flight</label>
                                        </div>
                                    </div>
                                    
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <button class="btn btn-primary w-100 py-3" onclick="return booking_validate();" type="submit">Book Now</button>
                                        </div>
                                    </div>
                                    <div class="row g-4">
                                        <div class="col-md-12 wow fadeInUp" data-wow-delay="0.3s">
                                            <a class="service-item rounded" href="availability_from_user_booking.jsp">
                                            <div class="service-icon bg-transparent  rounded p-1">
                                                <div class="w-100 h-100  rounded d-flex align-items-center justify-content-center">
                                                    <i class="fa fa-question-circle fa-2x "></i>
                                                </div>
                                            </div>
                                            <h5 class=" text-center  mb-3">Plane Id?</h5>
                                            <p class=" text-center text-body mb-0">How To Get My Plane Id??</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                       </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- Booking End -->





<!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>Sharma Airlines</h3>
            <p>
              Main Road <br>
              Haryana,Delhi<br>
              India <br><br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> sharmaairlines@example.com<br>
            </p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Cheap tickets</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Wifi</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Food</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Reschdule Flights</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Offers</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Join Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>

        </div>
      </div>
    </div>

    <div class="container d-md-flex py-4">

      <div class="me-md-auto text-center text-md-start">
        <div class="copyright">
          &copy; Copyright <strong><span>Sharma Airlines</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
          <!-- All the links in the footer should remain intact. -->
          <!-- You can delete the links only if you purchased the pro version. -->
          <!-- Licensing information: https://bootstrapmade.com/license/ -->
          <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/ -->
          Designed by <a href="#">Annu Sharma</a>
        </div>
      </div>
      <div class="social-links text-center text-md-right pt-3 pt-md-0">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>