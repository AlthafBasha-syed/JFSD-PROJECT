<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GradeBook</title>
<link rel="shortcut icon" href="/img/logo.jpg" type="image/x-icon" />
<style >
.blink {
  animation: blink 1s steps(1, end) infinite;
}

@keyframes blink {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
</style>
</head>
<body>

<jsp:include page="atop.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<span class="blink">
<h3 align=center style="color:red">${msg}</h3>
</span>
 <!-- Contact Start -->
     <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="text-center mb-5">
                <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">ADD</h5>
                <h1>Student</h1>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="contact-form bg-secondary rounded p-5">
                        <div id="success"></div>
                        <form name="sentMessage" id="contactForm"  action="insertstudent" method="post">
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" name="tname" placeholder="Student Name" required="required" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
				         <div class="control-group">
							  <select class="form-control border-0"  name="tgender" id="gender" required="required" data-validation-required-message="Please select a gender">
							      <option value="" selected>Select Student Gender</option>
							      <option value="Male">Male</option>
							      <option value="Female">Female</option>
							      <option value="Other">Other</option>
							  </select>
							  <p class="help-block text-danger"></p>
							</div>
                            <div class="control-group">
                                <input type="date" class="form-control border-0 p-4" name="tdateofbirth" placeholder="dateofbirth" required="required" data-validation-required-message="Please enter a subject" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" name="tdepartment" placeholder="Student Department" required="required" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" name="temail" placeholder="Student Email" required="required" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" name="tcontact" placeholder="Student Contact Number" required="required" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" name="tusername" placeholder="Student Username" required="required" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="password" class="form-control border-0 p-4" name="tpassword" placeholder="Student Password" required="required" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            
                            <div class="text-center">
                                <input type="submit" class="btn btn-primary py-3 px-5" value="ADD" id="sendMessageButton"/>
                            </div>
                        </form >
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->

<jsp:include page="abottom.jsp"></jsp:include>



</body>
</html>