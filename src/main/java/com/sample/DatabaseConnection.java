package com.sample;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
//import com.mysql.jdbc.Driver;

public class DatabaseConnection {
	protected static Connection initializeDatabase()
	        throws SQLException, ClassNotFoundException
	    {
		
	        // Initialize all the information regarding
	        // Database Connection
		System.out.println("reached data base connection1");
	        String dbDriver = "com.mysql.jdbc.Driver";
	        //http://localhost:8080/Schema/index.html
		//http://localhost:8080/testDb/index.html
	        Class.forName("com.mysql.jdbc.Driver");
	        
	        
	        String dbURL = "jdbc:mysql:// localhost:3306/";
	        // Database name to access
	        String dbName = "crpo";//sampleschema
	        String dbUsername = "root";
	        String dbPassword = "sathish07";
	        System.out.println("reached data base connection2");
	  
	       
	        //Class.forName("com.mysql.cj.jdbc.Driver");
	        System.out.println("reached data base connection3");
	        Connection con =null;
	        con= DriverManager.getConnection(dbURL + dbName,
	                                                     dbUsername, 
	                                                     dbPassword);
	        System.out.println("connected to database");
	        return con;
	    }


}
