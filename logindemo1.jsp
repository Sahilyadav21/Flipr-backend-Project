<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*" %>

<%
		String s2=request.getParameter("u2");
		String s3=request.getParameter("u3");
			
		try
		{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ajava88?useSSL=false","root","root");
				Statement st=con.createStatement();
				String q="select * from registration where UEMAIL='"+s2+"' AND UPASS= '"+s3+"'";
				ResultSet rs=st.executeQuery(q);
                                
                                
                                if(rs.next())
                                {
	
					response.sendRedirect("menudemo.jsp");               
                                  //out.println("data insert");
		        	}
			else
			{
				JOptionPane.showMessageDialog(null,"Invalid Email & Password");
			}
		
				con.close();
			}
			catch(Exception e1)
			{
				out.println(e1);
			}
		

%>

