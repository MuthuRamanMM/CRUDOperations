<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
<head>
<title>Spring Boot</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/external.css" />


<link href="bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
	<div class="div4">
		<div class="container">
			<h2>User Registration</h2>
			<form:form action="register1" method="post" modelAttribute="product"
				class="col-md-3">

				<div class="form-group">
					<form:label path="id"> ID </form:label>
					<form:input type="number" class="form-control"
						placeholder="Enter id" path="id" />
				</div>

				<div class="form-group">
					<form:label path="name">  Name </form:label>
					<form:input type="text" class="form-control"
						placeholder="Enter name" path="name" />
				</div>

				<div class="form-group">
					<form:label path="price"> Password </form:label>
					<form:input path="price" type="text" class="form-control"
						placeholder="Enter price" />
				</div>

				
				<div>

					<form:button class="btn btn-success">Register</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>