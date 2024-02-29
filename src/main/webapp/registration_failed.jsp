<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
 
  .register-portal-text
  {
    color:#37423b /* Your desired color */;
        font-weight: bold;
  
  }
 
 .custom-page-header {
    margin-top: 60px; /* Adjust the value to increase or decrease the distance from the top */
}
  
  .custom-page-header h1{
 font-weight: bold;}  
 
 
  
 
 .welcome-text {
    color: #37423b;
        display: inline-block;
    
}

.welcome-text span{
    /* Assuming you want to keep the color of "Sharma Airlines" unchanged */
    color:#5f77cf  /*Your desired color */;
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
          <li><a  href="index.jsp">Home</a></li>
          <li><a  href="availability.jsp">Check Availability</a></li>
          <li><a href="booking_error_msg.jsp">Bookings</a></li>
          
          
                 <div class="dropdown">
          
         				 <li><a  class="active" href="about.html">Login/Register</a></li>
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
      
      
    <a href="#" class="get-started-btn"> Admin Panel</a>
			 
    
    </div>
  </header><!-- End Header -->




  <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0 custom-page-header" style="   background:linear-gradient(rgba(0, 0, 0, 0.436),rgba(0, 0, 0, 0.09)),url(assets/img/aeroplane1.jpg) top center;">         
            <div class="container-fluid page-header-inner py-5" data-aos="zoom-in" data-aos-delay="100">
                <div class="container text-center pb-5">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Retry Registration</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="index.jsp" style="font-weight: bold;">Home</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Register</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Page Header End -->

        <!---Login Section -->
        <div class="container-xxl py-5" data-aos="fade-left" data-aos-delay="100">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-6">
                        <div class="row g-3">
                            <div class="col-6 text-end">
                                <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.1s" src="assets/img/rgstr1.png" style="margin-top: 25%;">
                            </div>
                            <div class="col-6 text-start">
                                <img class="img-fluid rounded w-100 wow zoomIn" data-wow-delay="0.3s" src="assets/img/rgstr2.png">
                            </div>
                            <div class="col-6 text-end">
                                <img class="img-fluid rounded w-50 wow zoomIn" data-wow-delay="0.5s" src="assets/img/rgstr3.png">
                            </div>
                            <div class="col-6 text-start">
                                <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.7s" src="assets/img/rgstr4.png">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6" data-aos="zoom-in" data-aos-delay="100">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            <form method="post" action="registration">
                                <div class="row g-3">
                                    <h1 class="mb-4 welcome-text">Welcome to <span class=" text-uppercase">Sharma Airlines</span></h1>
                                    <h6 class="text-start text-uppercase register-portal-text"> New Registration Portal </h6>
                                    <div class="col-md-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="fullname" id="fullname" placeholder="Your Full Name">
                                            <label for="fullname">Your Full Name</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="username" id="username" placeholder="Enter Your Username">
                                            <label for="username">Enter Your Username</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="password" id="password" placeholder="Enter Your Password">
                                            <label for="password">Enter Your Password</label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-floating">
                                            <select class="form-select" name="countryCode" id="countryCode">
                                                <option data-countryCode="IN" value="91" Selected>India (+91)</option>
                                                  </select>
                                            <label>Enter Your Country</label>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="phno" id="phno" placeholder="Enter Your Number">
                                            <label for="phno">Enter Your Number</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="email" class="form-control" name="email_address" id="email_address" placeholder="Enter Your Email">
                                            <label for="email_address">Enter User Email</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                        <select class="form-select" name="state" id="state">
                                        <option value="Andhra Pradesh">Andhra Pradesh</option>
                                        <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                        <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                        <option value="Assam">Assam</option>
                                        <option value="Bihar">Bihar</option>
                                        <option value="Chandigarh">Chandigarh</option>
                                        <option value="Chhattisgarh">Chhattisgarh</option>
                                        <option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
                                        <option value="Daman and Diu">Daman and Diu</option>
                                        <option value="Delhi">Delhi</option>
                                        <option value="Lakshadweep">Lakshadweep</option>
                                        <option value="Puducherry">Puducherry</option>
                                        <option value="Goa">Goa</option>
                                        <option value="Gujarat">Gujarat</option>
                                        <option value="Haryana">Haryana</option>
                                        <option value="Himachal Pradesh">Himachal Pradesh</option>
                                        <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                        <option value="Jharkhand">Jharkhand</option>
                                        <option value="Karnataka">Karnataka</option>
                                        <option value="Kerala">Kerala</option>
                                        <option value="Madhya Pradesh">Madhya Pradesh</option>
                                        <option value="Maharashtra">Maharashtra</option>
                                        <option value="Manipur">Manipur</option>
                                        <option value="Meghalaya">Meghalaya</option>
                                        <option value="Mizoram">Mizoram</option>
                                        <option value="Nagaland">Nagaland</option>
                                        <option value="Odisha">Odisha</option>
                                        <option value="Punjab">Punjab</option>
                                        <option value="Rajasthan">Rajasthan</option>
                                        <option value="Sikkim">Sikkim</option>
                                        <option value="Tamil Nadu">Tamil Nadu</option>
                                        <option value="Telangana">Telangana</option>
                                        <option value="Tripura">Tripura</option>
                                        <option value="Uttar Pradesh">Uttar Pradesh</option>
                                        <option value="Uttarakhand">Uttarakhand</option>
                                        <option value="West Bengal">West Bengal</option>
                                        </select>
                                            <label>Enter Your State Name</label>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="city" id="city" placeholder="Enter Your City">
                                            <label for="city">Enter User City</label>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-floating">
                                            <input type="number" class="form-control" name="pincode" id="pincode" placeholder="Enter Your Pincode">
                                            <label for="pincode">Enter User Pincode</label>
                                        </div>
                                    </div>
                                    
                                    
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100 py-3" type="submit">New Registration >></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!---Login Section -->




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
  <script>
        alert(" Registration Failed!! Try again with different username!");
        </script>
    

</body>

</html>