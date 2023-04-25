<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="com.org.CRUDOperations.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.org.CRUDOperations.service.ProductService"%>
<%@page import="org.springframework.ui.Model"%>

<!DOCTYPE>
<html>
<head>
<title>Success</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/external.css" />
<link href="bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>


	<div class="container">

		<div class="alert alert-success">
			<h1>
				<strong> User details!</strong>
			</h1>
		</div>

		
	</div>
	
	
	<div class="container">
  <div class="row">
    <div class="col-12">
      <table class="table table-hover" >
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Price</th>
           
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tbody>
        
        <%
				int i = 1;
				List<Product> productt = (List<Product>) request.getAttribute("products");
				%>

				<%
				for (Product p : productt) {
				%>
				
          <tr>
            <td ><%=p.getId()%></td>
            <td ><%=p.getName()%></td>
            <td ><%=p.getPrice()%></td>
        
            <td>
       <!--        <button type="button" class="btn btn-primary"><i class="far fa-eye"> view</i></button> -->
             <!--  <button type="button" class="btn btn-success"><i class="fas fa-edit ">edit</i></button> -->
           
           
        
         <div class="row">
  <div class="col-sm-2">
           <form action="update" method="post" object="${product}"> 
            <button type="submit" class="btn btn-success"><i class="fas fa-edit ">edit</i></button>
           </form>
           </div> 
             <div class="col-sm-1">
           <form method="DELETE" action="/delete"> 
           <!-- <input type="text" name="id"> -->
            <input type="hidden" name="id" value="<%= p.getId() %>">
           <button type="submit" class="btn btn-danger"><i class="far fa-trash-alt ">delete</i></button>
           </form>
           </div>
           
           </div>
            </td>
          </tr>
          
          	<%}
			%>
        </tbody>
      </table>
    </div>
  </div>
</div>

</body>
</html>