<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!-- Importing SQL drivers for Java -->
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!-- ------------------------------ -->

<!-- Configuring SQL to connect with Database -->
<%
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/SSD";
String userId = "root";
String password = "HimaSava123";
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!-- ---------------------------------------- -->

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
	padding: 20px 20px;
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
	margin-left: 45%;
	
}

.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
}

table, th {  
  border: 2px solid black;
  text-align: left;
  font-size: 25px;
  font-style: bold;
	font-variant: normal;
	font-weight: 700;
	line-height: 20px;
}

table, td{
	border: 2px solid black;
  text-align: left;
  font-size: 15px;
  font-style: bold;
	font-variant: normal;
	font-weight: 400;
	line-height: 20px;
}

table {
  border-collapse: collapse;
  width:70%; 
    margin-left:15%; 
    margin-right:15%;
}



.center {
  margin: auto;
  
}
.title {
	border-collapse: collapse;
  	width:70%; 
    margin-left:15%; 
    margin-right:15%;
    font-size: 25px;
  	font-style: bold;
	font-variant: normal;
	font-weight: 700;
	line-height: 20px;
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
  	
  	<!-- Display Table -->
  	<table class="centre">
  		<thead>
  			<h2 class="title">Collector Details</h2>
  		</thead>
    	<tbody>
    		<!-- Table Header Declaration -->
      		<tr>
        		<th>ID</th>
        		<th>Collector Name</th>
        		<th>Defaulter ID</th>
        		<th>Collateral ID</th>
        		<th>Loan ID</th>
        		<th>Status</th>
      		</tr>
      			<!-- Extract required fields from SQL Database -->
	       	<%
				try{ 
					connection = DriverManager.getConnection(connectionUrl, userId, password);
					statement=connection.createStatement();
					String sql ="SELECT * FROM SSD.collector2;";
					String st,cl = "red";
					resultSet = statement.executeQuery(sql);
					
					while(resultSet.next()){
						st = resultSet.getString("Status");
						if(st.equals("Pending")){
							cl = "red";
						}						
						else if(st.equals("Done")){
							 cl = "green";					
						}
			%>
			<!-- ----------------------------------------- -->		
			<tr>						
				<!-- Displaying Values acquired from SQL -->
				<td><%=resultSet.getInt("idCollector")%></td>
				<td><%=resultSet.getString("FName")%></td>	
				<td><%=resultSet.getInt("DefaulterID")%></td>	
				<td><%=resultSet.getInt("CollateralInfo")%></td>	
				<td><%=resultSet.getInt("LoanID")%></td>	
				<td style="color:<%=cl%>;"><%=st%></td>	
				<!-- ---------------------------------- -->		
			</tr>
						
			<%		}				
				} 
	       		catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</tbody>
	</table>
  	<!-- ------------- -->
  
  	<!-- Redirection Options -->
	<a href="Home_Page.jsp" ><button type="button">Home Page</button></a>
	<!-- ------------------- -->
  	
  	<!-- Adding Footer -->
  	<%@ include file="footer.jsp"%>
  	<!-- ------------- -->
</body>
</html>