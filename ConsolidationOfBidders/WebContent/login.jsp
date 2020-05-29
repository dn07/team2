<!-- Registered bidders will login via this page to access the application form for the auction -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN PAGE</title>
<link rel="stylesheet" type="text/css" href="css/style2.css"/>
</head>
<body>
<h1 style="text-align:center">BIDDER LOGIN</h1>
<br/>
<br/>
<div>
<form action="controllerservlet" method="GET">
<input type="hidden" name="command" value="LOGIN" />
BUYER ID:<br/><input type="text" name="buyer id"/>
<br/>
<br/>
PASSWORD:<br/><input type="password" name="pwd"/>
<br/>
<br/>
<input type="submit" value="login"/>
</form>
</div>

</body>
</html>