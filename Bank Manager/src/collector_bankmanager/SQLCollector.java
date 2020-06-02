package collector_bankmanager;

import java.sql.*;

/*
 * Author:				Himanshu Savargaonkar
 * Reg. No.:			18BEC0735
 * Name:				SQLCollector.java
 * Purpose:				Connect to SQL Database. Store data from Collector object to database.
 * Class Used by:		ServletCollector.java;
 * Classes Used:		Collector.java
 */

public class SQLCollector{
   // JDBC driver name and database URL
   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://localhost:3306/SSD";

   //  Database credentials
   static final String USER = "root";
   static final String PASS = "HimaSava123";
   
   /*
	 * Author:				Himanshu Savargaonkar
	 * Reg. No:				18BEC0735
	 * Function Name:		AddColl()
	 * Purpose:				Store data from Collector Obj to SQL Database
	 * Arguments:			Collector;
	 * Return:				Int(Status of database);
	 */
   public static int AddColl(Collector col) {
	   Connection conn = null;
	   Statement stmt = null;
	   ResultSet rs = null;
	   int status = 1, id = 1;
	   String sql;
   
	   try{
		   //Register JDBC driver
		   Class.forName("com.mysql.jdbc.Driver");

		   //Open a connection
		   conn = DriverManager.getConnection(DB_URL, USER, PASS);		   
		   
		   //Execute the query
		   stmt = conn.createStatement();
		   
		   sql = "SELECT idcollector FROM collector";
		   rs = stmt.executeQuery(sql);
		   
		   //Get last Collector ID stored in Database
		   while(rs.next())
		   {
			   id = rs.getInt("idcollector") + 1;  
		   }
		   
		   sql = "INSERT INTO collector " +
                   	"VALUES ("+ id + ",'" + col.getFname() + "', '"+ col.getLname() + "', '"+ col.getEmail() + "', '"+ col.getMobile() + "', '"+ col.getPAN() + "', '"+ col.getAdhar() + "', '"+ col.getAddress() + "','"+ col.getDOB() + "')";
		   stmt.executeUpdate(sql);
		   
	   }catch(SQLException se){
      //Handle errors for JDBC
		   se.printStackTrace();
		   //Set Status to Failed
		   status = 0;
	   }catch(Exception e){
      //Handle errors for Class.forName
		   e.printStackTrace();
	   }finally{
      //finally block used to close resources
		   try{
			   if(stmt!=null)
				   conn.close();
		   }catch(SQLException se){
		   }
		   try{
			   if(conn!=null)
				   conn.close();
		   }catch(SQLException se){
			   se.printStackTrace();
		   }
	   }
	   return status;
   }
   
   /*
	 * Author:				Himanshu Savargaonkar
	 * Reg. No:				18BEC0735
	 * Function Name:		AddColl()
	 * Purpose:				Delete row from SQL database based on the input from the Collector Object
	 * Arguments:			Collector;
	 * Return:				Int(Status of database);
	 */
   public static int RemColl(Collector col) {
	   Connection conn = null;
	   Statement stmt = null;
	   ResultSet rs = null;
	   int status = 1;
	   String sql;
   
	   try{
		   //Register JDBC driver
		   Class.forName("com.mysql.jdbc.Driver");

		   //Open a connection
		   conn = DriverManager.getConnection(DB_URL, USER, PASS);		   
		   
		   //Execute the query
		   stmt = conn.createStatement();
		
		   sql = "DELETE FROM ssd.collector WHERE idCollector=" + col.getId() + ";";		 
			   stmt.execute(sql);		   
		   
	   }catch(SQLException se){
      //Handle errors for JDBC
		   se.printStackTrace();
		   //Set Status to Failed
		   status = 0;
	   }catch(Exception e){
      //Handle errors for Class.forName
		   e.printStackTrace();
	   }finally{
      //finally block used to close resources
		   try{
			   if(stmt!=null)
				   conn.close();
		   }catch(SQLException se){
		   }
		   try{
			   if(conn!=null)
				   conn.close();
		   }catch(SQLException se){
			   se.printStackTrace();
		   }
	   }
	   return status;
   }
}				