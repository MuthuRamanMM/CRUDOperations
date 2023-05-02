<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

		<div class="alert alert-success col-md-6">
			<h1>
				<strong>Registered successfully!</strong>
			</h1>
		</div>
${products}
		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products}" var="product">
					<tr>
						<td>${product.id}</td>
						<td>${product.name}</td>
						<td>${product.price}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
<c:forEach var="product" items="${products}">
  <p>Product [id=${product.id}, name=${product.name}, price=${product.price}]</p>
</c:forEach>


<%-- <div class="container">
		<div class="jumbotron">
		<ul class="list-group col-md-3">
			<c:forEach items="${products}" var="product">
				<li class="list-group-item ">${product.id}</li>
				<li class="list-group-item ">${product.name}</li>
				<li class="list-group-item ">${product.price}</li>
			</c:forEach>
		</ul>
	</div> --%>

	</div>
	<hr>

	</div>



</body>
</html>