/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

/**
 *
 * @author i5 lenovo
 */
public class User {
   private String firstname,lastname, gender, username, password;
 int id;
   public User()
   {}
   public User(int id, String firstname, String lastname, String gender,String username, String password  )
   {this.id =id;
   this.firstname = firstname;
   this.gender = gender;
   this.lastname= lastname;
   this.password = password;
   this.username = username;
   }
    public User( String firstname, String lastname, String gender,String username, String password  )
    {
   this.firstname = firstname;
   this.gender = gender;
   this.lastname= lastname;
   this.password = password;
   this.username = username;
   }
   
   public String getFirstname() {
	return firstname;
}

public void setFirstname(String name) {
	this.firstname = name;
}

public String getLastname() {
	return lastname;
}

public void setLastname(String name) {
	this.lastname = name;
}
public String getGender() {
	return gender;
}

public void setGender(String name) {
	this.gender = name;
}

public String GetUsername() {
	return username;
}

public void setUsername(String name) {
	this.username = name;
}

public String GetPassword() {
	return password;
}

public void setPassword(String name) {
	this.password = name;
}
}
