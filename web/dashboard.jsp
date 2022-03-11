<%-- 
    Document   : dashboard
    Created on : Sep 26, 2021, 11:43:06 AM
    Author     : i5 lenovo
--%>
<%@page import = "newpackage.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% User user = (User) session.getAttribute("loguser");
    if(user==null){
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
    </head>
    <body>
        <h1>
 
   </body>
</html
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
        <link href="css/bootstrap-4.3.1.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#">UNAM Portal</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="row">
   <ul class="navbar-nav px-3">
    <li class="nav-item text-nowrap">
        <a class="nav-link">Username: <%= user.GetUsername() %> </a>
    </li>
      </ul>
  
  </div>
</nav>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="sidebar-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" href="#">
              <span data-feather="home"></span>
              Dashboard <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link"  href="editprofile.jsp">
              <span data-feather="file"></span>
              Change Password 
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Logout">
              <span data-feather="shopping-cart"></span>
              Log out
            </a>
          </li>
         <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="bar-chart-2"></span>
              Others
            </a>
          </li>
         
             </ul>
      </div>
    </nav>

    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Dashboard</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
                     
        </div>
      </div>
        <div class="row">
	           <div class="col-md-8">
             <div class="card">
                <div class="card-body">
                   <h4 class="card-title bg-secondary">Welcome</h4>
 <h3> Welcome <%= user.getFirstname() %> <%= user.getLastname()%></h3>

<h3>
Your Gender: <%= user.getGender() %> </h3>
<h3>

                </div>
</div>
</div>
</div>
    </body>
</html>
