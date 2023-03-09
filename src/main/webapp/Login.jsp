<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <title>Document</title>
    <script> 
function validate()
{ 
     var UserID = document.form.UserID.value; 
     var password = document.form.password.value;
 
     if (UserID==null || UserID=="")
     { 
     alert("UserID cannot be blank"); 
     return false; 
     }
     else if(password==null || password=="")
     { 
     alert("Password cannot be blank"); 
     return false; 
     } 
}
</script> 
</head>
<body>
    <div >
        <img src="chiselonlogo.png" alt="" height="50px" width="50px" style="margin-left: 110px; margin-top: 30px;">
        <h2 style="margin-left: 400px; font-size:x-large;" >WELCOME TO CRPO</h2>

    </div>
    
    <div class="wrapper fadeInDown">
        <div id="formContent">
          <!-- Tabs Titles -->
          <h2 class="active"> Admin </h2>
          <h2 class="inactive underlineHover">Recruiter </h2>
          <h2 class="inactive underlineHover">ITS </h2>
          <h2 class="inactive underlineHover">Client </h2>
          <!-- Icon -->
          <div class="fadeIn first">
            <h4>Login</h4>
          </div>
      
          <!-- Login Form -->
         <form name="form" action="LoginServlet" method="post" onsubmit="return validate()">
            <input type="number" id="login" class="fadeIn second" name="UserID" placeholder="UserID">
            <input type="password" id="password" class="fadeIn third" name="password" placeholder="Password">
            <!-- <input type="submit" class="fadeIn fourth" value="Log In" onclick="login()"> -->
            <input type="submit" value="Login"></input>
            
          </form>
          
          <td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? ""
         : request.getAttribute("errMessage")%></span></td>
      
          <!-- Remind Passowrd -->
          <div id="formFooter">
            <a class="underlineHover" href="#">Forgot Password?</a>
          </div>
      
        </div>
      </div>
     
</body>
</html>
