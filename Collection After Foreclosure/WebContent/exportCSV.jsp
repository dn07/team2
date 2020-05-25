<%@ page import="java.io.*,java.sql.*"%>
<html>
<body>
	<p>Hey</p>
	<%
		String filename = "C:\\Users\\Deepak\\Desktop\\test.csv";
	Connection conn = null;
	String url = "jdbc:mysql://localhost:3306/";
	String dbName = "collector";
	String driver = "com.mysql.jdbc.Driver";
	String userName = "root";
	String password = "deep";
	Statement stmt;
	try {
		FileWriter fw = new FileWriter(filename);
		fw.append("cid");
		fw.append(',');
		fw.append("lid");
		fw.append(',');
		fw.append("amount");
		fw.append('\n');
		Class.forName(driver).newInstance();
		conn = DriverManager.getConnection(url + dbName, userName, password);
		String query = "select * from loan";
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		while (rs.next()) {
			fw.append(rs.getString(1));
			fw.append(',');
			fw.append(rs.getString(2));
			fw.append(',');
			fw.append(rs.getString(3));
			fw.append('\n');
		}
		fw.flush();
		fw.close();
		conn.close();
		out.println("Successfully Created CSC file.");
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
</body>
</html>