<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
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
    <style>
        /* Define the background color for the table */
        .colored-table {
            background-color: rgb(255, 102, 0);
            width: 100%;
            border-collapse: collapse;
        }

        /* Style table headers and data cells */
        .colored-table th, .colored-table td {
            padding: 10px;
            text-align: center;
            border: 1px solid #fff; /* Add borders to cells for better visibility */
            color: white; /* Text color on the colored background */
        }
    </style>
</head>
<body>
<br>
 <h3 align="center" style="color:44425a"> List of <span style="color:rgb(255, 102, 0)">Student</span></h3>
    <table class="colored-table">
      <tr bgcolor="black">
        
<td>ID</td> 
<td>STUDENT NAME</td> 
<td>GENDER</td> 
<td>DATE OF BIRTH</td> 
<td>DEPARTMENT</td>  
<td>EMAIL</td> 
<td>CONTACT</td> 
<td>USERNAME</td>

</tr> 
 
<c:forEach items="${slist}"  var="s"> 
<tr> 
<td><c:out value="${s.id}" /></td> 
<td><c:out value="${s.name}" /></td> 
<td><c:out value="${s.gender}" /></td>
<td><c:out value="${s.dateofbirth}" /></td>
<td><c:out value="${s.department}" /></td> 
<td><c:out value="${s.email}" /></td> 
<td><c:out value="${s.contact}" /></td> 
<td><c:out value="${s.username}" /></td>


 
</tr> 
</c:forEach>
    </table>
</body>
    <jsp:include page="abottom.jsp"></jsp:include>




</body>
</html>