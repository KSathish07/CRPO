<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,	initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"> </script>
        <style>
            *{
                padding:0;
                margin:0;
            }

            body{
                height: 600px;
                width: 100%;
                background-color: #56baed;

            }
            .forms{
                background-color: #fff;
                margin: 100px 350px;                
                border: 1px solid;
                padding: 10px;
                box-shadow: 2px 2px 2px 2px #888888;
                border-radius: 10px;

            }            

            .forms button{
                margin-top: 250px;
                
            }
            ul li
   {
    list-style: none;
   }
   .header
   {
    border: 1px solid black;
    box-shadow: 2px 2px 2px 2px;
   }
            
        </style>
        <script>
            
            function nextpage(){
                var ch1=f1.role.selectedIndex;
                var ch2=f2.action.selectedIndex;
                if((ch1==1)&&(ch2==1))
                {
                    // alert("goto admin add page"); 
                    window.location.href= "Adminregister.html" 
                                   
                    
                                      
                }
                if((ch1==1)&&(ch2==2))
                {
                    // alert("goto admin view page");  
                    window.location.href= "AdminListDesign.html"        

                    
                }
                if((ch1==1)&&(ch2==3))
                {
                    // alert("goto admin Edit page"); 
                    window.location.href= "EditAdminList.html"                            

                    
                }

                if((ch1==1)&&(ch2==4))
                {
                    // alert("goto admin Delete page"); 
                    window.location.href= "delete.html"
                   
                }
                if((ch1==4)&&(ch2==1))
                {
                    // alert("goto client add page"); 
                    window.location.href= "ClientRegister.html" 
                                   
                    
                                      
                }
                if((ch1==4)&&(ch2==3))
                {
                    // alert("goto client add page"); 
                    window.location.href= "clientindex.jsp" 
                                   
                    
                                      
                }

            }


            function clearpage()
            {
                // alert("you successfully cancel the page");
                
                location.reload();               
                
            }
            function logout()
        {
            // alert("sucessfully logged out")
            window.location.href = "login.html#"
        }
        </script>

    </head>
    <body>

       
        <div class="header">
            <ul class="headerul">
                <li><img src="chiselonlogo.png" alt="" style="height: 50px; width: 50px; margin-left: 110px; margin-top: 30px;"></li>
                <li><h1 style="margin-left: 400px; margin-top: -40px; color: #fff;">HELLO ADMIN, WELCOME TO CRPO</h1></li>
                <li><button class='btn btn-success pull-right' onclick="logout()" style="margin-right: 80px; margin-top: -55px;">Logout </button></li>
            </ul>
        </div>

        

        
        
        <div  class="forms" >
            <div class="row">
                <div class="col-sm-6">
                    <div class="form1">
                
                        <form name="f1">
                            <table align="center">
                                <tr>
                                    
                                    <td><select class="form-select" name="role" id="r1">
                                        <option selected>---Select Role--</option>
                                        <option value="Admin">Admin</option>
                                        <option value="Recruiter">Recruiter</option>
                                        <option value="ITS">ITS</option>
                                        <option value="Client">Client</option>
                                    </select></td>
                                </tr>                       
                
                            </table>
                
                        </form>
        
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form2">
                        <form name="f2">
                            <table align="center">
                                <tr>
                                    
                                    <td><select class="form-select"  name="action" id="a1">
                                        <option selected>---Select Action--</option>
                                        <option value="">Add</option>
                                        <option value="">View</option>
                                        <option value="">Edit</option>
                                        <option value="">Delete</option>
                                    </select></td>
                                </tr>
                                
                            </table>
                
                        </form>
                    </div>  
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6"><button type="submit" class="btn btn-primary" onclick="nextpage();">  Proceed</button></div>
                <div class="col-sm-6"><button class="btn btn-primary" onclick="clearpage()">Cancel</button> </div>
            </div>
        </div>
        
    </body>
</html>