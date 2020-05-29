<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script>
	$(document).ready(function(){
		$("#Modal").modal('show');
	});
</script>
<style>
	body {
	background: #4CA1AF; /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #C4E0E5, #4CA1AF);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to down, #C4E0E5, #4CA1AF);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

a {
	font-family: "Roboto";
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 20px;
}

.logout{
	display: flex;
	align-item: centre;
	justify-content: centre;
	text-anchor: start;
}

.panel-footer {
	display: flex;
	padding: 3% 10%;
}

.button-panel {
	display: flex;
	display: flex;
	padding: 0% 10%;
	width: 50%;
}

.header-footer-item {
	display: inline-block;
	text-align: right;
	align-self: center;
}

.button-item {
	align-self: center;
	text-align: justify;
}

button {
	background-color: black;
	color: white;
	border: none;
	height: 40px;
	line-height: 40px;
	text-align: center;
	width: 10em;
}

.toast-message {
	text-align: center;
	font-size: 16px;
	position: absolute;
	right: 0;
	bottom: 0;
	margin-right: 10%;
	margin-bottom: 6%;
}

.submit-button {
	position: absolute;
	right: 0;
	bottom: 0;
	margin-right: 10%;
	margin-bottom: 10%;
}

.WelcomeMes {
	
	display: flex;
	color: #fff;
	align-items: center;
    justify-content: center;
    text-anchor: start;
}

.Options {
	border: 1px solid black;
  	border-collapse: collapse;
  	width: 150px;
  	padding: 5px 10px;
  	
}
.Options a {
	float: right;
	color: #000000;
	text-align: center;
	padding: 5px 16px;
	text-decoration: none;
	font-size: 14px;
	opacity: 1;
}
.Options a:hover {
	background-color: #ddd;
	color: black;
}

.Options a.active {
	background-color: #4CAF50;
	color: white;
}

.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
}
	
</style>
<title>Bank</title>
</head>
<body>
	<%@ include file="header.jsp"%>
<div class="container-fluid" style="background-color:-webkit-linear-gradient(to right, #C4E0E5, #4CA1AF); max-width:900px; padding-top:150px">
<div class="modal modal fade" id="Modal" >
    <div class="modal-dialog modal-lg modal-dialog-centered" >
      <div class="modal-content" style="border:red 3px solid;">
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title" style="color:red">Registration Failed!</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          You have <b>failed</b> to register!
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
<div class="alert alert-danger" role="alert">
  <h1 class="alert-heading">Registration Failed!</h1>
  <p>You have failed to register as a bidder<br><b>Please</b> cross check your details before entering<br><b>Please</b> check if you are already a registered bidder.</p>
  <hr>
  <p class="mb-0"><b>Warning!</b><br> If you forget your password or any details have to be updated please approach the nearest bank.</p>
</div>
</div>
<div class="form-group">
    <div class="offset-sm-5">
      
      <a href="Home_Page.jsp" type="button" class="btn btn-primary btn-lg">Home Page</a>
      <a href="AddCollector.jsp" type="button" class="btn btn-primary btn-lg">Re-register</a>
    </div>
  </div>
  <%@ include file="footer.jsp"%>
</body>
</html>