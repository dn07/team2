<%@page import="Bankruptcy.Insert_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String FirstName=request.getParameter("FirstName");
String LastName=request.getParameter("LastName");
String LoanId=request.getParameter("LoanId");
String BankruptcyId =request.getParameter("BankruptcyId");
String Phone =request.getParameter("Phone");

 
Insert_Values obj_Insert_Values=new Insert_Values();

obj_Insert_Values.insert_values(FirstName, LastName, LoanId, BankruptcyId, Phone);


%>
SUCCESS


</script>
</body>
</html>