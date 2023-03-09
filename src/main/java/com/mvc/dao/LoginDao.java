package com.mvc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mvc.bean.LoginBean;
import com.mvc.util.DBConnection;
import com.mysql.cj.xdevapi.Statement;

public class LoginDao {
	public String authenticateUser(LoginBean loginBean)
    {
        String UserID = loginBean.getUserID(); //Assign user entered values to temporary variables.
        String password = loginBean.getPassword();

        Connection con = null;
        java.sql.Statement statement = null;
        ResultSet resultSet = null;

        String UserIDDB = "";
        String passwordDB = "";

        try
        {
            con = DBConnection.createConnection(); //Fetch database connection object
            statement =  con.createStatement(); //Statement is used to write queries. Read more about it.
            resultSet = ((java.sql.Statement) statement).executeQuery("select UserID,password from login"); //the table name is users and userName,password are columns. Fetching all the records and storing in a resultSet.

            while(resultSet.next()) // Until next row is present otherwise it return false
            {
           	 UserIDDB = resultSet.getString("UserID"); //fetch the values present in database
             passwordDB = resultSet.getString("password");

              if(UserID.equals(UserIDDB) && password.equals(passwordDB))
              {
                 return "SUCCESS"; ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
              }
            }
        }
            catch(SQLException e)
            {
               e.printStackTrace();
            }
            return "Invalid user credentials"; // Return appropriate message in case of failure
        }

}
