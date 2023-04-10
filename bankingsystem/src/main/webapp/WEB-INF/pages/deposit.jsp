<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head th:replace="common/header :: common-header">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false" %>
</head>
<body roleId="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

<head th:replace="common/header :: navbar"/>
<div class="container main">
    <div class="row">
        <div class="col-md-6">
            <form:form action="dodeposit" method="post">
            <input type="hidden" value="${username }" name="username"/>
               

                <div class="form-group">
                    <label> Please specify the amount you would like to deposit: </label>
                    <span class="input-group-addon">Amount $</span>
                    <input th:value="${amount}" type="text" name="amount" id="amount" class="form-control" aria-label="Amount (to the nearest dollar)"/>
                </div>

                <input type="hidden"
                       name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>

                <button class="btn btn-primary" type="submit">Deposit</button>
                
            </form:form>

            <div class="col-md-6">
            </div>
        </div>
    </div>
</div>


<div th:replace="common/header :: body-bottom-scripts"/>

</body>
</html>