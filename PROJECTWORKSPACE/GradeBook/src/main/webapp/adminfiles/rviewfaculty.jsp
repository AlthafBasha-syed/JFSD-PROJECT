<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GradeBook</title>
<link rel="shortcut icon" href="/img/logo.jpg" type="image/x-icon" />

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
  <h3 align="center" style="color:44425a"> List of <span style="color:rgb(255, 102, 0)">Faculty</span></h3>
    <table class="colored-table">
      <tr bgcolor="black">
        
<td>ID</td> 
<td>FACULTY NAME</td> 
<td>GENDER</td>  
<td>DEPARTMENT</td>  
<td>EMAIL</td> 
<td>CONTACT</td> 
<td>USERNAME</td>
<td>ACTION</td>



</tr> 
 
<c:forEach items="${flist}"  var="f"> 
<tr> 
<td><c:out value="${f.id}" /></td> 
<td><c:out value="${f.name}" /></td> 
<td><c:out value="${f.gender}" /></td>
<td><c:out value="${f.department}" /></td> 
<td><c:out value="${f.email}" /></td> 
<td><c:out value="${f.contact}" /></td> 
<td><c:out value="${f.username}" /></td> 
 <td>
 <a href='<c:url value="fdelete/${f.id}"></c:url>' style="color: blue;">Remove</a> 
 </td>
 



</tr> 
</c:forEach>
    </table>
</body>
    <jsp:include page="abottom.jsp"></jsp:include>




</body>
</html>