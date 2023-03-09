package com.sample;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.mysql.cj.xdevapi.Statement;

/**
 * Servlet implementation class UpdateClient
 */
//@WebServlet("/UpdateClient")
public class UpdateClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateClient() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		final String query = "update addclient set OrgName= ?,EmailId=? where orgID = ?;";
		try {
			//http://localhost:8080/crpo/index1.html
			  
	          
			
           Connection con =null;
           		con=DatabaseConnection.initializeDatabase();          
//            		Statement s=con.createStatement();
//              	  s.executeUpdate("update addclient set OrgName='Wipro', ContactPersonFullName='Samba',MobileNum='9856784567' where orgID=1003"); 
       
              
           		PreparedStatement preparedStatement = con.prepareStatement(query);
              	
                    preparedStatement.setString(1, "IBM");
                    preparedStatement.setString(2, "vishnu@ibm.in");
                    
                    preparedStatement.setInt(3, 1003);

                    // Step 3: Execute the query or update query
                    preparedStatement.executeUpdate();
              	
                    
              	  
              	  
              	System.out.println("updated successfully");
          
            PrintWriter out = response.getWriter();
            out.println("<html><body><b>Successfully updated the data"
                        + "</b></body></html>");
            //RequestDispatcher rd=request.getRequestDispatcher("ClientRegister.html");
            response.sendRedirect("clientindex.jsp");
            
        }
        catch (Exception e) {
            e.printStackTrace();
            System.out.println("not updated successfully");
        }
		
	}

}
