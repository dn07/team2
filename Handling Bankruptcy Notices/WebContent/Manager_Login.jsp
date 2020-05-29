<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN</title>
</head>
<body style='background-color: #CEF6F5;'>
<hr>
         <center>
        <h3><font face = "Verdana" size = "12">VIT BANK</font></h3>
                <hr>
        <br>
        </center>

        
<center><h3><font face = "Verdana" size = "6">Login as Bank Manager</font></h3></center>
<center>
                <div align ="center" style="width:450px; height:300px; background: #81DAF5;border-radius: 40px;">
        <pre>
           
           
       <form action="controllerservlet" method="GET">
<input type="hidden" name="command" value="REG" />
BANK ID:<br/><input type="text" name="buyer id"/>
<br/>
PASSWORD:<br/><input type="password" name="pwd"/>
<br/>
<a href="form.jsp"><button type="button" style="background-color: oldlace; border-radius: 50px;width: 200px;height:30px;">Log In</button></a>

            </pre>
</div>        
</center>
<br><br><br>
        <a href ="Form_all.jsp"><button type="button" style="background-color: oldlace; border-radius: 10px;width: 100px;height:30px;">Back</button></a><br><br>

</body>
</html>