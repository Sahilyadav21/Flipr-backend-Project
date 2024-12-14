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
<form action="insert1.jsp">
<div id="mydata">
<center>
     <h1>Add Product</h1>

<table cellpadding="12">
<tr>
<td>Product Name</td>
<td><input type="text" class="A" placeholder="Product Name" name="u1"></td>
</tr>
<tr>
<td>Description</td>
<td><input type="text" class="A" placeholder="Description" name="u2"></td>
</tr>

<tr>
<td>Price</td>
<td><input type="text" class="A" placeholder="Price" name="u3"></td>
</tr>
<tr>
<td>Category</td>
<td><input type="text" class="A" placeholder="Category" name="u4"></td>
</tr>


<tr>
<th colspan="2"><input type="submit" class="B" value="Add"></th>
</tr>
</table>
</center>

</div>
    </form>
</body>
</html>
