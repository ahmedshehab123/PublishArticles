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
<button class="btn btn-lg btn-primary" onclick="loadDoc()" type="button">Sign-up If you don't have Account</button><br></br>
<!-- h4 id="signup"><a href="#"  onclick="loadDoc()">Sign-up If you don't have Account</a></h4> -->
                                   <form action="login" method="post" class="form">
                                    
                                
                                    <div  class="input-group text-center">
                                    <input type="text" name="email" class="form-control input-lg" placeholder="Enter your email address">
                                    <input type="text" name="password" class="form-control input-lg" placeholder="Enter your password"><br/>
                                      <button class="btn btn-lg btn-primary" type="submit">Log in</button>
                                    </div>
                                  </form>
</body>
</html>