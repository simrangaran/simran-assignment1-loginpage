<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<style>
 body{
 margin:0;
 padding:0;
 font-family:sans-serif;
 background:url(https://us.123rf.com/450wm/unscrew/unscrew1603/unscrew160300005/53856886-astratto-geometrico-sfondo-nero-illustrazione-vettoriale-clip-art.jpg?ver=6) no-repeat;
 background-size:cover;
 }
 .login-box{
 width:280 px;
 position:absolute;
 top:40%;
 left:40%;
 transform:translate(-50%,-50%)
 color:white;
 }
 .login-box h1
 {
   font-size:40px;
   border-bottom:6px solid #4caf50;
   margin-bottom:50px;
   padding:13px 0;
 }
 .textbox
 {
   width:100%;
   overflow:hidden;
   font-size:20px;
   padding:8px 0;
   margin:8px 0;
   border-bottom:1px solid #4caf50;
 }
 .textbox input{
   border: none;
   outline: none;
   background:none;
   color:white;
   font-size: 18 px;
   width: 80px;
   margin: 0 10px;
 }
 .button
 {
  width: 100%;
  background:none;
  border:2px solid #4caf50;
  color:white;
  padding:5px;
  cursor:pointer;
  font-size:18 px;
 }
</style>
<body>
  <form class="regform" action=/Assgn1_LoginPage/login method="post"> 
    <div class="login-box">
       <h1>LOGIN</h1>
         <div class="textbox">
            <input type="text" placeholder="email" name="email" required/>
         </div>
         
         <div class="textbox">
           <input type="password" placeholder="Password" name="password" required/>
         </div>
         
      <input class="button" type="submit" value="LOG IN"/>
    </div>
    
  </br></br>
  <h3>${message}</h3>
</form>
</body>
</html>