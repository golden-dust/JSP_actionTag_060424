<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>action tag: forward</title>
</head>
<body>
	<% 
		Date date = new Date();
	%>
	<h3>I am forward.jsp!</h3>
	<jsp:forward page="forwardOk.jsp">
		<jsp:param value="tiger" name="memberId"/>
		<jsp:param value="12345" name="memberPw"/>
		<jsp:param value="<%= date.toLocaleString() %>" name="date"/>
	</jsp:forward>
</body>
</html>