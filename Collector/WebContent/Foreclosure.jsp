<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

`<html>
    <body>
         <center>
        <h3 style="background-color:mistyrose;">BANK</h3>
        <hr><br>
        </center>
        <center>
        <h3>Foreclosure</h3>
        <div align ="center" style="width:450px; height:300px; background: mistyrose;border-radius: 40px;">
        <form action="Foreclosure Notice" method="post">
            <pre><br><br><br>
      Defaulter's id <input type="text" name="did"/><br>
      Loan id    <input type="text" name="lid"/><br>
      Name       <input type="text" name="name"/><br>



     
      <a href="Success.jsp"><button type="button" style="background-color: oldlace; border-radius: 50px;width: 200px;height:30px;">Generate Notice</button></a>

            </pre>
            
        </form>
        </div>
        </center><br><br><br>
        <a href ="form.jsp"><button type="button" style="background-color: mintcream; border-radius: 10px;width: 100px;height:30px;">Back</button></a><br><br>
        
        
    </body>
</html>
