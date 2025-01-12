<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <!-- Add Bootstrap CSS and JavaScript links here -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        // Add this JavaScript function to toggle the dashboard dropdown
        function toggleDashboardDropdown() {
            const navbarVertical = document.getElementById('navbar-vertical');
            if (navbarVertical.classList.contains('show')) {
                navbarVertical.classList.remove('show');
            } else {
                navbarVertical.classList.add('show');
            }
        }
    </script>
</head>
<body>

<!-- Navbar Start -->
<div class="container-fluid">
    <div class="row border-top px-xl-5">
        <div class="col-lg-3 d-none d-lg-block">
            <a class="d-flex align-items-center justify-content-between bg-secondary w-100 text-decoration-none" data-toggle="collapse" href="javascript:void(0);" onclick="toggleDashboardDropdown();" style="height: 67px; padding: 0 30px;">
                <h5 class="text-primary m-0">DashBoard</h5>
                <i class="fa fa-angle-down text-primary"></i>
            </a>
            <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 9;">
                <div class="navbar-nav w-100">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-item nav-link">List of Facultys</a>
                    </div>
                    <a href="#" class="nav-item nav-link">List of Students</a>
                    	
                    <a href="facultychangepassword" class="nav-item nav-link">Settings</a>
                </div>
            </nav>
        </div>
        <div class="col-lg-9">
            <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                <a href="" class="text-decoration-none d-block d-lg-none">
                    <h1 class="m-0"><span class="text-primary">E</span>COURSES</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav py-0">
                     <!--    <a href="addFaculty" class="nav-item nav-link active">Add Faculty</a> -->
                        <a href="fstudent" id="fassign"class="nav-item nav-link">Assign</a>
                         <a href="fcourse" id="fcourse"class="nav-item nav-link">Courses</a>
                     <!--     <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Courses</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <a href="addCourse" class="dropdown-item">Add Course</a>
                                <a href="viewCourse" class="dropdown-item">View Courses</a>
                            </div>
                        </div> -->
                        <a href="fgrades" id="fgrade"class="nav-item nav-link">All Grades</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Remove</a>
                            <div class="dropdown-menu rounded-0 m-0">
                              <!--    <a href="removeFaculty" class="dropdown-item">Faculty</a> -->
                                <a href="rstudent" id="frstudnet"class="dropdown-item">Student</a>
                            </div>
                        </div>
                    </div>
                    <a class="btn btn-primary py-2 px-4 ml-auto d-none d-lg-block" href="logout">Log Out</a>
                </div>
            </nav>
        </div>
    </div>
</div>
<!-- Navbar End -->

</body>
</html>
