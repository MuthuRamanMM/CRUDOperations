
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE>
<html>
<head>
<head>
<title>Success</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/external.css" />
<link href="bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet">

</head>
</head>
<body>
	<div class="container">

		<div class="alert alert-success col-md-6">
			<h1>
				<strong>Registered successfully!</strong>
			</h1>
		</div>

		${products}


		<%-- 	<div class="container">
		<div class="jumbotron">
		<ul class="list-group col-md-3">
			<c:forEach items="${products}" var="product">
				<li class="list-group-item ">${product.id}</li>
				<li class="list-group-item ">${product.name}</li>
				<li class="list-group-item ">${product.price}</li>
			</c:forEach>
		</ul>
	</div>
 --%>



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



		<div class="media">
			<div class="media-left">
				<img src="bootstrap-5.0.2-dist/FemaleAvatar.jpg"
					alt="Image Description" class="media-object" style="width: 60px">
			</div>
			<div class="media-body">
				<h4 class="media-heading">Khatija</h4>
				<p>Khatija said that this website is a trusted platform to sign
					up for and study courses.</p>
			</div>
		</div>

	</div>
	<hr>

	</div>



</body>
</html>