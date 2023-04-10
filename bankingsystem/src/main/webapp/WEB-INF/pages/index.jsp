<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Bank</title>
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
<nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>    
            </button>
            <a class="navbar-brand" href="#">Hello</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
               <li><a href="#">Home</a></li>
                <li><a href="deposit/${user}">Deposit</a></li>
                <li><a href="${pageContext.request.contextPath }/withdraw/${user}">Withdrwal</a></li>

                <li><a href="logout">Logout</a></li>
                </ul>
            </div>
        </div>
        </nav>
        <div class="jumbotron text-center">
        <h1>OnlineBanking.Com</h1>
            <p style="letter-spacing: 2px;"><u>We Make The World More Secure</u></p>
        
        </div>
        <div class="container-fluid">
        <div class="row text-center">
            <div class="col-sm-6 col-md-6">
            <div class="panel panel-default text-center">
                <div class="panel-heading">
                <h1>DepositMoney</h1>
                    
                </div>
                <div class="panel-body">
                <a href="deposit/${user}" class="btn btn-lg">DepositMoney In Your Account</a>
                    <br>
                    
                </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-6">
            <div class="panel panel-default text-center">
                <div class="panel-heading">
                <h1>WithdrwalMoney</h1>
                </div>
                <div class="panel-body">
                <a href="${pageContext.request.contextPath }/withdraw/${user}" class="btn btn-lg">WithdrwalMoney</a>
                </div>
                </div>
            </div>
            </div>
            <div class="row text-center">
            <div class="col-sm-6 col-md-6">
                <div class="panel panel-default text-center">
                <div class="panel-heading">
                    <h1>Delete</h1>
                    </div>
                    <div class="panel-body">
                    <a href="delete/${user }" class="btn btn-lg">Delete Account</a>
                    </div>
                </div>
                </div>
                <div class="col-sm-6 col-md-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                    <h1>CheckBalance</h1>
                    </div>
                    <div class="panel-body">
                    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Check Balance</button>
                        <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog">
                            <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Your Balance</h4>
                                </div>
                                <div class="modal-body">
                                
					Your Balance "${amount}"
										
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                    </div>    
                
                </div>
            </div>
        </div>
        <footer class="container-fluid text-center" style="background-color:#f4511e; ">
        <p style="color: white;font-size: 18px;">OnlineBanking &copy; Production</p>
        </footer>




 
</body>
</html>