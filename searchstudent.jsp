<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Student</title>
<script src="formValid.js">

</script>
</head>
<body>
<h1>Student List By Name</h1>   
<form name="checkForm" onsubmit="return lengthCheck()" action="SearchStudentDetail.jsp" method="post">
<p><input type="text" name="name"> <div class="error" id="nameErr"></div></p>
<p><input type="submit" value="Search Student">
</p>
</form>
</body>
</html>