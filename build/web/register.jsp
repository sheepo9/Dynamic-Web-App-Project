<%-- 
    Document   : register
    Created on : Sep 25, 2021, 11:58:29 PM
    Author     : i5 lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <link href="css/loginpage.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-4.3.1.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="text-center" >
        <form class="form-signin"  action="RegisterServlet" method="post">
  <img class="mb-4" src="img/unam-logo_primary-white_1200x627.png" alt="" width="150" height="72">
  <h1 class="h3 mb-3 font-weight-normal">Please enter you details</h1>
  <label  class="sr-only">First Name</label>
  <input name="firstname"  class="form-control" placeholder="firstname" required >
  <label  class="sr-only">Last Name</label>
  <input name="lastname"  class="form-control" placeholder="Lastname" required >
    <label  class="sr-only">Gender </label> 
  <select id="gender" name="gender" class="form-control">
              <option value="Male">Male</option>
              <option value="Female">Female</option>
   </select>
  
  
  <label  class="sr-only">User Name</label>
  <input name="username"  class="form-control" placeholder="username" required >
  <label  class="sr-only">Password</label>
  <input type="password" name="password"  class="form-control" id="psw" name="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>

   
   
   <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
   </form>
        
        
</html>
