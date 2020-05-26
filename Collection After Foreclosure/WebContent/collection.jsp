<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="//fonts.googleapis.com/css?family=Roboto" />
<style>
h1 {
	font-family: "Roboto";
	font-size: 24px;
	font-style: normal;
	font-variant: normal;
	font-weight: 700;
	line-height: 26.4px;
}

h3 {
	font-family: "Roboto";
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 700;
	line-height: 15.4px;
}

p, a {
	font-family: "Roboto";
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 20px;
}

blockquote {
	font-family: "Roboto";
	font-size: 21px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 30px;
}

pre {
	font-family: "Roboto";
	font-size: 13px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 18.5714px;
}

body {
	margin: 0;
	font-family: Roboto, Helvetica, sans-serif;
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
	<form action="collectionPage">
		<div class="panel-footer">
			<h2>Welcome Collector</h2>
			<span style="width: 100%;" class="header-footer-item">
				<button type="button" name="logout">Logout</button>
			</span>
		</div>
		<div class="button-panel">
			<span class="button-item"> <a href="checkStatus.jsp"><button
						style="width: 200%;" type="button" name="checkStatus">Check
						Status</button></a>
			</span> <span class="button-item"> <a href="updateStatus.jsp"
				target="_blank"><button style="width: 200%; margin-left: 300%;"
						type="button" name="changeStatus" onClick="myFn()">Change
						Status</button></a>
			</span>
		</div>
		<!-- <p class="toast-message">
			Status Changed to <br>Promise To Pay
		</p>
		<div class="submit-button">
			<span style="width: 100%;" class="header-footer-item">
				<button type="button" name="updateStatus">Update Status</button>
			</span>
		</div> -->
	</form>
	<div class="footer"><%@ include file="footer.jsp"%>
	</div>
	<script>
		function myFn() {
			window.loocation.href = 'updateStatus.jsp')
		}
	</script>
</body>
</html>