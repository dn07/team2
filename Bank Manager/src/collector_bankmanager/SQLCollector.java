package collector_bankmanager;

import java.sql.*;


public class SQLCollector{
   // JDBC driver name and database URL
   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://localhost:3306/SSD";

   //  Database credentials
   static final String USER = "root";
   static final String PASS = "HimaSava123";
   
   public static int SendData(Collector col) {
   Connection conn = null;
   Statement stmt = null;
   ResultSet rs = null;
   int tmp = 0, id = 1;
   String sql;
   
   try{
      //STEP 2: Register JDBC driver
      Class.forName("com.mysql.jdbc.Driver");

      //STEP 3: Open a connection
      System.out.println("Connecting to a selected database...");
      conn = DriverManager.getConnection(DB_URL, USER, PASS);
      System.out.println("Connected database successfully...");
      
      //STEP 4: Execute a query
      System.out.println("Inserting records into the table...");
      stmt = conn.createStatement();
      
      sql = "SELECT idcollector FROM collector";
      rs = stmt.executeQuery(sql);
      while(rs.next())
      {
    	  id = rs.getInt("idcollector") + 1;  
      }
      sql = "INSERT INTO collector " +
                   "VALUES ("+ id + ",'" + col.getFname() + "', '"+ col.getLname() + "', '"+ col.getEmail() + "', '"+ col.getMobile() + "', '"+ col.getPAN() + "', '"+ col.getAdhar() + "', '"+ col.getAddress() + "','"+ col.getDOB() + "')";
      stmt.executeUpdate(sql);
      System.out.println("Inserted records into the table...");

   }catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
      tmp = 1;
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
   System.out.println("Goodbye!");
   return tmp;
}
}