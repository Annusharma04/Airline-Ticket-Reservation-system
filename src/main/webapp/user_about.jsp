<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String pagename="user_login_pass.jsp"; session.setAttribute("pagename", pagename); %>
    
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
          <li><a href="booking.jsp">Bookings</a></li>
                    <li><a href="coupon_search_u.jsp">Coupon</a></li>
          
          <li><a href="Cancellation.jsp">Cancellation</a></li>          
           <li><a  class="active" href="user_about.jsp">About</a></li>
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


<main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
      <div class="container">
        <h1>About Us</h1>
        <p>Sharma Airlines: Your gateway to extraordinary journeys. Experience seamless travel, exceptional service, and a world of destinations. Elevate your adventures with us, where every flight is a remarkable experience. </p>
      </div>
    </div><!-- End Breadcrumbs -->

       <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
            <img src="assets/img/aeroplane2.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
            <h3>How To Book Cheap Flights Tickets?</h3>
            
            <ul>
              <li><i class="bi bi-check-circle"></i>Book your flight tickets in advance to get the cheapest deals.</li>
              <li><i class="bi bi-check-circle"></i> Be flexible and consider flying during off-peak hours to get cheaper flight tickets.</li>
              <li><i class="bi bi-check-circle"></i>If you got time, try stopover flights as flights with multiple stops are often cheaper.</li>
              <li><i class="bi bi-check-circle"></i> Sign up for Sharma Airlines alerts feature to get notified when tickets go cheaper.</li>
              <li><i class="bi bi-check-circle"></i> Avoid traveling on weekends, as air tickets are usually higher during this time.
              </li>
            </ul>
            

          </div>
        </div>

      </div>
    </section><!-- End About Section -->


    <!-- ======= Counts Section ======= -->
    <section id="counts" class="counts section-bg">
      <div class="container">

        <div class="row counters">

          <div class="col-lg-3 col-6 text-center">
            <span data-purecounter-start="0" data-purecounter-end="1232" data-purecounter-duration="1" class="purecounter"></span>
            <p>Students</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-purecounter-start="0" data-purecounter-end="64" data-purecounter-duration="1" class="purecounter"></span>
            <p>Courses</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-purecounter-start="0" data-purecounter-end="42" data-purecounter-duration="1" class="purecounter"></span>
            <p>Events</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-purecounter-start="0" data-purecounter-end="15" data-purecounter-duration="1" class="purecounter"></span>
            <p>Trainers</p>
          </div>

        </div>

      </div>
    </section><!-- End Counts Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Our Pilots</h2>
          <p> Masters of the Skies</p>
        </div>

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="assets/img/testimonials/Pilot1.jpg" class="testimonial-img" alt="">
                  <h3>Saul Goodman</h3>
                  <h4>Captain (Pilot-in-Command)</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                   Introducing the leader of our crew, the Pilot-in-Command, with an exceptional record, including an airline transport pilot license. With over 30 years of experience.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="assets/img/testimonials/Pilot2.jpg" class="testimonial-img" alt="">
                  <h3>Sara Wilsson</h3>
                  <h4>First Officer (Co-Pilot)</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                      Meet our co-pilot, equipped with an airline transport pilot license and specialized type ratings. With over 8 years of flying under her belt, your safety is our priority.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="assets/img/testimonials/Pilot3.jpg" class="testimonial-img" alt="">
                  <h3>Jena Karlis</h3>
                  <h4>Captain (Pilot-in-Command)</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                   Meet our seasoned Pilot-in-Command, holding the highest certification as an airline transport pilot. With more than 25 years of experience, your flight's safety and comfort are our top priorities.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="assets/img/testimonials/Pilot4.jpg" class="testimonial-img" alt="">
                  <h3>Matt Brandon</h3>
                  <h4>Captain (Pilot-in-Command)</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                    He is an experienced pilot boasts an airline transport pilot license, type ratings, and over 15 years of flight expertise, guaranteeing a safe and reliable journey.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="assets/img/testimonials/Pilot5.jpg" class="testimonial-img" alt="">
                  <h3>John Larson</h3>
                  <h4>First Officer (Co-Pilot)</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                   Introducing our co-pilot, a certified commercial pilot with experience on various aircraft. With 9 years of flight time, you can fly with confidence in our capable crew.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->

  </main><!-- End #main -->





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