package com.insightz.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.insightz.bean.LoginBean;
import com.insightz.util.DBConnection;
import com.mysql.jdbc.Statement;

public class LoginDao {
	
	public String authenticateUser(LoginBean loginBean)
	 {
	 
	String email = loginBean.getEmail(); //Keeping user entered values in temporary variables.
	 String password = loginBean.getPassword();
	 
	Connection con = null;
	 java.sql.Statement statement = null;
	 ResultSet resultSet = null;
	 
	String emailDB = "";
	 String passwordDB = "";
	 
	try
	 {
	 con = DBConnection.createConnection(); //establishing connection
	 statement = con.createStatement(); //Statement is used to write queries. Read more about it.
	 resultSet = statement.executeQuery("select Email,password from users"); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.
	 
	while(resultSet.next()) // Until next row is present otherwise it return false
	 {
	  emailDB = resultSet.getString("Email"); //fetch the values present in database
	  passwordDB = resultSet.getString("password");
	 
	   if(email.equals(emailDB) && password.equals(passwordDB))
	   {
	      return "SUCCESS"; ////If the user entered values are already present in database, which means user has already registered so I will return SUCCESS message.
	   }
	 }
	 }
	 catch(SQLException e)
	 {
	 e.printStackTrace();
	 }
	 return "Invalid user credentials"; // Just returning appropriate message otherwise
	 }
	 }

	 


