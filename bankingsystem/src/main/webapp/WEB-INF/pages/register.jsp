<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Inconsolata:400,700"
	rel="stylesheet">
<link rel="shortcut icon" href="assets/logo.png" />

<title>Welcome to Online Banking</title>
</head>
<body>

	<img src="${pageContext.request.contextPath}/resources/assets/logo.png">
	<h3>Register for Online Banking</h3>
	<div class="form">

		<form action="registerpost" modelAttribute="registerpost" method="post">
			<h5>Log on to Online Banking</h5>
			<div class="form-group">
				<label for="exampleInputPassword1">First Name</label> <input
					type="text" name="firstName" class="form-control"
					id="exampleInputPassword1" placeholder="Enter Your First Name">
			</div>
				<div class="form-group">
				<label for="exampleInputPassword1">Last Name</label> <input
					type="text" name="lastName" class="form-control"
					id="exampleInputPassword1" placeholder="Enter Your Last Name">
			</div>
			</div>
				<div class="form-group">
				<label for="exampleInputPassword1">User Name</label> <input
					type="text" name="username" class="form-control"
					id="exampleInputPassword1" placeholder="Enter Your User Name">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> <input
					type="password" name="password" class="form-control"
					id="exampleInputPassword1" placeholder="Your password">
			</div>
				<div class="form-group">
				<label for="exampleInputPassword1">email</label> <input
					type="text" name="email" class="form-control"
					id="exampleInputPassword1" placeholder="Your e-mail">
			</div>
			
			<button type="submit" class="btn btn-primary">Register</button>
			<p class="text-danger">${message}</p>
		</form>
	</div>


	<div class="description">
		<h5>
			With our Online Banking service you can:
			<h5>
				<ul>
					<li><span class="glyphicon glyphicon-ok"></span>Make payments
						and transfers</li>
					<li><span class="glyphicon glyphicon-ok"></span>Check your
						balance</li>
					<li><span class="glyphicon glyphicon-ok"></span>Transfer money
						between your accounts</li>
					<li><span class="glyphicon glyphicon-ok"></span>View and
						download statements</li>
				</ul>
	</div>
</body>
</html>