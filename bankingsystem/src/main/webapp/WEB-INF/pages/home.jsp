<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Home</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserra" type="text/css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
     body
        {
            font: 400 15px Lato, sans-serif;
            line-height: 1.8;
            color: #818181;
        }
        h2
        {
            font-size: 24px;
            text-transform: uppercase;
            color: #303030;
            font-weight: 600;
            margin-bottom: 30px;
        }
        h4
        {
            font-size: 19px;
            line-height: 1.375em;
            color: #303030;
            font-weight: 400;
            margin-bottom: 30px;
        }
        .jumbotron
        {
            background-color: #f4511e;
            color: #fff;
            padding: 100px 25px;
            font-family: Montserrat,sans-serif;
        }
        
        .container-fluid
        {
            padding: 60px 50px;
        }
        
        .bg-grey
        {
            background-color: #f6f6f6;
            
        }
    .panel
        {
            border: 1px solid #f4511e;
            border-radius: 0px !important;
            transition: box-shadow 0.5s;
        }
        
        .panel:hover
        {
            box-shadow: 5px 0px 40px rgba(0,0,0,0.2);
            
        }
        .panel-footer .btn:hover
        {
            border: 1px solid #f4511e;
            background-color: #fff !important;
            color: #f4511e;
        }
        .panel-heading
        {
            color: #fff !important;
            background-color: #f4511e !important;
            padding: 25px;
            border-bottom: 1px solid transparent;
            border-top-left-radius: 0px;
            border-top-right-radius: 0px;
            border-bottom-left-radius: 0px;
            border-bottom-right-radius: 0px;
            
        }
        .panel-footer
        {
            background-color: white !important;
        }
        .panel-footer h3
        {
            font-size: 32px;
        }
        .panel-footer h4
        {
            color: #aaa;
            font-size: 14px;
        }
        .panel-footer .btn
        {
            margin: 15px 0;
            background-color: #f4511e;
            color: #fff;
        }
        .navbar
        {
            margin-bottom: 0;
            background-color: #f4511e;
            z-index: 9999;
            border: 0;
            font-size: 12px !important;
            line-height: 1.42em;
            letter-spacing: 4px;
            border-radius: 0;
            font-family: Montserrat,sans-serif;
        }
        
        .navbar li a,.navbar .navbar-brand
        {
            color: #fff !important;
        }
        .navbar-nav li a:hover,.navbar-nav li.active a
        {
            color: #f4511e !important;
            background-color: #fff !important;
        }
        
        footer .glyphicon
        {
            font-size: 20px;
            margin-bottom: 20px;
            color: #f4511e;
        }
   
    </style>
</head>
<body>


	<h3>Welcome to Online Banking</h3>
	  <div class="container-fluid ">
        <div class="row text-center mt-12">
            <div class="col-sm-6 col-md-12">
            <div class="panel panel-default text-center">
                <div class="panel-heading">

		<form action="login/${User.customerID }" modelAttribute="login" method="post">
			<h5>Log on to Online Banking</h5>
			<div class=""panel-body"">
				<label for="exampleInputEmail1">User Name</label> <input
					type="text" name="username" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Please enter your user name">

			</div>
			<div class="panel-body">
				<label for="exampleInputPassword1">Password</label> <input
					type="password" name="password" class="form-control"
					id="exampleInputPassword1" placeholder="Your password">
			</div>
			<button type="submit" class="btn btn-primary">Sign in</button>
			<a href="register"><h6>Register for Online Banking</h6></a>
			
		<p class="text-danger">${message}</p>
			
		</form>
	

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
	</div>
</div>
</div>
</div>
</div>
</body>
</html>