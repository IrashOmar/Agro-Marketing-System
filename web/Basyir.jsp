<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="${request.contextPath}/COSMAS/ControllerCourse" method="post">
	     <label for="course-name-input" >Course Name</label>
	     <input type="text" id="course-name-input" name="courseName" required="">
	     <label for="course-code-input" >Course Code</label>
	     <input type="text" id="course-code-input" name="courseCode" required="">
	</form>
</body>
</html>