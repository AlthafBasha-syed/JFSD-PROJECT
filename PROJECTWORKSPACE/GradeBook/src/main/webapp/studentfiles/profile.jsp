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
<jsp:include page="nav.jsp"></jsp:include>
    <style>
 body {
    background:#fff
}

.form-control:focus {
    box-shadow: none;
    border-color: #BA68C8
}

.profile-button {
    background: rgb(255, 102, 0);
    box-shadow: none;
    border: none
}

.profile-button:hover {
    background: #682773
}

.profile-button:focus {
    background: #682773;
    box-shadow: none
}

.profile-button:active {
    background: #682773;
    box-shadow: none
}

.back:hover {
    color: #682773;
    cursor: pointer
}

.labels {
    font-size: 11px
}

.add-experience:hover {
    background: #BA68C8;
    color: #fff;
    cursor: pointer;
    border: solid 1px #BA68C8
}
.Profile-color
{
  color: rgb(255, 102, 0);
}
    </style>
    
 
 <div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold">Edogaru</span><span class="text-black-50">edogaru@mail.com.my</span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                     <h4 class="text-right"><span class="Profile-color">Profile</span> Settings</h4>
                 
                </div>
                <div class="row mt-2">
                    <div class="col-md-12"><label class="labels">Name</label><input type="text" class="form-control" placeholder="name" value="${s.name }"></div>
                   
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Mobile Number</label><input type="text" class="form-control" placeholder="enter phone number" value="${s.contact}"></div>
                    <div class="col-md-12"><label class="labels">Address Line </label><input type="text" class="form-control" placeholder="enter address line " value="A.T Agraharm"></div>
                    
                    <div class="col-md-12"><label class="labels">Postcode</label><input type="text" class="form-control" placeholder="enter PostCode" value="522004"></div>
                    <div class="col-md-12"><label class="labels">State</label><input type="text" class="form-control" placeholder="enter State" value="AP"></div>
                   
                    <div class="col-md-12"><label class="labels">Email ID</label><input type="text" class="form-control" placeholder="enter email id" value="${s.email }"></div>
                    <div class="col-md-12"><label class="labels">Education</label><input type="text" class="form-control" placeholder="education" value="${s.department }"></div>
                </div>
                  <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Country</label><input type="text" class="form-control" placeholder="country" value="INDIA"></div>
                    <div class="col-md-6"><label class="labels">State/Region</label><input type="text" class="form-control" value="AP" placeholder="state" ></div>
                </div>
                <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="button">Save Profile</button></div>
            </div>
        </div> 
       <!--   <div class="col-md-4">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center experience"><span>Edit Experience</span><span class="border px-3 p-1 add-experience"><i class="fa fa-plus"></i>&nbsp;Experience</span></div><br>
                <div class="col-md-12"><label class="labels">Experience in Designing</label><input type="text" class="form-control" placeholder="experience" value=""></div> <br>
                <div class="col-md-12"><label class="labels">Additional Details</label><input type="text" class="form-control" placeholder="additional details" value=""></div>
            </div> -->
        </div>
    </div>
</div>
</div>
</div>


<jsp:include page="sbottom.jsp"></jsp:include>



</body>
</html>