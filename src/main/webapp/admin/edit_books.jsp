
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@page isELIgnored="false" %>
      
      <%@page import="com.DAO.BookDAO"%>
<%@page import="com.DAO.BookDAOimpl"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.BookDtls" %>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Edit book page</title>
<%@include file="allCss.jsp" %>

<c:if test="${empty userobj}">

<c:redirect url="../Login.jsp"/>

</c:if>





<style type="text/css">

.back-img{
background: url("book2.jpg");
height:100vh;
width:100%;
background-repeat:no-repeat;
background-size: cover;

}

</style>



</head>
<body>
<%@include file="navbar.jsp" %>

<div class="container-fluid back-img p-5">




<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card ">
<div class="card-body">
<h4 class="text-center text-primary">Edit books</h4>

<%
int id=Integer.parseInt(request.getParameter("id"));

BookDAOimpl dao=new BookDAOimpl(DBConnect.getConn());
BookDtls b=dao.getBookId(id);
%>

<form action="../editbooks" method="post">
<input type="hidden" name="id" value="<%=b.getBookId()%>">



  <div class="form-group">
    <label for="exampleInputEmail1">Book Name*</label>
    <input type="text" class="form-control" 
    id="exampleInputEmail1" aria-describedb="emailHelp" name="bname" 
    value="<%=b.getBookName()%>">
  </div>


  <div class="form-group">
    <label for="exampleInputEmail1">Author Name*</label>
    <input type="text" class="form-control" id="exampleInputEmail1" 
    aria-describedby="emailHelp"  required="required" name="author"
     value="<%=b.getAuthor()%>">
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputPassword1">Price*</label>
    <input type="number" class="form-control" 
    id="exampleInputPassword1"  required="required" name="price"
     value="<%=b.getPrice()%>">
  </div>
  
  
  
  
  
  <div class="form-group">
    <label for="inputState">Book Status</label>
   <select id="inputState" name="btype" class="form-control">
    <%
    if("Active".equals(b.getStatus())){
    	%>
    	<option value="Inactive">Inactive</option>
    	 <option value="Active">active</option>
    	<% 
    }else{%>
   <option value="Inactive">Inactive</option>
    	 <option value="Active">active</option>
     <% 
    }
    
    %>
     
     
     </select>
  </div>
  
  
 
  
  
  <button type="submit" class="btn btn-primary">Update</button>
  
  
  
  
</form>

</div>
</div>
</div>
</div>
</div>





<%@include file="footer1.jsp" %>
</body>
</html>