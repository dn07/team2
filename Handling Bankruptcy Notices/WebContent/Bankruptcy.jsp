<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

`<html>
    <body  style='background-color: #CEF6F5;'>
         <center>        <hr>
        <h3><font face = "Verdana" size = "12">VIT BANK</font></h3>
               <hr>
        <br>
        </center>
        <center>
        <h3><font face = "Verdana" size = "6">BANKRUPTCY APPLICATION</font></h3>
        
        <div align ="center" style="width:450px; height:300px; background: #81DAF5;border-radius: 40px;">
        <form action="Bankruptcy Application" method="post">
            <pre><br><br><br>
      Bankruptcy id <input type="text" name="did"/><br>
      Loan id    <input type="text" name="lid"/><br>
      Name       <input type="text" name="name"/><br>
          Upload Proof <input type="file" name="file" size="50" />
                   <input type="submit" value="Upload File" />

      <a href="Success.jsp"><button type="button" style="background-color: oldlace; border-radius: 50px;width: 200px;height:30px;">Submit Application</button></a>

            </pre>
            
        </form>
        </div>
        </center><br><br><br>
        <a href ="form.jsp"><button type="button" style="background-color: oldlace; border-radius: 10px;width: 100px;height:30px;">Back</button></a><br><br>
        
        
    </body>
</html>
