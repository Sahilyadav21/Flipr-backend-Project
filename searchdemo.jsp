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
         <h1>Search & Update Product</h1>
        <form action="searchdemo.jsp">
            <table cellpadding="12">
                <tr>
                    <td>Product Name</td>
                        <td><input type="text" class="A" placeholder="Product Name" name="u1"></td>
                    </tr>
                    
                    <tr>
                        <th colspan="2"><input type="submit" class="B" name="b1" value="Search"></th>
                    </tr>
                        
            </table>
        </form>
            
        <%
            String s1=request.getParameter("b1");
            if(s1!=null)
            {
                String s11=request.getParameter("u1");
                
                try
                {
                     Class.forName("com.mysql.jdbc.Driver");
			 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ajava88?useSSL=false","root","root");
			  Statement st=con.createStatement(); 
			  String q="select * from addpro where UNAME='"+s11+"'";
			  ResultSet rs= st.executeQuery(q);
                          
                          if(rs.next())
                          {
                              %>
                              <form action="searchdemo.jsp">
                                  <table cellpadding="12">
                                      
                                      <tr>
                                          <td>UNAME</td>
                                          <td><input type="text" name="u1" value=<%=rs.getString(1)%> /></td>
                                          </tr>
                                          
                                           <tr>
                                          <td>UDESCRIPTION</td>
                                          <td><input type="text" name="u2" value=<%=rs.getString(2)%> /></td>
                                          </tr>
                                          
                                           <tr>
                                          <td>UPRICE</td>
                                          <td><input type="text" name="u3" value=<%=rs.getString(3)%> /></td>
                                          </tr>
                                          
                                           <tr>
                                          <td>UCATEGORY</td>
                                          <td><input type="text" name="u4" value=<%=rs.getString(4)%> /></td>
                                          </tr>
                                          
                                           
                                           <tr>
                        <th colspan="2"><input type="submit" class="B" name="b2" value="Update"></th>
                        </tr>
                        
                        </table>
                                          </form>
                                          <%
                                              }
}
 catch(Exception e)
		   {
			   out.println(e);
		   }
}
%>

</center>
    </div>
</body>
</html>
<%
String s2=request.getParameter("b2");
if(s2!=null)
{
    String s21=request.getParameter("u1");
    String s22=request.getParameter("u2");
    String s23=request.getParameter("u3");
    String s24=request.getParameter("u4");
   
    
    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ajava88?useSSL=false","root","root");
			  Statement st=con.createStatement();
			  //String s1= request.getParameter("u1"); 
                          //out.println("<form action='updatedemo'>");
			  String q="update addpro set UDESCRIPTION='"+s22+"',UPRICE='"+s23+"',UCATEGORY='"+s24+"' where UNAME='"+s21+"'";
			   st.executeUpdate(q);
			  
                           response.sendRedirect("showAll.jsp");
			
		   }
           catch(Exception e1)
			{
				out.println(e1);
			}
}
%>
