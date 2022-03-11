<%-- 
    Document   : Login
    Created on : Sep 26, 2021, 11:27:17 AM
    Author     : i5 lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Login </title>
        <link href="css/bootstrap-4.3.1.css" rel="stylesheet" type="text/css"/>
        <link href="css/loginpage.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
      <body class="text-center">
    <form class="form-signin"  action="LoginServlet" method="get">
  <img class="mb-4" src="img/unam-logo_primary-white_1200x627.png" alt="Unam Logo" width="200" height="100">
  
  <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
  <label for="inputEmail" class="sr-only">Username</label>
  <input name="username"  class="form-control" placeholder="username" required autofocus>
  <label for="inputPassword" class="sr-only">Password</label>
  <input type="password" name="password"  class="form-control" placeholder="Password" required>
   <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
   <a href="register.jsp"> Create An Account</a>
    </body>
</html>
