<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
<title>ENSURE LOGIN</title>

<script> 
function validate()
{ 
 var email = document.form.email.value; 
 var password = document.form.password.value;
 
 if (email==null || email=="")
 { 
 alert("Username cannot be blank"); 
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
<body style="background-color:#F2F8F8; font-family: Candara;">
						
	<div class="container">
	<div class="row" style="padding-top:5%; padding-bottom : 2%;">
  <div class="col-sm-12" style="text-align:center;">
  
		<img class="img-circle" src="Insightzzz.png" width="20%"/>
  </div>
  </div>
  <div class="row">
  <div class="col-sm-4"></div>
  <div class="col-sm-4" style="background-color : white; box-shadow: 2px 2px 2px #888888; border: 1px solid #E9E9E9; padding : 1%;">
  <div class="panel panel-default" style="">
    <div class="panel-body">
	<p><h3 style="color:#8CC344;  font-weight : bold;">LOGIN</h3></p>
	<p>Enter your details below to continue</p>
	<form name="form" action="LoginServlet" method="post" onsubmit="return validate()">
  <div class="form-group">
    <div class="input-group">
    <i class="fa fa-envelope-o" aria-hidden="true" style=" font-size : 20px;  position:absolute;top:7px; z-index:999; width:34px; height : 34px; text-align : center; "></i><input type="email" name="email" class="form-control" placeholder="Email" style="padding-left : 40px;;">
       
  </div></div>
  <div class="form-group">
    <div class="input-group">
     <i class="fa fa-lock" aria-hidden="true" style="font-size : 20px; position:absolute;top:7px; z-index:999; width:34px; height : 34px; text-align : center;"></i><input type="password" name="password" class="form-control" placeholder="Password" style="padding-left : 40px;;">
	 </div>
  </div>
   <!-- refer to the video to understand request.getAttribute() -->
   <span style="color:red">
  <%=(request.getAttribute("errMessage") == null) ? "": request.getAttribute("errMessage")%>
  </span>
  
  <p><span style="font-family: Arial Bold;"><a href="#" style="color:inherit; font-family: Candara;">Forgot Password?</a></span><span style="float:right;">
  <button type="submit" class="btn btn-primary btn-lg" style="background-color : #8CC344; font-family: Arial Bold; border : none; border-radius: 0 !important; padding-left : 35%; padding-right : 35%; font-size : 18px; box-shadow : none;
   
    border: none;
   
    cursor: pointer;
    outline: inherit;">  Login  </button></span></p><br>
    <span style="font-family: Arial Bold;"><a href="JSPs/registration.jsp" style="color:inherit; font-family: Candara;">Register</span>
  </form>
	</div>
  </div>
  </div>
  <div class="col-sm-4"></div>

</div>

</div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>