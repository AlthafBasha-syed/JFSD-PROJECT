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
<jsp:include page="atop.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>


  <!-- Contact Start -->
     <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="text-center mb-5">
                <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">ADD</h5>
                <h1>Course</h1>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="contact-form bg-secondary rounded p-5">
                        <div id="success"></div>
                        <form name="sentMessage" id="contactForm" novalidate="novalidate">
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" id="sname" placeholder="Course Name" required="required" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="email" class="form-control border-0 p-4" id="sid" placeholder="Course Id" required="required" data-validation-required-message="Please enter your email" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <!-- <div class="control-group"> -->
                                <!-- <input type="text" class="form-control border-0 p-4" id="susername" placeholder="Username" required="required" data-validation-required-message="Please enter a subject" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <textarea class="form-control border-0  p-4"  id="spassword" placeholder="Password" required="required" data-validation-required-message="Please enter your message"></textarea>
                                <p class="help-block text-danger"></p>
                            </div> -->
                            <div class="text-center"> 
                                <button class="btn btn-primary py-3 px-5" type="submit" id="sendMessageButton">ADD</button>
                            </div> 
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


<jsp:include page="abottom.jsp"></jsp:include>
</body>
</html>