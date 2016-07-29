<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Setting</title>
<script type="text/javascript" src="/PublishArticles/resources/lib/jquery-1.12.3.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#email").hide();
	$("#fullname").hide();
	$("#age").hide();
	$("#category").hide();
	$("#submit").hide();
	$("#cancel").hide();
	$("#edit").click(function(){
		
		$("#email").show();
		$("#fullname").show();
		$("#age").show();
		$("#category").show();
		$("#submit").show();
		$("#cancel").show();
		$("#emaillspan").hide();
		$("#namespan").hide();
		$("#agespan").hide();
		$("#categoryspan").hide();
		$("#edit").hide();
	});
$("#cancel").click(function(){
		
		$("#email").hide();
		$("#fullname").hide();
		$("#age").hide();
		$("#category").hide();
		$("#submit").hide();
		$("#cancel").hide();
		$("#emaillspan").show();
		$("#namespan").show();
		$("#agespan").show();
		$("#categoryspan").show();
		$("#edit").show();
	});
});

</script>
</head>
<body>
<center>
	
		<c:forEach var="user" items="${users }">
		<form action="updatesetting" method="post">
		<table border="1">
		
			<tr>
			
				<td>Email</td>
				<td><span id="emaillspan">${user.email }</span>
				<input name="email" type="text" id="email" value="${user.email }"/></td>
			</tr>
			<tr>
				<td>Full Name</td>
				<td><span id="namespan">${user.fullName }</span>
				<input name="fullName"  type="text" id="fullname" value="${user.fullName }"  /></td>
			</tr>
			<tr>
				<td>Age</td>
				<td><span id="agespan">${user.age }</span>
				<input type="text" name="age" id="age" value="${ user.age}"> </td>
			</tr>
			<tr>
				<td>Category</td>
				<td><span id="categoryspan">${user.category }</span>
				<input type="text" name="category" id="category" value="${user.category }"></td>
			</tr>
			<tr>
				<td></td>
				<td><a id="edit" href="#">Edit</a>
				    <button id="submit">Update</button><a id="cancel" href="#">cancel</a>
				</td>
			</tr>
			<tr>
				<td>password</td>
				<td>${user.password }</td>
				
			</tr>
			
			</table>
			</form>
		</c:forEach>
	
	</center>
</body>
</html>