<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.Connection"%>
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
  font-size: 25px;
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
<meta charset="ISO-8859-1">
<title>Bank</title>
</head>
<body>
	<%@ include file="header.jsp"%>
<div class="container">
  
  <table class="centre">
  	<thead>
  		<h2 class="title">Collector Details</h2>
  	</thead>
    <tbody>
      <tr>
        <th>ID</td>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Mobile</th>
        <th>PAN</th>
      </tr>
       	<%
						try{ 
						connection = DriverManager.getConnection(connectionUrl, userId, password);
						statement=connection.createStatement();
						String sql ="SELECT * FROM SSD.collector2;";
						String st,cl = "red";
						resultSet = statement.executeQuery(sql);
						
						while(resultSet.next()){
							st = resultSet.getString("Status");
							System.out.println(st);
							if(st.equals("Pending")){
								cl = "red";
								System.out.println("Here");
							}
							
							else if(st.equals("Done")){
								 cl = "green";
								 System.out.println("Here2");
							}
							
						%>
						
							<tr>
							
								<td><%=resultSet.getInt("idCollector")%></td>
								<td><%=resultSet.getString("FName")%></td>	
								<td><%=resultSet.getInt("DefaulterID")%></td>	
								<td><%=resultSet.getInt("CollateralInfo")%></td>	
								<td><%=resultSet.getInt("LoanID")%></td>	
								<td style="color:<%=cl%>;"><%=st%></td>	
							
							</tr>
						
						<%		}				
						} catch (Exception e) {
						e.printStackTrace();
						}
						%>
    </tbody>
  </table>
  
	<a href="Home_Page.jsp" target="_blank"><button type="button">Home Page</button></a>
  	<%@ include file="footer.jsp"%>
</body>
</html>