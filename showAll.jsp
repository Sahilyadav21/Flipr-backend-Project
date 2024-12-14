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
         <h1>Get All Product</h1>
        <%
            try
            {
                 Class.forName("com.mysql.jdbc.Driver");
			 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ajava88?useSSL=false","root","root");
			  Statement st=con.createStatement();
			  String q="select * from addpro";
			  ResultSet rs= st.executeQuery(q);
         %>
         <table cellpadding="12">
             <tr>
                 <td>Name</td>
                 <td>Description</td>
                 <td>Price</td>
                 <td>Category</td>
                
             </tr>
             
             <%
                 while(rs.next())
                 {
             %>
             <tr>
                 <td><%= rs.getString(1)%></td>
                 <td><%= rs.getString(2)%></td>
                 <td><%= rs.getString(3)%></td>
                 <td><%= rs.getString(4)%></td>
                
             </tr>
             <%
                 }
}
catch(Exception e)
 {
out.println(e);
}
%>

</center>
</div>
</body>
</html>
