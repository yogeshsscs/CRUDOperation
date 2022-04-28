<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Student</title>
</head>
<body>
<%@page import="com.stud.DBOperation"%>  
<jsp:useBean id="student" class="com.stud.Student"></jsp:useBean>  
<jsp:setProperty property="*" name="student"/>  
<%  
int i=DBOperation.update(student);  
response.sendRedirect("viewstudent.jsp");  
%>  
</body>
</html>