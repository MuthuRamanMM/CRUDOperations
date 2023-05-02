<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Index</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/external.css" />
<link href="bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">

		<h2>User Register</h2>
		<div>
			To Register the user details <br>
			<a href="register" class="btn btn-info" role="button">Register</a>
		</div>
<br>
		<form action="getproducts" method="get" class="col-md-3">
			<div>
				<label> Display the user details </label> <br>
				<button type="submit" class="btn btn-info">Info</button>
			</div>
		</form>
<br>

	<div class="form-group">
		<form method="DELETE" action="/delete" class="col-md-3">
		
		<div class="form-group">
					<label path="name"> Enter ID: </label> <input type="text"
							name="id" class="form-control" />
				</div>
			<button type="submit" class="btn btn-danger">Delete</button>
		</form>
</div>
<br>

		<div class="form-group">
			<form action="update" method="post" class="col-md-3"
				object="${product}">
				
				<div class="form-group">
					<h4><label> To update the details </label></h4>
				</div>
				
				<div class="form-group">
					<label path="name"> ID: </label> <input type="text"
							name="id" class="form-control" />
				</div>

				<div class="form-group">
					<label path="name"> Name: </label> <input
							type="text" name="name" class="form-control" />
				</div>

				<div class="form-group">
					<label path="name"> Price: </label> <input
							type="text" name="price" class="form-control" />
				</div>

				<button type="submit" class="btn btn-info">Update</button>

			</form>
		</div>
	</div>
</body>
</html>