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
	padding: 1% 1%;
	display: flex;
	color: #fff;
	align-items: center;
    justify-content: center;
    text-anchor: start;
    font-size: 45px;
    font-style: bold;
	font-variant: normal;
	font-weight: 700;
	line-height: 20px;
    
}

.Options {
	border: 1px solid black;
  	border-collapse: collapse;
  	width: 200px;
  	padding: 5px 10px;
  	font-size: 45px;
    font-style: bold;
	font-variant: normal;
	font-weight: 700;
	line-height: 20px;
  	
}

table a{
	padding: 10%,
	font-size: 45px;
    font-style: bold;
	font-variant: normal;
	font-weight: 700;
	line-height: 20px;
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
<!-- --------------------- -->

<meta charset="ISO-8859-1">
<title>Bank</title>
</head>
<body>
	<!-- Adding Header -->
	<%@ include file="header.jsp"%>
	<!-- ------------- -->

	<main>
		<!-- Welcome Message -->
		<section class="WelcomeMes">
			Welcome Bank Manager
		</section>
		<!-- --------------- -->
		
		<!-- Menu Bar for Navigation -->
		<section class="Options">
			<table>
  				<tr>
    				<th><a href="LoanInfo.jsp">Collector Loan Info</a> </th>
    
			    </tr>
				<tr>
    				<th><a href="AddCollector.jsp">Add Collector</a></th>
    
				</tr>
				<tr>
    				<th><a href="CollectorInfo.jsp">Registered Collectors</a> </th>
    
				</tr>
				<tr>
    				<th><a href="RemCollector.jsp">Remove Collector</a></th>
    
				</tr>
			</table>
		</section>
		<!-- ----------------------- -->
		
	</main>
	
	<!-- Adding Footer -->
	<div class="footer"><%@ include file="footer.jsp"%></div>
	<!-- ------------- -->
</body>
</html>