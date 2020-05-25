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
</head>
<body>
	<%@ include file="header.jsp"%>
	<main>
		<section class="WelcomeMes">
			<h1>Welcome Bank Manager</h1>
		</section>
		<section class="Options">
			<table>
  				<tr>
    				<th><a href="#Collector Info">Collector Info</a> </th>
    
			    </tr>
				<tr>
    				<th><a href="AddCollector.jsp">Add Collector</a></th>
    
				</tr>
				<tr>
    				<th><a href="#Report">Report</a> </th>
    
				</tr>
				<tr>
    				<th><a href="#Report">Report</a></th>
    
				</tr>
			</table>
		</section>
	</main>
	<div class="footer"><%@ include file="footer.jsp"%>
	</div>
</body>
</html>