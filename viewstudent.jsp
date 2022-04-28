<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Students</title>
</head>
<body>
<%@page import="com.stud.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Student List</h1>  
  
<%  
List<Student> list=DBOperation.getAllRecords();  
request.setAttribute("list",list);  
%>  
<table border="1" width="90%">  
<tr><th>Id</th><th>Name</th><th>Email</th><th>Phone</th>  
<th>Address</th><th colspan="2">Action</th></tr>  
<c:forEach items="${list}" var="student">  
<tr><td>${student.getStud_id()}</td><td>${student.getStud_name()}</td><td>${student.getStud_email()}</td>  
<td>${student.getStud_phone()}</td><td>${student.getStud_address()}</td>  
<td><a href="editstudentform.jsp?id=${student.getStud_id()}">Edit</a></td>  
<td><a href="viewstudentdetails.jsp?id=${student.getStud_id()}">View Details</a></td></tr>  
</c:forEach>  
</table>  
<br>
<a href="addStudentForm.jsp"><button type="button" class="btn btn-success">Add Student</button></a>  
<a href="viewstudent.jsp"><button type="button" class="btn btn-success">View Student</button></a> 
<a href="searchstudent.jsp"><button type="button" class="btn btn-success">Search Student</button></a>
</body>
</html>