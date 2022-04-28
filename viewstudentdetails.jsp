<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Student Details</title>
</head>
<body>
<%@page import="com.stud.DBOperation"%>  
<jsp:useBean id="student" class="com.stud.Student"></jsp:useBean>  
<jsp:getProperty property="stud_id" name="student"/>  
<table border="1" width="90%">  
<tr><th>Id</th><th>Name</th><th>Email</th><th>Phone</th>  
<th>Address</th><th colspan="2">Action</th></tr>  
<tr><td>${student.getStud_id()}</td><td>${student.getStud_name()}</td><td>${student.getStud_email()}</td>  
<td>${student.getStud_phone()}</td><td>${student.getStud_address()}</td>  
<td><a href="editstudentform.jsp?id=${student.getStud_id()}">Edit</a></td>  
<td><a href="viewstudentdetails.jsp?id=${student.getStud_id()}">View Details</a></td></tr>  
  
</table>  
<br>
<a href="addStudentForm.jsp"><button type="button" class="btn btn-success">Add Student</button></a>  
<a href="viewstudent.jsp"><button type="button" class="btn btn-success">View Student</button></a> 
<a href="searchstudent.jsp"><button type="button" class="btn btn-success">Search Student</button></a>
</body>
</html>