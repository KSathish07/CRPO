<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url1 = "jdbc:mysql://localhost:3306/crpo";%>
<%!String user = "root";%>
<%!String psw = "sathish07";%>
<%
String id = request.getParameter("id");
String org_name=request.getParameter("OrgName");
String org_pname=request.getParameter("org_pname");
String org_palname=request.getParameter("org_palname");
String email=request.getParameter("email");
String altemail=request.getParameter("altemail");
String con1=request.getParameter("contact_no1");
String con2=request.getParameter("contact_no2");
String pwd=request.getParameter("user_password");
String cpwd=request.getParameter("confirm_password");
String tech=request.getParameter("technologies");
String domain=request.getParameter("domain");
String url=request.getParameter("url");
String about=request.getParameter("about_org");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url1,user,psw);
System.out.println("inside the loop");
String sql="Update addclient set OrgID=?,OrgName=?,ContactPersonFullName=?,ContactAltPersonFullName=?,EmailId=?,AltEmailId=?,MobileNum=?,AltMobileNum=?,Pwd=?,CPwd=?,Tech=?,Domain=?,OrgUrl=?,AboutOrg=? where OrgID="+id;
ps = con.prepareStatement(sql);
ps.setInt(1,personID);
ps.setString(2, org_name);
ps.setString(3, org_pname);
ps.setString(4, org_palname);
ps.setString(5, email);
ps.setString(6, altemail);
ps.setString(7, con1);
ps.setString(8, con2);
ps.setString(9, pwd);
ps.setString(10, cpwd);
ps.setString(11, tech);
ps.setString(12, domain);
ps.setString(13, url);
ps.setString(14, about);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>