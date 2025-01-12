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
                <h1>Faculty</h1>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="contact-form bg-secondary rounded p-5">
                        <div id="success"></div>
                        <form name="sentMessage" id="contactForm" action="insertfaculty" method="post">
                          <!-- name -->
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" name="tname"id="tname" placeholder="Faculty Name" required="required" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                              <div class="control-group">
							  <select class="form-control border-0  "  name="tgender" id="gender" required="required" data-validation-required-message="Please select a gender">
							      <option value="" selected>Select Faculty Gender</option>
							      <option value="Male">Male</option>
							      <option value="Female">Female</option>
							      <option value="Other">Other</option>
							  </select>
							  <p class="help-block text-danger"></p>
							</div>
                            <!-- dob -->
                            <div class="control-group">
                              <input type="date" class="form-control border-0 p-4" name="tdateofbirth"id="tname" placeholder="Faculty Name" required="required" data-validation-required-message="Please enter your name" />
                              <p class="help-block text-danger"></p>
                          </div>
                          <!-- department -->
                          <div class="control-group">
                            <input type="text" class="form-control border-0 p-4" id="tname"name="tdepartment" placeholder="Faculty Department" required="required" data-validation-required-message="Please enter your name" />
                            <p class="help-block text-danger"></p>
                        </div>
                        
                        <!-- qualification -->
                        <div class="control-group">
                          <input type="text" class="form-control border-0 p-4" id="tname"name="tqualification" placeholder="Faculty qualification" required="required" data-validation-required-message="Please enter your name" />
                          <p class="help-block text-danger"></p>
                      </div>
                        <!-- experience -->
                        <div class="control-group">
                          <input type="number" class="form-control border-0 p-4" id="tname" name="texperience" placeholder="Faculty experience" required="required" data-validation-required-message="Please enter your name" />
                          <p class="help-block text-danger"></p>
                      </div>
                        <!-- email -->
                           <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" name="temail" placeholder="Faculty Email" required="required" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <!-- phoneno -->
                            <div class="control-group">
                              <input type="text" class="form-control border-0 p-4" name="tcontact" id="tcontact" placeholder="Faculty Contact No" required="required" data-validation-required-message="Please enter a subject" />
                              <p class="help-block text-danger"></p>
                          </div>
                            <!-- username -->
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4"name="tusername" id="tusername" placeholder="Username" required="required" data-validation-required-message="Please enter a subject" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <!-- password -->
                            <div class="control-group">
                                <input type="password" class="form-control border-0  p-4"  name="tpassword" id="tpassword" placeholder="Password" required="required" data-validation-required-message="Please enter your message"></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
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