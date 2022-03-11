/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;
import java.sql.*;
/**
 *
 * @author i5 lenovo
 */
public class StudentDatabase {
 Connection con ;

    public StudentDatabase(Connection con) {
        this.con = con;
    }
    
    //for register user 
    public boolean saveUser(User user){
        boolean set = false;
        try{
            //Insert register data to database
            String query = "insert into students(firstname, lastname,gender,username,password) values(?,?,?,?,?)";
           
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setString(1, user.getFirstname());
           pt.setString(2, user.getLastname());
           pt.setString(3, user.getGender());
           pt.setString(4, user.GetUsername());
           pt.setString(5, user.GetPassword());
           
           pt.executeUpdate();
           set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
      public User LogUser(String username , String password)
{
    User user= null;
    try{
        String query =" select * from students where username=? and password=?";  
       PreparedStatement part= this.con.prepareStatement(query); 
       part.setString(1,username);
       part.setString(2, password);
        ResultSet rs = part.executeQuery();
        if(rs.next()){
            user = new User();
            user.setUsername(rs.getString("username"));
            user.setGender(rs.getString("gender"));
            user.setFirstname(rs.getString("firstname"));
            user.setLastname(rs.getString("lastname"));
            user.setPassword(rs.getString("password"));
        }
    }
catch(Exception e)
{
    e.printStackTrace();
}
return user;
}
}
