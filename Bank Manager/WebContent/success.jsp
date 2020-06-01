<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<!-- Links for adding Bootstrap -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script>
	$(document).ready(function(){
		$("#Modal").modal('show');
	});
</script>
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
	background-color:-webkit-linear-gradient(to right, #C4E0E5, #4CA1AF); 
	max-width:900px; 
	padding-top:150px;
}

.modal-content {
	border: green 3px solid;
}

.modal-title {
	color: green;
}

</style>
<!-- --------------------- -->

<title>Bank</title>
</head>
<body>
	<!-- Adding Header -->
	<%@ include file="header.jsp"%>
	<!-- ------------- -->
	
	<div class="container-fluid">
		<div class="modal modal fade" id="Modal">
	    	<div class="modal-dialog modal-lg modal-dialog-centered">
    	  		<div class="modal-content">
        			<!-- Modal Header -->
        			<div class="modal-header">
          			<h4 class="modal-title">Success</h4>
          			<button type="button" class="close" data-dismiss="modal">&times;</button>
        			</div>
    				<!-- --------------- -->
    				    
        			<!-- Modal body -->
        			<div class="modal-body">
          			You have been <b>registered!</b>
        			</div>
        			<!-- ---------- -->
        			
			        <!-- Modal footer -->
        			<div class="modal-footer">
          			<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        			</div>
        			<!-- ------------ -->
        			
		      </div>
    		</div>
  		</div>
  		<!-- Success Message -->
		<div class="alert alert-success" role="alert">
  			<h1 class="alert-heading">Success!</h1>
  			<p>Congratulations you have been registered as a bidder!<br>Now you can access any auction that is open.</p>
  			<hr>
  			<p class="mb-0"><b>Warning!</b><br> If you forget your password or any details have to be updated please approach the nearest bank.</p>
		</div>
		<!-- --------------- -->
		
	</div>
	<!-- Return to Home Page button -->
	<div class="form-group">
	    <div class="offset-sm-5">
    	  <a href="Home_Page.jsp" type="button" class="btn btn-primary btn-lg">Home Page</a>
    	</div>
  	</div>
  	<!-- ------------------------- -->
  	
  	<!-- Adding Footer -->
  	<%@ include file="footer.jsp"%>
  	<!-- ------------- -->
</body>
</html>