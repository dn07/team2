<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "customer";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body style='background-color: #CEF6F5;'>
<hr>
         <center>
        <h3><font face = "Verdana" size = "12">VIT BANK</font></h3>
                <hr>
        <br>
        </center>


<center>
<div align ="center" style="width:600px; height:400px; background: #81DAF5;border-radius: 40px;">
<br>
<br>
<table border="1">

<tr>
<td>Loan_id</td>
<td>Bankruptcy_id</td>
<td>Name</td>
<td>Phone_Number</td>
<td>View Document</td>
<td>Accept/Reject</td>




</tr>
</center>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM `users`";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Loan_id") %></td>
<td><%=resultSet.getString("Bankruptcy_id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("Phone_Number") %></td>
  <td>
    <a href="https://formdownload.org/wp-content/uploads/2013/04/State-of-Alabama-Bankruptcy-Proof-of-Claim-Form.pdf">View Document</a>
  </td>
<td>
      
          <a href="Accept.jsp">Accept</a>/
          <a href="Reject.jsp">Reject</a>
     
      </td>


</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>