<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="app">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <link type="text/css" rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="../resources/css/site.css">
    <link type="text/css" rel="stylesheet" href="../resources/css/angular-form-builder.css">
    <script src="../resources/js/jquery.min.js"></script>
    <script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../resources/js/angular.min.js"></script>
    <script type="text/javascript" src="../resources/js/form-builder.js"></script>
    <script type="text/javascript" src="../resources/js/form-builder-components.js"></script>
    <script type="text/javascript" src="../resources/js/angular-validator.min.js"></script>
    <script type="text/javascript" src="../resources/js/angular-validator-rules.min.js"></script>
    <script type="text/javascript" src="../resources/js/addform.js"></script>
<title>Create New Form</title>
</head>
<body class="container" ng-controller="DemoController">
<jsp:include page="header.jsp"></jsp:include>
   <div class="row">
        
        <hr/>

        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Builder</h3>
                </div>
                <div fb-builder="default"></div>
                <div class="panel-footer">
                                  </div>
            </div>
        </div>

        <div class="col-md-6">
            <div fb-components></div>
        </div>
    </div>
		<div class="row">
		
		<label>Form Name</label>
	<input ng-model="nameform" type="text" class="form-control"
										requred="required" placeholder="Form name" >	
										<br>
				 <div class="col-md-8 col-md-offset-4">
                    <input type="submit" ng-click="submit()" class="btn btn-default"/>
                </div>						
		
		
		 </div>
   <!-- <div class="row">
        <h2>Form</h2>
        <hr/>
        <form class="form-horizontal">
            <div ng-model="input" fb-form="test" fb-default="defaultValue"></div>
            <div class="form-group">
                <div class="col-md-8 col-md-offset-4">
                    <input type="submit" ng-click="add()" class="btn btn-default"/>
                </div>
            </div>
        </form>
        <div class="checkbox">
            <label><input type="checkbox" ng-model="isShowScope" ng-init="isShowScope=true" />
                Show scope
            </label>
        </div>
        <pre ng-if="isShowScope">{{input}}</pre>
    </div> -->

    <div class="row">
        <div class="col-md-12 footer"></div>
    </div>

   
</body>
</html>