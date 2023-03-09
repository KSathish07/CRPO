<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("OrgId");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "crpo";
String userid = "root";
String password = "sathish07";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<body>

<h1>Retrieve data from database in jsp</h1>

<table border="1">
<tr>
<td>OrgId</td>
<td>Orgname</td>
<td>CPFname</td>
<td>ACPFname</td>
<td>Email</td>
<td>AltEmail</td>
<td>Mobile</td>
<td>AltMobile</td>
<td>PWD</td>
<td>CPWD</td>
<td>Tech</td>
<td>Domain</td>
<td>URL</td>
<td>AboutOrg</td>
<td>Edit</td>

</tr>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from addclient";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("OrgID") %></td>
<td><%=resultSet.getString("OrgName") %></td>
<td><%=resultSet.getString("ContactPersonFullName") %></td>
<td><%=resultSet.getString("ContactAltPersonFullName") %></td>
<td><%=resultSet.getString("EmailId") %></td>
<td><%=resultSet.getString("AltEmailId") %></td>
<td><%=resultSet.getString("MobileNum") %></td>
<td><%=resultSet.getString("AltMobileNum") %></td>
<td><%=resultSet.getString("Pwd") %></td>
<td><%=resultSet.getString("CPwd") %></td>
<td><%=resultSet.getString("Tech") %></td>
<td><%=resultSet.getString("Domain") %></td>
<td><%=resultSet.getString("OrgUrl") %></td>
<td><%=resultSet.getString("AboutOrg") %></td>
<td><a href="clientupdate.jsp?id=<%=resultSet.getString("OrgID")%>">update</a></td>
</tr>

 



<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>
