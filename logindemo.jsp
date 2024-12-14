<html>
<head>
<link rel="stylesheet" href="abc.css">
</head>
<body>

    <%@include file="menu1.jsp" %>
<div id="mydata">
<center>
      <h1>Sign In</h1>
<form action="logindemo1.jsp">
    <%
        String s3=request.getParameter("s2");
        if(s3!=null)
        {
            %>
            <%= s3 %>
            <% } %>
<table cellpadding="12">
<tr>
<td>Enter Email</td>
<td><input type="text" class="A" placeholder="Enter Email" name="u2"></td>
</tr>

<tr>
<td>Enter Pass</td>
<td><input type="password" class="A" placeholder="Enter Password" name="u3"></td>
</tr>

<tr>
<th colspan="2"><input type="submit" class="B" value="logIn"></th>
</tr>
</table>

</form>
    </center>
</div>
</body>
</html>
