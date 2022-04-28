<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Student Information</title>
</head>
<body>
<%@page import="com.stud.*"%>  
  
<%  
String id=request.getParameter("id");  
Student student=DBOperation.getRecordById(Integer.parseInt(id));  
%>  
  
<h1>Edit Form</h1>  
<form action="editstudent.jsp" method="post">  
<input type="hidden" name="stud_id" value="<%=student.getStud_id() %>"/>  
<table>  
<tr><td>Name:</td><td>  
<input type="text" name="stud_name" value="<%= student.getStud_name()%>"/></td></tr>  
<tr><td>Email:</td><td>  
<input type="email" name="stud_email" value="<%= student.getStud_email()%>"/></td></tr>  
<tr><td>Phone:</td><td>  
<input type="text" name="stud_phone" value="<%= student.getStud_phone()%>"/></td></tr>  
<tr><td>Address:</td><td>  
<input type="text" size="100" multiple="multiple" name="stud_address"  value="<%= student.getStud_address()%>" />
</td></tr>  
<tr><td colspan="2"><input type="submit" value="Edit Student"/></td></tr>  
</table>  
</form>  
</body>
</html>