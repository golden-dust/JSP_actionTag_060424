<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Information - Beans</title>
</head>
<body>
	<!-- 빈 객체 생성 -->
	<jsp:useBean id="student" class="com.goldendust.test.Student"/>
	
	<!-- 생성자 -->
	<jsp:setProperty property="name" name="student" value="홍길동"/>
	<!-- property: 변수(필드) 이름 | name: 객체 이름 | value: 값 -->
	<jsp:setProperty property="age" name="student" value="29"/>
	<jsp:setProperty property="grade" name="student" value="3"/>
	
	이름: <jsp:getProperty property="name" name="student"/><br>
	나이: <jsp:getProperty property="age" name="student"/><br>
	학년: <jsp:getProperty property="grade" name="student"/><br><br>
	
	<!-- 학생이름출력 : %= name % 혹은 %= student.name % 은 에러-->
	학생이름출력: ${student.getName()}<br>
	학생이름출력: <%= student.getName() %><br>
	
	<jsp:useBean id="date" class="java.util.Date"/>
	
	현재시간: ${date.toLocaleString()}<br>
	현재시간: <%= date.toLocaleString() %>

	<hr>
	<!-- 코드 찍는 게 번거로워 EL 표기법 생김 (Expression Language) / java로 생성된 변수를 불러올 수 있음-->
	※ EL 표기법<br>
	학생 이름: ${student.name}<br> 
	학생 나이: ${student.age}<br>
	학생 학년: ${student.grade}<br>
</body>
</html>