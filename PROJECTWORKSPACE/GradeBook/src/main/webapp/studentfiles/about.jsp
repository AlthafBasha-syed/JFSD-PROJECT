<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GradeBook</title>
<link rel="shortcut icon" href="/img/logo.jpg" type="image/x-icon" />
</head>
<body>
<jsp:include page="stop.jsp"></jsp:include>
 <meta charset="utf-8">
    <title>ECOURSES - Online Courses HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->


 <link href="cssfiles/style.css" rel="stylesheet">
<jsp:include page="nav.jsp"></jsp:include>
<!-- Header Start -->
    <div class="container-fluid page-header" style="margin-bottom: 90px;">
        <div class="container">
            <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                <h3 class="display-4 text-white text-uppercase">About</h3>
                <div class="d-inline-flex text-white">
                    <p class="m-0 text-uppercase"><a class="text-white" href="">Home</a></p>
                    <i class="fa fa-angle-double-right pt-1 px-3"></i>
                    <p class="m-0 text-uppercase">About</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->


    <!-- About Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-lg-5">
                    <img class="img-fluid rounded mb-4 mb-lg-0" src="img/about.jpg" alt="">
                    <br>
                </div>
                <div class="col-lg-7">
                    <div class="text-left mb-4">
                        <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">About Us</h5>
                        <br>
                        <h1>Innovative Way To Learn</h1>
                    </div>
                    <p>
                        We are a dedicated team of developers, designers, and educators aiming to transform education through the Student Grade Management System project.
                        Our mission is to enhance the educational experience by providing an intuitive platform for managing grades, assignments, and progress. 
                        With efficient grade management, assignment tracking, real-time feedback, and performance analytics, our user-centric design prioritizes security and communication. 
                        Backed by diverse expertise, continuous improvement, and dedicated support, we're committed to shaping a brighter future for education.
                    </p>
                    <a href="" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2">Learn More</a>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->


    


    <!-- Testimonial Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="text-center mb-5">
                <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">Grade Book</h5>
                <h1>Developers</h1>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="owl-carousel testimonial-carousel">
                        <div class="text-center">
                            <i class="fa fa-3x fa-quote-left text-primary mb-4"></i>
                            <h4 class="font-weight-normal mb-4">Passionate Front-End Developer with a creative flair for designing intuitive and user-friendly web experiences. Proficient in HTML, CSS, and JavaScript, I bring websites to life while ensuring a seamless, responsive, and visually appealing user interface. Committed to staying updated with the latest web technologies to create captivating online solutions.</h4>
                           <img class="img-fluid mx-auto mb-3" src="img/basha.jpg" alt="">  
                            <h5 class="m-0">Basha</h5>
                            <span>Front End</span>
                        </div>
                        <div class="text-center">
                            <i class="fa fa-3x fa-quote-left text-primary mb-4"></i>
                            <h4 class="font-weight-normal mb-4">Experienced Back-End Developer dedicated to building robust and scalable server-side solutions. Proficient in programming languages like Python, Java, or Ruby, I specialize in creating the unseen infrastructure that powers web applications, ensuring they run efficiently, securely, and smoothly. Committed to optimizing performance and enhancing data integrity for a seamless user experience.</h4>
                           <img class="img-fluid mx-auto mb-3" src="/img/nish.jpg" alt="">
                            <h5 class="m-0">Nishanth</h5>
                            <span>Back End</span>
                        </div>
                        <div class="text-center">
                            <i class="fa fa-3x fa-quote-left text-primary mb-4"></i>
                            <h4 class="font-weight-normal mb-4">Middleware Developer specializing in connecting and integrating software systems to enhance functionality and efficiency. Proficient in middleware technologies like ESB, message brokers, and API management, I bridge the gap between front-end and back-end, ensuring seamless communication and data exchange. Committed to optimizing data flow and system interoperability to create robust and interconnected solutions.</h4>
                            <img class="img-fluid mx-auto mb-3" src="img/srikanth.jpg" alt=""> 
                            <h5 class="m-0">Srikanth</h5>
                            <span>Middle-ware</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->
    
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>


<jsp:include page="sbottom.jsp"></jsp:include>
<script>
  // Get the reference to the div element
  var myDiv = document.getElementById("myabout");
  // Change the class attribute value
  myDiv.className = "nav-item nav-link active";
</script>
</body>
</html>