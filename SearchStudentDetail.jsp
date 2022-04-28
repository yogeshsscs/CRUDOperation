<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Student</title>
</head>
<body>
<%@page import="com.stud.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Student List</h1>  
<%  
String name = request.getParameter("name");
List <Student> list =DBOperation.getRecordByName(name);  
request.setAttribute("list",list);  
%>  
<table border="1" width="100%">  
<tr><th>Id</th><th>Name</th><th colspan="2">Action</th></tr>  
<c:forEach items="${list}" var="student">  
<tr><td>${student.getStud_id()}</td><td>${student.getStud_name()}</td><!--  <td>${student.getStud_email()}</td>  
<td>${student.getStud_phone()}</td><td>${student.getStud_address()}</td>  -->
<td><a href="editstudentform.jsp?id=${student.getStud_id()}">Edit</a></td>   
<td><a href="viewstudentdetails.jsp?id=${student.getStud_id()}">View Details</a></td></tr>  
</c:forEach>  
</table>  
<br/><a href="addStudentForm.jsp">Add New Student</a>
</body>
</html>