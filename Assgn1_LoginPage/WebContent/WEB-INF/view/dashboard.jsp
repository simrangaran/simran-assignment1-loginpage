<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DashBoard</title>
</head>
<style>
body
{
 margin:0;
 padding:0;
 font-family:sans-serif;
 background:url(https://i.pinimg.com/originals/af/8d/63/af8d63a477078732b79ff9d9fc60873f.jpg) no-repeat;
 background-size:cover;
}
h2
{
 width:280 px;
 position:absolute;
 top:40%;
 left:40%;
 transform:translate(-50%,-50%)
 color:white;
}
input
{
 width:280 px;
 position:absolute;
 top:60%;
 left:60%;
 transform:translate(-50%,-50%)
 color:white;
}
</style>
<body>
<h2>WELCOME ${username}!!</h2>
<form action="/Login_Page">
<input type="submit" value="LOGOUT"/>
</body>
</html>