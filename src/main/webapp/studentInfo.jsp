<%@page import="java.util.Date"%>
<%@page import="com.goldendust.test.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Information - Java</title>
</head>
<body>
	<%
		Student student = new Student("홍길동", 29, 3);
		String name = student.getName();
		int age = student.getAge();
		int grade = student.getGrade();
		
		Date date = new Date();
	%>
	
	<%= name %> 학생 : <%= grade %>학년 (<%= age %>살)<br>
	<hr>
	<%= date.toLocaleString() %><br>
</body>
</html>