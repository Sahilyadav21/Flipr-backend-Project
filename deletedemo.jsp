<%@page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="xyz.css">
<style>
    body{
        background-color:cyan;
    }
</style>

</head>
<body>
<%@include file="menu2.jsp" %>
<div id="mydata">
    <center>
         <h1>Delete Product</h1>
        <form action="deletedemo1.jsp">
            <table cellpadding="12">
                <tr>
                    <td>Product Name</td>
                    <td><input type="text" class="A" placeholder="Enter name" name="u1"></td>
                    </tr>
                    
                    <tr>
                        <th colspan="2"><input type="submit" class="B"  value="Delete"></th>
                        </tr>
                        
                        </table>
        </form>

</center>
</div>
</body>>
</html>>
            
