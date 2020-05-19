<html>
<head><title>BIDDER REGISTRATION FORM</title>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<h1 style="text-align:center">BIDDER REGISTRATION FORM</h1>
<br/>
<div>
<form action="controllerservlet" method="GET">
<input type="hidden" name="command" value="REG" />
BUYER ID:<br/><input type="text" name="buyer id"/>
<br/>
<br/>
FIRST NAME:<br/><input type="text" name="fname"/>
<br/>
<br/>
LAST NAME:<br/><input type="text" name="lname"/>
<br/>
<br/>
PHONE NUMBER:<br/><input type="number" name="phone number"/>
<br/>
<br/>
EMAIL:<br/><input type="email" name="email"/>
<br/>
<br/>
PASSWORD:<br/><input type="password" name="pwd"/>
<br/>
<br/>
<input type="submit" value="submit"/>
</form>
</div>
</body>
</html>