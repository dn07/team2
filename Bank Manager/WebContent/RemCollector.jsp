<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Adding css components -->
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

.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
}

.container-fluid {
	background-color: #4CA1AF; 
	max-width:900px;
}

.control-label {
	margin-top: 70px;
	margin-left: 135px;
}

.was-validated {
	border: blue
}


</style>
<!-- --------------------- -->

<meta charset="ISO-8859-1">
<title>Bank</title>
	<meta charset="utf-8">
	<!-- Adding Bootstrap files -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  	<!-- ----------------------- -->
  	
</head>
<body style="background: #4CA1AF;">
	<!-- Adding Header -->
	<%@ include file="header.jsp"%>
	<!-- ------------- -->

	<div class="container-fluid">
		<label class="control-label"><h2><b>Remove Collector</b></h2></label>
		<!-- Form Entry Labels -->
		<form class="was-validated" action="remC">
  			<div class="form-group row">
    			<label class="col-sm-2 col-form-label" for="id"><b>Collector ID:</b></label>
    			<div class="col-sm-10">
    				<input type="tel" pattern = "[0-9]*" class="form-control" id="id" name="id" placeholder="Enter Id" oninvalid="this.setCustomValidity('Enter only numbers')" oninput="setCustomValidity('')" title = "Example: 1" required>
    			</div>
  			</div>
  			<div class="form-group row">
    			<label class="col-sm-2 col-form-label" for="firstname"><b>First Name:</b></label>
    			<div class="col-sm-10">
    				<input type="text" pattern = "[A-Za-z]*" class="form-control" id="first name" name="first name" placeholder="Enter First Name" oninvalid="setCustomValidity('Only Letters')" oninput="setCustomValidity('')" required>
    			</div>
  			</div>
  			
  			
  			<!-- Submit button to submit form -->
  			<div class="form-group">
    			<div class="col-sm-10 offset-sm-6">
      				<button type="submit" class="btn btn-primary btn-lg">Submit</button>
      				<a href="Home_Page.jsp"><button type="button">Home Page</button></a>
    			</div>
  			</div>
  			<!-- ---------------------------- -->
  			
		</form>
		<!-- ----------------- -->
		
	</div>
	
	<%@ include file="footer.jsp"%>
</body>
</html>