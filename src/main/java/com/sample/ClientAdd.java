package com.sample;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class ClientAdd
 */
public class ClientAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ClientAdd() {
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
		//http://localhost:8080/crpo/ClientRegister.html
		try {
			
			  
          
			System.out.println("before");
           Connection con =null;
            		con=DatabaseConnection.initializeDatabase();           
			
       

            PreparedStatement ps = con
                   .prepareStatement("insert into addclient values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            int id=Integer.parseInt(request.getParameter("emp_id"));
    		
    		System.out.println("organization id="+id);
    		String orgName=request.getParameter("org_name");
    		System.out.println("org name="+orgName);
    		String pame1=request.getParameter("org_pname");
    		System.out.println("person name="+pame1);
    		String pame2=request.getParameter("org_palname");
    		System.out.println("Alt person name="+pame2);
    		String email1=request.getParameter("email");
    		System.out.println("email="+email1);
    		String email2=request.getParameter("altemail");
    		System.out.println("Alt email="+email2);
    		String con1=request.getParameter("contact_no1");
    		//int con1=Integer.parseInt();
    		System.out.println("contact1="+con1);
    		//int con2=Integer.parseInt(request.getParameter("contact_no2"));
    		String con2=request.getParameter("contact_no2");
    		System.out.println("contact2="+con2);
    		String pwd=request.getParameter("user_password");
    		System.out.println("user pwd="+pwd);
    		String cpwd=request.getParameter("confirm_password");
    		System.out.println("user cpwd="+cpwd);
    		String tech=request.getParameter("technologies");
    		System.out.println("technolgy="+tech);
    		String domain=request.getParameter("domain");
    		System.out.println("domain="+domain);
    		String url=request.getParameter("url");
    		System.out.println("org url="+url);
    		String about=request.getParameter("about_org");
    		System.out.println("about us="+about);
  
            ps.setInt(1, id);
    		ps.setString(2, orgName);
    		ps.setString(3, pame1);
    		ps.setString(4,pame2);
    		ps.setString(5,email1);
    		ps.setString(6,email2);
    		ps.setString(7,con1);
    		ps.setString(8,con2);
    		ps.setString(9,pwd);
    		ps.setString(10,cpwd);
    		ps.setString(11,tech);
    		ps.setString(12,domain);
    		ps.setString(13,url);
    		ps.setString(14,about);
            ps.executeUpdate();
  
          
            PrintWriter out = response.getWriter();
            out.println("<html><body><b>Successfully Inserted into DB"
                        + "</b></body></html>");
            //RequestDispatcher rd=request.getRequestDispatcher("ClientRegister.html");
            System.out.println("hi welcome to cliend add page");
        }
        catch (Exception e) {
            e.printStackTrace();
        }
		
	
		
		
		
	}

}
