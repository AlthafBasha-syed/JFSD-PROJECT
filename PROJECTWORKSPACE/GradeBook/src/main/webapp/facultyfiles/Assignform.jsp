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

<jsp:include page="ftop.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>



    <!-- Contact Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="text-center mb-5">
                <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">ASSIGN</h5>
                <h1>GRADE</h1>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="contact-form bg-secondary rounded p-5">
                        <div id="success"></div>
                        <form name="sentMessage" id="contactForm" action="assigngrades" method="post">
                          <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" name="tid"id="ti" placeholder="Student Id" required="required" readonly="readonly" value="${s.id}" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" name="tname"id="ti" placeholder="Student Name" required="required" readonly="readonly" value="${s.name}" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" name="tgender"id="ti" placeholder="Student Gender" required="required" readonly="readonly" value="${s.gender}" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" name="tdateofbirth"id="ti" placeholder="Student DateofBirth" required="required" readonly="readonly" value="${s.dateofbirth}" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" name="tdepartment"id="ti" placeholder="Student name" required="required" readonly="readonly" value="${s.department}" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" name="temail"id="ti" placeholder="Student name" required="required" readonly="readonly" value="${s.email}" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" name="tcontact"id="ti" placeholder="Student name" required="required" readonly="readonly" value="${s.contact}" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" name="tusername"id="ti" placeholder="Student name" required="required" readonly="readonly" value="${s.username}" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            
                            
                            <div class="control-group">
                                <input type="int" class="form-control border-0 p-4" name="grade1" placeholder="Grade1" required="required" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="int" class="form-control border-0 p-4" name="grade2" placeholder="Grade2" required="required" data-validation-required-message="Please enter your email" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="int" class="form-control border-0 p-4" name="grade3" placeholder="Grade3" required="required" data-validation-required-message="Please enter a subject" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" name="tcontact" placeholder="tcontact" required="required" value="${s.contact }" data-validation-required-message="Please enter a subject" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="text-center">
                                <button class="btn btn-primary py-3 px-5" type="submit" id="sendMessageButton">ASSIGN</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->
<script>
  // Get the reference to the div element
  var myDiv = document.getElementById("mycontact");
  // Change the class attribute value
  myDiv.className = "nav-item nav-link active";
</script>

<jsp:include page="fbottom.jsp"></jsp:include>
</body>
</html>