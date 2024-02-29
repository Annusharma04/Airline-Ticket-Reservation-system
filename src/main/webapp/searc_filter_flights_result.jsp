<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html lang="en">
<% String pagename="searc_filter_flights_result.jsp"; session.setAttribute("pagename", pagename); %>

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

		.search-text span,h6{
        color:#37423b /* Your desired color */;
        font-weight: bold;

}
 
 
 
  div.scroll {
        margin: 4%;
        padding: 4px;
        width: 90%;
        overflow: auto;
        overflow-x: auto;
        overflow-y: auto;
        white-space: nowrap;
        scrollbar-color: #d4aa70 #e4e4e4;
        scrollbar-width: thin;
    }
    
    div.scroll::-webkit-scrollbar {
        width: 2px;               /* width of the entire scrollbar */
     }

    div.scroll::-webkit-scrollbar-track {
        background: #5f77cf;        /* color of the tracking area */
    }

    div.scroll::-webkit-scrollbar-thumb {
        background-color: #37423b;    /* color of the scroll thumb */
        border-radius: 20px;       /* roundness of the scroll thumb */
        border: 3px solid white;  /* creates padding around scroll thumb */
    }
    
    table, th, td {
        border: 1px solid black;
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
          <li><a class="active" href="availability.jsp">Check Availability</a></li>
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
         <div class="container-fluid page-header mb-5 p-0 custom-page-header" style="background:linear-gradient(rgba(0, 0, 0, 0.436),rgba(0, 0, 0, 0.09)),url(assets/img/aeroplane1.jpg) top center;">         
            <div class="container-fluid page-header-inner py-5" data-aos="zoom-in" data-aos-delay="100" >
               <div class="container text-center pb-5">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Update Flight Details</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                            <li class="breadcrumb-item text-white" aria-current="page">Update Flight Details</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Page Header End -->

        <div class="container-xxl py-2 search-text">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s" data-aos="zoom-in" data-aos-delay="100">
                <h6 class="section-title text-center  text-uppercase">Congrats!</h6>
                <h1 class="mb-3">Showing Results <span class=" text-uppercase">For the Flight</span></h1>
            </div>
        </div>
        
               <h2 align="center"><font><strong>Showing Search Results
            
        </strong></font></h2>
        <div class="scroll" data-aos="zoom-in" data-aos-delay="100">
            <table class="section-title text-center  text-uppercase" align="center" cellpadding="5" cellspacing="5">
                <tr>
                
                </tr>
                <tr  style="color:white" bgcolor="#5f77cf">
                <td><b>flight_id</b></td>
                <td><b>flight_no</b></td>
                <td><b>flight_name</b></td>
                <td><b>from_city</b></td>
                <td><b>to_city</b></td>
                <td><b>date_of_flight</b></td>
                <td><b>flight_arrival_time</b></td>
                <td><b>flight_reach_time</b></td>
                <td><b>duration</b></td>
                <td><b>first_class_seat</b></td>
                <td><b>first_class_seat_booked</b></td>
                <td><b>first_class_seat_aval</b></td>
                <td><b>buss_class_seat</b></td>
                <td><b>buss_class_seat_booked</b></td>
                <td><b>buss_class_seat_aval</b></td>
                <td><b>eco_class_seat</b></td>
                <td><b>eco_class_seat_booked</b></td>
                <td><b>eco_class_seat_aval</b></td>
                <td><b>first_class_price</b></td>
                <td><b>buss_class_price</b></td>
                <td><b>eco_class_price</b></td>
                </tr>
                <%
                int count = 0;
                //String color = "Blue";
                if (request.getAttribute("piList") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("piList");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
                        count++;
                        ArrayList pList = (ArrayList) itr.next();
                    
                %>
                
                <tr>
                    <td><center><%=pList.get(0)%></center></td>
                    <td><center><%=pList.get(1)%></center></td>
                    <td><center><%=pList.get(2)%></center></td>
                    <td><center><%=pList.get(3)%></center></td>
                    <td><center><%=pList.get(4)%></center></td>
                    <td><center><%=pList.get(5)%></center></td>
                    <td><center><%=pList.get(6)%></center></td>
                    <td><center><%=pList.get(7)%></center></td>
                    <td><center><%=pList.get(8)%></center></td>
                    <td><center><%=pList.get(9)%></center></td>
                    <td><center><%=pList.get(10)%></center></td>
                    <td><center><%=pList.get(11)%></center></td>
                    <td><center><%=pList.get(12)%></center></td>
                    <td><center><%=pList.get(13)%></center></td>
                    <td><center><%=pList.get(14)%></center></td>
                    <td><center><%=pList.get(15)%></center></td>
                    <td><center><%=pList.get(16)%></center></td>
                    <td><center><%=pList.get(17)%></center></td>
                    <td><center>RS <%=pList.get(18)%>/-</center></td>
                    <td><center>RS <%=pList.get(19)%>/-</center></td>
                    <td><center>RS <%=pList.get(20)%>/-</center></td>
                    
                </tr>
                    <%
                            }
                        }
                        if (count == 0) {
                            %>
                        <tr>
                            <td colspan=21 align="center"><b>No Record Found..</b></td>
                        </tr>
            <%            }
            %>
                </table>
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