<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String pagename="availability.jsp"; session.setAttribute("pagename", pagename); %>
    
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


  

 
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            padding: 12px 16px;
            display: block;
            text-decoration: none;
            color: #333;
        }

        .dropdown-content a:hover {
            background-color: #ddd;
        }

        .dropdown:hover .dropdown-content {
            display: block;
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
          <li><a   href="index.jsp">Home</a></li>
          <li><a  class="active" href="availability.jsp">Check Availability</a></li>
          <li><a href="booking_error_msg.jsp">Bookings</a></li>
          
          
                 <div class="dropdown">
          
         				 <li><a href="#">Login/Register</a></li>
         				 <div class="dropdown-content">
            <a href="Login.jsp">Login</a>
            <a href="Register.jsp">Register</a>
        </div>
    </div>
          <li><a href="about.jsp">About</a></li>
          <li><a href="contact.jsp">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
      
      
    <a href="adminlogin.jsp" class="get-started-btn"> Admin Panel<i class="fa fa-arrow-right ms-3"></i></a>
			 
    
    </div>
  </header><!-- End Header -->


 <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0 custom-page-header" style="   background:linear-gradient(rgba(0, 0, 0, 0.436),rgba(0, 0, 0, 0.09)),url(assets/img/aeroplane1.jpg) top center;">         
            <div class="container-fluid page-header-inner py-5"  data-aos="zoom-in" data-aos-delay="100">
                <div class="container text-center pb-5">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Search Flights</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="admin_login_pass.jsp">Home</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Search Flights</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Page Header End -->

        <!-- Booking Start -->
        <div class="container-fluid booking pb-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container"  data-aos="zoom-in" data-aos-delay="100">
                <div class="bg-white shadow" style="padding: 35px;">
                    <form method="post" action="search_success.jsp">
                        <div class="row g-2">
                        <div class="col-md-10">
                            <h1>Show All Flight Details From Database</h1>
                        </div>
                        <div class="col-md-2">
                            <button class="btn btn-primary w-100">Search</button>
                        </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Booking End -->

        <!-- Searching Start -->
        <div class="container-xxl py-5">
            <div class="container" data-aos="fade-left" data-aos-delay="100">
                <div class="row g-5 color-text">
                    <div class="col-lg-6">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            <form method="post" action="search_flight_by_fno">
                                <div class="row g-3">
                                    <h3 class="mb-4 text-center">Search Flights<span class="text-uppercase"> <small>By Flight Number</small></span></h3>
                                    <h6 class="text-start  text-center text-uppercase"> <small>Search Flights By Flight Number</small> </h6>
                                     
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="fname" name="flight_no" placeholder="Flight Number">
                                            <label for="fname">Flight Number</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <button class="btn btn-primary w-100 py-3" type="submit">Search</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                    <div class="col-lg-6">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            <form method="post" action="search_flight_by_id">
                                <div class="row g-3">
                                    <h3 class="mb-4 text-center">Search Flights<span class=" text-uppercase"> <small>By Flight ID</small></span></h3>
                                    <h6 class="text-start  text-uppercase text-center"> <small>Search Flights By Flight ID </small></h6>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="flight_id" name="flight_id" placeholder="Flight ID">
                                            <label for="flight_id">Flight ID</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <button class="btn btn-primary w-100 py-3" type="submit">Search</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                    
                    
                    <div class="col-lg-12" style="margin-top: 5%;">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            <form method="post" action="search_flight_by_citys">
                                <div class="row g-2">
                                    <h3 class="mb-4 text-center">Search Flights<span class=" text-uppercase"> <small>By From-To Citys</small></span></h3>
                                    <h6 class="text-start text-uppercase text-center"> <small>Search Flights By Citys </small></h6>
                                    <div class="col-md-4">
                                        <label>From City</label>
                                        <select class="form-select" name="from_city" id="from_city">
                                            <option selected>Departure City Name</option>
                                                <option value="Ahmedabad Airport - AMD">Ahmedabad Airport - AMD</option>
                                                <option value="Amritsar Airport - LUH">Amritsar Airport - LUH</option>
                                                <option value="Bagdogra Airport - IXB">Bagdogra Airport - IXB</option>
                                                <option value="Bengaluru International Airport - BLR">Bengaluru International Airport - BLR</option>
                                                <option value="Bhopal Airport - BHO">Bhopal Airport - BHO</option>
                                                <option value="Bhubaneswar Airport - BBI">Bhubaneswar Airport - BBI</option>
                                                <option value="Birsa Munda International Airport - IXR">Birsa Munda International Airport - IXR</option>
                                                <option value="Chandigarh Airport - IXC">Chandigarh Airport - IXC</option>
                                                <option value="Chennai International Airport - MAA">Chennai International Airport - MAA</option>
                                                <option value="Chhatrapati Shivaji International Airport - BOM">Chhatrapati Shivaji International Airport - BOM</option>
                                                <option value="Cochin International Airport - COK">Cochin International Airport - COK</option>
                                                <option value="Cooch Behar Airport - COH">Cooch Behar Airport - COH</option>
                                                <option value="Dabok Airport - UDR">Dabok Airport - UDR</option>
                                                <option value="Dabolim Airport - GOI">Dabolim Airport - GOI</option>
                                                <option value="Darjeeling Airport - DAI">Darjeeling Airport - DAI</option>
                                                <option value="Dehra Dun Airport - DED">Dehra Dun Airport - DED</option>
                                                <option value="Devi Ahilyabai Holkar Airport - IDR">Devi Ahilyabai Holkar Airport - IDR</option>
                                                <option value="Dhanbad Airport - DBD">Dhanbad Airport - DBD</option>
                                                <option value="Gaya Airport - GAY">Gaya Airport - GAY</option>
                                                <option value="Hyderabad International Airport - HYD">Hyderabad International Airport - HYD</option>
                                                <option value="Indira Gandhi International Airport - DEL">Indira Gandhi International Airport - DEL</option>
                                                <option value="Jabalpur Airport - JLR">Jabalpur Airport - JLR</option>
                                                <option value="Jagdalpur Airport - JGB">Jagdalpur Airport - JGB</option>
                                                <option value="Jaisalmer Airport - JSA">Jaisalmer Airport - JSA</option>
                                                <option value="Jodhpur Airport - JDH">Jodhpur Airport - JDH</option>
                                                <option value="Kanpur Airport - KNU">Kanpur Airport - KNU</option>
                                                <option value="Kota Airport - KTU">Kota Airport - KTU</option>
                                                <option value="Lohegaon Airport - PNQ">Lohegaon Airport - PNQ</option>
                                                <option value="Malda Airport - LDA">Malda Airport - LDA</option>
                                                <option value="Mysore Airport - MYQ">Mysore Airport - MYQ</option>
                                                <option value="Netaji Subhash Chandra Bose International Airport - CCU">Netaji Subhash Chandra Bose International Airport - CCU</option>
                                                <option value="Patna Airport - PAT">Patna Airport - PAT</option>
                                                <option value="Pondicherry Airport - PNY">Pondicherry Airport - PNY</option>
                                                <option value="Raipur Airport - RPR">Raipur Airport - RPR</option>
                                                <option value="Rajkot Airport - RAJ">Rajkot Airport - RAJ</option>
                                                <option value="Rourkela Airport - RRK">Rourkela Airport - RRK</option>
                                                <option value="Satwari Airport - IXJ">Satwari Airport - IXJ</option>
                                                <option value="Simla Airport - SLV">Simla Airport - SLV</option>
                                                <option value="Singerbhil Airport - IXA">Singerbhil Airport - IXA</option>
                                                <option value="Sonari Airport - IXW">Sonari Airport - IXW</option>
                                                <option value="Sonegaon Airport - NAG">Sonegaon Airport - NAG</option>
                                                <option value="Srinagar Airport - SXR">Srinagar Airport - SXR</option>
                                                <option value="Surat Airport - STV">Surat Airport - STV</option>
                                                <option value="Tirupati Airport - TIR">Tirupati Airport - TIR</option>
                                                <option value="Trichy Airport - TRZ">Trichy Airport - TRZ</option>
                                                <option value="Varanasi Airport - VNS">Varanasi Airport - VNS</option>
                                                <option value="Warangal Airport - WGC">Warangal Airport - WGC</option>
                                        </select>
                                        
                                    </div>
                                    <div class="col-md-4">
                                        <label>To City</label>
                                        <select class="form-select" name="to_city" id="to_city">
                                            <option selected>Arrival City Name</option>
                                                <option value="Ahmedabad Airport - AMD">Ahmedabad Airport - AMD</option>
                                                <option value="Amritsar Airport - LUH">Amritsar Airport - LUH</option>
                                                <option value="Bagdogra Airport - IXB">Bagdogra Airport - IXB</option>
                                                <option value="Bengaluru International Airport - BLR">Bengaluru International Airport - BLR</option>
                                                <option value="Bhopal Airport - BHO">Bhopal Airport - BHO</option>
                                                <option value="Bhubaneswar Airport - BBI">Bhubaneswar Airport - BBI</option>
                                                <option value="Birsa Munda International Airport - IXR">Birsa Munda International Airport - IXR</option>
                                                <option value="Chandigarh Airport - IXC">Chandigarh Airport - IXC</option>
                                                <option value="Chennai International Airport - MAA">Chennai International Airport - MAA</option>
                                                <option value="Chhatrapati Shivaji International Airport - BOM">Chhatrapati Shivaji International Airport - BOM</option>
                                                <option value="Cochin International Airport - COK">Cochin International Airport - COK</option>
                                                <option value="Cooch Behar Airport - COH">Cooch Behar Airport - COH</option>
                                                <option value="Dabok Airport - UDR">Dabok Airport - UDR</option>
                                                <option value="Dabolim Airport - GOI">Dabolim Airport - GOI</option>
                                                <option value="Darjeeling Airport - DAI">Darjeeling Airport - DAI</option>
                                                <option value="Dehra Dun Airport - DED">Dehra Dun Airport - DED</option>
                                                <option value="Devi Ahilyabai Holkar Airport - IDR">Devi Ahilyabai Holkar Airport - IDR</option>
                                                <option value="Dhanbad Airport - DBD">Dhanbad Airport - DBD</option>
                                                <option value="Gaya Airport - GAY">Gaya Airport - GAY</option>
                                                <option value="Hyderabad International Airport - HYD">Hyderabad International Airport - HYD</option>
                                                <option value="Indira Gandhi International Airport - DEL">Indira Gandhi International Airport - DEL</option>
                                                <option value="Jabalpur Airport - JLR">Jabalpur Airport - JLR</option>
                                                <option value="Jagdalpur Airport - JGB">Jagdalpur Airport - JGB</option>
                                                <option value="Jaisalmer Airport - JSA">Jaisalmer Airport - JSA</option>
                                                <option value="Jodhpur Airport - JDH">Jodhpur Airport - JDH</option>
                                                <option value="Kanpur Airport - KNU">Kanpur Airport - KNU</option>
                                                <option value="Kota Airport - KTU">Kota Airport - KTU</option>
                                                <option value="Lohegaon Airport - PNQ">Lohegaon Airport - PNQ</option>
                                                <option value="Malda Airport - LDA">Malda Airport - LDA</option>
                                                <option value="Mysore Airport - MYQ">Mysore Airport - MYQ</option>
                                                <option value="Netaji Subhash Chandra Bose International Airport - CCU">Netaji Subhash Chandra Bose International Airport - CCU</option>
                                                <option value="Patna Airport - PAT">Patna Airport - PAT</option>
                                                <option value="Pondicherry Airport - PNY">Pondicherry Airport - PNY</option>
                                                <option value="Raipur Airport - RPR">Raipur Airport - RPR</option>
                                                <option value="Rajkot Airport - RAJ">Rajkot Airport - RAJ</option>
                                                <option value="Rourkela Airport - RRK">Rourkela Airport - RRK</option>
                                                <option value="Satwari Airport - IXJ">Satwari Airport - IXJ</option>
                                                <option value="Simla Airport - SLV">Simla Airport - SLV</option>
                                                <option value="Singerbhil Airport - IXA">Singerbhil Airport - IXA</option>
                                                <option value="Sonari Airport - IXW">Sonari Airport - IXW</option>
                                                <option value="Sonegaon Airport - NAG">Sonegaon Airport - NAG</option>
                                                <option value="Srinagar Airport - SXR">Srinagar Airport - SXR</option>
                                                <option value="Surat Airport - STV">Surat Airport - STV</option>
                                                <option value="Tirupati Airport - TIR">Tirupati Airport - TIR</option>
                                                <option value="Trichy Airport - TRZ">Trichy Airport - TRZ</option>
                                                <option value="Varanasi Airport - VNS">Varanasi Airport - VNS</option>
                                                <option value="Warangal Airport - WGC">Warangal Airport - WGC</option>
                                        </select>
                                    </div>
                                    <div class="col-md-4">
                                        <button class="btn btn-primary w-100 py-3" type="submit">Search</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        

        
        





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