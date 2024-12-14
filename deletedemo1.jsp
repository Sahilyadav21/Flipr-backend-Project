<%@page import="java.sql.*" %>
<%   
String s1=request.getParameter("u1");
try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ajava88?useSSL=false","root","root");
				Statement st=con.createStatement();
				String q="delete from addpro where UNAME='"+s1+"'";
			st.executeUpdate(q);
				//out.println("data delete");
				response.sendRedirect("showAll.jsp");
				con.close();
			}
			catch(Exception e1)
			{
				out.println(e1);
			}
%>
