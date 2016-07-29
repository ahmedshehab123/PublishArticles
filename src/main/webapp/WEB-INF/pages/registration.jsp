<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form:form    action="signup" modelAttribute="signup" method="post" class="form">

		<div class="input-group text-center">
			<input name="email" type="text" class="form-control input-lg"placeholder="Enter your email address"> 
			<input name="fullName"type="text" class="form-control input-lg" placeholder="Full Name">
			 <input name="password"	type="password" class="form-control input-lg" placeholder="Password">
			<select name="category">
				<option value="0" selected>Choose your category</option>
				<option value="Business">Engineering</option>
				<option value="Eduction">Medicine</option>
				<option value="Celebration">Journalism</option>
				<option value="Organizational">Organizational</option>
				<option value="Individual">Individual</option>
			</select>
			<select name="age">
				<option value="0" selected>Age</option>
				<option value="20">20</option>
				<option value="22">22</option>
				<option value="40">40</option>
				<option value="50">50</option>
				<option value="60">60</option>
			</select>
			
			
			
			<br />
			<button class="btn btn-lg btn-primary" type="submit">Sign Up</button>
			<button class="btn btn-lg btn-primary" type="button"
				onclick="backTologin()">Back</button>

		</div>
	</form:form>


</body>
</html>