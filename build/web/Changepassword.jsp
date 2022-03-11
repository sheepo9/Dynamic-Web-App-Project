<%-- 
    Document   : Changepassword
    Created on : Sep 26, 2021, 12:11:40 PM
    Author     : i5 lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>change Password</title>
    </head>
    <body>
    <%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String currentPassword=request.getParameter("password");
String Newpass=request.getParameter("newpassword");
String firstname =request.getParameter("firstname");
String lastname =request.getParameter("lastname");
String gender=request.getParameter("gender");
String username=request.getParameter("username");
String connurl = "jdbc:mysql://localhost:3306/test";
Connection con=null;
String pass="";
int id=0;
try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(connurl, "root", "");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from students where password='"+currentPassword+"'");
while(rs.next()){
id=rs.getInt(1);
pass=rs.getString(6);
} System.out.println(id+ " "+pass);
if(pass.equals(currentPassword)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update students set password='"+Newpass+"' where studentno='"+id+"'");
out.println("Password changed successfully");
st1.close();
con.close();
}
else{
out.println("Invalid Current Password");
}
}
catch(Exception e){
out.println(e);
}
%>
    </body>
</html>
