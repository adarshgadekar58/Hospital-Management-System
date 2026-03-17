<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Patient Login</title>

<link rel="stylesheet" href="css/style.css">

<style>

.login-container{
width:400px;
margin:120px auto;
background:white;
padding:30px;
border-radius:10px;
box-shadow:0 5px 20px rgba(0,0,0,0.1);
text-align:center;
}

.login-container h2{
margin-bottom:20px;
color:#0ea5a4;
}

.login-container input{
width:100%;
padding:12px;
margin:10px 0;
border-radius:6px;
border:1px solid #ccc;
}

.login-container button{
width:100%;
padding:12px;
background:#0ea5a4;
border:none;
color:white;
border-radius:6px;
cursor:pointer;
}

.login-container button:hover{
background:#0c8f8d;
}

</style>

<script>

function validateForm(){

var email=document.forms["loginForm"]["email"].value;
var password=document.forms["loginForm"]["password"].value;

if(email=="" || password==""){
alert("Please fill all fields");
return false;
}

}

</script>

</head>

<body>


<div class="login-container">

<h2>Patient Login</h2>


<%
String error=(String)request.getAttribute("error");

if(error!=null){
%>

<p style="color:red;"><%=error%></p>

<%
}
%>


<form name="loginForm" action="LoginServlet" method="post" onsubmit="return validateForm()">

<input type="text" name="name" placeholder="Enter Name">

<input type="password" name="password" placeholder="Enter Password">

<button type="submit">Login</button>

</form>


<p style="margin-top:15px;">
Don't have an account? 
<a href="patientRegister.jsp">Register</a>
</p>


</div>

</body>
</html>