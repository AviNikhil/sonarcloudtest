<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style>
h1{
font-size : 40px;
}
body{
  background-image: url('https://png.pngtree.com/thumb_back/fw800/background/20220713/pngtree-train-blue-web-glossy-icon-speed-cargo-train-photo-image_8677090.jpg');
  background-repeat: no-repeat;
  backgroung-opacity: 0.5%;
  background-attachment: fixed;
  background-position: center;
  class : center;
  font-size:20px;
}
</style>
</head>
<body>
<form action="login" method="post">
<br>
<br>
<br>
<br>
<br>
<center><h1><b>Login</b></h1></center>
<br>
<center>
UserName     :   <input type="text" name="username" placeholder="Username" required/><br><br><br>
Password     :   <input type="password" name="password" placeholder="password"/><br><br><br>
                 <input type ="submit" value="login"/><input type="reset" value="Clear"/>
</center>
</form>
</body>
</html>