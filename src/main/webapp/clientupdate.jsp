<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from addclient where OrgID="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <title>Client Edit Form</title>
</head>
<style>
    body {
        background-color: #56baed;
    }

    h2 {
        text-align: center;
    }

    ul li {
        list-style: none;
    }

    #success_message {
        display: none;
    }

    .container {
        height: 10px;
        width: 1280px;
        margin-top: 20px;

    }
    .control-label
    {
        margin-top: -5px;
        text-align:center;
    }

</style>

<body>
    <div class="header">
        <ul class="headerul">
            <li><img src="chiselonlogo.png" alt=""
                    style="height: 50px; width: 50px; margin-left: 90px; margin-top: 30px;"></li>
            <li><button class='btn btn-primary pull-right' onclick="home()"
                    style="margin-right: 1200px; margin-top: -40px;">Home </button></li>
            <!-- <li><h1 style="margin-left: 400px; margin-top: -40px; color: #fff;">HELLO ADMIN, WELCOME TO CRPO</h1></li> -->
            <li><button class='btn btn-success pull-right' onclick="logout()"
                    style="margin-right: 80px; margin-top: -55px;">Logout </button></li>
        </ul>
    </div>

    <div class="container">

        <form class="well form-horizontal" action="clientupdate-process.jsp" method="post" id="contact_form">
            <fieldset>

                <!-- Form Name -->
                <legend>
                    <h2><b> Edit client</b></h2>
                </legend><br>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="col-md-4 control-label">Organization ID</label>
                            <input type="hidden" name="id" value="<%=resultSet.getString("OrgID") %>">
                            <div class="col-md-8 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input type="text" name="id" class="form-control" readonly value="<%=resultSet.getString("OrgID") %> ">
                                    
                                </div>
                            </div>
                        </div>
        
                        <div class="form-group">
                            <label class="col-md-4 control-label">Organization Name</label>
                            <div class="col-md-8 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input name="OrgName" placeholder="Organization Name" class="form-control" type="text" value="<%=resultSet.getString("OrgName") %>" >
                                </div>
                            </div>
                        </div>
        
                        <!-- Text input-->
        
                        <div class="form-group">
                            <label class="col-md-4 control-label">Organization contact Person Full Name </label>
                            <div class="col-md-8 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input name="org_pname" placeholder="Full Name" class="form-control" type="text" value="<%=resultSet.getString("ContactPersonFullName") %>">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Organization Alternate contact Person Full Name  </label>
                            <div class="col-md-8 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input name="org_palname" placeholder="Full Name" class="form-control" type="text" value="<%=resultSet.getString("ContactAltPersonFullName") %>">
                                </div>
                            </div>
                        </div>
        
                        <!-- Text input-->
           
                        <div class="form-group">
                             <label class="col-md-4 control-label">Organization Contact Email ID</label>
                             <div class="col-md-8 inputGroupContainer">
                                 <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <input name="email" placeholder="E-Mail Address" class="form-control" type="text" value="<%=resultSet.getString("EmailId") %>">
                                 </div>
                             </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">Organization Alternate contact Person Email ID </label>
                            <div class="col-md-8 inputGroupContainer">
                                <div class="input-group">
                               <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                               <input name="altemail" placeholder="E-Mail Address" class="form-control" type="text" value="<%=resultSet.getString("AltEmailId") %>">
                                </div>
                            </div>
                       </div>

                       <div class="form-group">
                        <label class="col-md-4 control-label">Organization Contact Mobile Number </label>
                        <div class="col-md-8 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                <input name="contact_no1" placeholder="(+91)" class="form-control" type="n" value="<%=resultSet.getString("MobileNum") %>">
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="col-md-6">
                      <!-- Text input-->

                <div class="form-group">
                    <label class="col-md-4 control-label">Organization Alternate Contact Mobile Number </label>
                    <div class="col-md-8 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                            <input name="contact_no2" placeholder="(+91)" class="form-control" type="n" value="<%=resultSet.getString("AltMobileNum") %>">
                        </div>
                    </div>
                </div>

                <!-- Text input-->

                <div class="form-group">
                    <label class="col-md-4 control-label">Password</label>
                    <div class="col-md-8 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="user_password" name="user_password" placeholder="Password" class="form-control" type="password" value="<%=resultSet.getString("Pwd") %>">
                        </div>
                    </div>
                </div>

                <!-- Text input-->

                <div class="form-group">
                    <label class="col-md-4 control-label">Confirm Password</label>
                    <div class="col-md-8 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="confirm_password" placeholder="Confirm Password" class="form-control"
                                type="password" value="<%=resultSet.getString("CPwd") %>">
                        </div>
                    </div>
                </div>

                <!-- Text Input -->

                <div class="form-group">
                    <label class="col-md-4 control-label">Technologies </label>
                    <div class="col-md-8 selectContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                            <select name="technologies" class="form-control selectpicker">
                                <option value="<%=resultSet.getString("Tech") %>">Select your Technologies </option>
                                <option>Technologies  1</option>
                                <option> Technologies 2</option>
                                <option>Technologies  3</option>
                                <option>Technologies  4</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label">Domain</label>
                    <div class="col-md-8 selectContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                            <select name="domain" class="form-control selectpicker">
                                <option value="">Select your Domain</option>
                                <option>Domain 1</option>
                                <option> Domain 2</option>
                                <option>Domain 3</option>
                                <option>Domain 4</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label">Enter Organization URL</label>
                    <div class="col-md-8 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="url" placeholder="Eg: https://www.example.com/" class="form-control" type="url" value="<%=resultSet.getString("OrgUrl") %>">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label">About Organization </label>
                    <div class="col-md-8 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="about_org" placeholder="Write about Organization" class="form-control" type="text" value="<%=resultSet.getString("AboutOrg") %>">
                        </div>
                    </div>
                </div>

                    </div>
                  </div>

                

                
                <!-- Success message -->
                <div class="alert alert-success" role="alert" id="success_message">Success <i
                        class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>

                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4"><br>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button onclick="add()" type="submit"
                            class="btn btn-success">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Edit client
                            <span></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
                    </div>
                </div>

            </fieldset>
        </form>
        </div>
    <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
    <script src="Adminregister.js"></script>
    <script>
        function add(){
            alert('sucessfully editted');
        }
    </script>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>