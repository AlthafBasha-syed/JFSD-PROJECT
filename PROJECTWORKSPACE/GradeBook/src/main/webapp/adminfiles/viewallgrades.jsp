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
    <table class="colored-table">
        <tr>
            <th>Header 1</th>
            <th>Header 2</th>
            <th>Header 3</th>
        </tr>
        <tr>
            <td>Data 1</td>
            <td>Data 2</td>
            <td>Data 3</td>
        </tr>
        <!-- Add more rows as needed -->
    </table>
</body>
    <jsp:include page="abottom.jsp"></jsp:include>


<script>
  // Get the reference to the div element
  var myDiv = document.getElementById("agrade");
  // Change the class attribute value
  myDiv.className = "nav-item nav-link active";
</script>

</body>
</html>