package com.sample;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Product
 */
//@WebServlet("/Product")
public class Product extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Product() {
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
		System.out.println("Hi welcome back");
		//doGet(request, response);
		try {
			
			  
            // Initialize the database
			System.out.println("before");
           Connection con =null;
            		con=DatabaseConnection.initializeDatabase();
            //System.out.println("after");
			//Connection con=null;	
			
       

            PreparedStatement ps = con
                   .prepareStatement("insert into product values(?,?,?)");
  
            ps.setInt(1, 3);
      		ps.setString(2, "Nokia");
      		ps.setInt(3, 30);
            ps.executeUpdate();
  
            // Close all the connections
            //ps.close();
           // con.close();
           // RequestDispatcher rd=request.getRequestDispatcher(getServletInfo());
           // RequestDispatcher rd=request.getRequestDispatcher("form.html");
            //rd.include(request, response);
  
            // Get a writer pointer 
            // to display the successful result
            PrintWriter out = response.getWriter();
            out.println("<html><body><b>Successfully Inserted"
                        + "</b></body></html>");
            RequestDispatcher rd=request.getRequestDispatcher("ClientRegister.html");
        }
        catch (Exception e) {
            e.printStackTrace();
        }
	}

}
