<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward success</title>
</head>
<body>
	<h3>I am forwardOk.jsp!</h3>
	<%
		String mid = request.getParameter("memberId");
		String mpw = request.getParameter("memberPw");
	%>
	
	forward.jsp에서 넘겨받은 아이디는 <%= mid %>이고, 비밀번호는 <%= mpw %>입니다.
	<%
		Date date = new Date();
	
	%>
	<hr>
	현재 날짜와 시간: <%= date.toLocaleString() %>
</body>
</html>