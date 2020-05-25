<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="//fonts.googleapis.com/css?family=Roboto" />
<style>
body {
	background: #4CA1AF; /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #C4E0E5, #4CA1AF);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to down, #C4E0E5, #4CA1AF);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
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
	margin-left: 10%;
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

.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
}
</style>
<meta charset="ISO-8859-1">
<title>Index Page</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="panel-footer">
		<h2>Welcome Manager</h2>
		<form action="" method="post">
			<span style="width: 100%;" class="header-footer-item"> <a
				href="generateReport.jsp" target="_blank"><button type="button" name="submit">Generate
						Report</button></a>
				<button type="button">Logout</button>
			</span>
		</form>
	</div>
	<div class="footer"><%@ include file="footer.jsp"%>
	</div>
</body>
</html>