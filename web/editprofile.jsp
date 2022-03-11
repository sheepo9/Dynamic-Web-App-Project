<%-- 
    Document   : editprofile
    Created on : Sep 26, 2021, 12:03:39 PM
    Author     : i5 lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <link href="css/bootstrap-4.3.1.css" rel="stylesheet" type="text/css"/>
        <link href="css/loginpage.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="text-center" >
<html>
    <img src="img/unam-logo_primary-white_1200x627.png" alt=""/>
     <form class="form-signin"  action="Changepassword.jsp" method="get">
<table>
     
  <label >Current Password</label>
  <input type="password" class="form-control" name="password">
  <label >New Password</label>
  <input type="password" class="form-control" name="newpassword">
<input class="btn btn-danger" type="submit" value="Change Password">
</table>
</form>
</html>
    </body>
</html>
