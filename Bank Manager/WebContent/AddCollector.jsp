<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="ISO-8859-1">
<title>Bank</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body style="background: #4CA1AF">
	<%@ include file="header.jsp"%>
  <!-- Brand/logo -->

<div class="container-fluid" style="background-color: #4CA1AF; max-width:900px">
<label class="control-label col-sm-7" style="margin-top: 70px;margin-left: 135px"><h2><b>Add Collector</b></h2></label>
<form class="was-validated needs-validation" style="border: blue" action="addC">
  <div class="form-group row">
    <label class="col-sm-2 col-form-label" for="firstname"><b>First Name:</b></label>
    <div class="col-sm-10">
    <input type="text" pattern = "[A-Za-z]*" class="form-control" id="first name" name="first name" placeholder="Enter First Name" oninvalid="setCustomValidity('Only Letters')" oninput="setCustomValidity('')" required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label" for="lastname"><b>Last Name:</b></label>
    <div class="col-sm-10">
    <input type="text" pattern = "[A-Za-z]*" class="form-control" id="last name" name="last name" placeholder="Enter Last Name" oninvalid="setCustomValidity('Only Letters')" oninput="setCustomValidity('')" required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label" for="email"><b>Email:</b></label>
    <div class="col-sm-10">
    <input type="email"  class="form-control" id="email" name="email" placeholder="Enter email" required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label" for="phone"><b>Mobile No.</b></label>
    <div class="col-sm-10">
    <input type="tel" pattern = "[0-9]*" class="form-control" id="phone" name="phone" placeholder="Enter Phone Number" oninvalid="this.setCustomValidity('Enter only numbers')" oninput="setCustomValidity('')" title = "Example: 9999999999" required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label" for="pan"><b>PAN Number</b></label>
    <div class="col-sm-10">
    <input type="text" pattern = "[A-Z]{5}[0-9]{4}[A-Z]{1}" class="form-control" id="pan" name="pan" placeholder="Enter PAN Number" oninvalid="this.setCustomValidity('Incorrect PAN Number')" oninput="setCustomValidity('')" title = "Example: AAAAA1234A" required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label" for="aadhar"><b>Aadhar:</b></label>
    <div class="col-sm-10">
    <input type="text" pattern = "^\d{4}\s\d{4}\s\d{4}$" class="form-control" id="aadhar" name="aadhar" placeholder="Enter Aadhar Number in 0000 0000 0000 format" oninvalid="this.setCustomValidity('Incorrect Aadhar Number')" oninput="setCustomValidity('')" title = "Example: 0000 0000 0000" required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label" for="address"><b>Address:</b></label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="address" name="address" placeholder="Enter Address"required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label" for="dob"><b>Date of Birth:</b></label>
    <div class="col-sm-10">
    <input type="text" pattern = "^(1[0-2]|0[1-9])/(3[01]|[12][0-9]|0[1-9])/[0-9]{4}$" class="form-control" id="dob" name="dob" placeholder="Enter in  format mm/dd/yyyy " oninvalid="this.setCustomValidity('Incorrect format')" oninput="setCustomValidity('')" title = "Example: 01/02/2003"required>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-10 offset-sm-6">
      <button type="submit" class="btn btn-primary btn-lg">Submit</button>
      <a href="Home_Page.jsp"><button type="button">Home Page</button></a>
    </div>
  </div>
  
</form>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>