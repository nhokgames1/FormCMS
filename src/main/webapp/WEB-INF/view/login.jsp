<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="stylesheet" type="text/css"
	href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="../resources/css/login.css">
<script src="../resources/js/jquery-1.11.3.min.js"></script>
<script src="../resources/js/jquery-ui.min.js"></script>
<script src="../resources/js/angular.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/login.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.7/angular-resource.min.js"></script>
<script src="../resources/js/angular-route.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
</head>
<body ng-app="myApp" ng-controller="myCtrl">

	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3" style="margin-top: 300px">
				<div class="panel panel-default">
					<div class="panel-heading">
						<span class="glyphicon glyphicon-lock"></span> Login
					</div>
					<div class="panel-body">
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-3 control-label">
									Email</label>
								<div class="col-sm-9">
									<input ng-model="user.account" type="text" class="form-control"
										id= placeholder="Account" >
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-3 control-label">
									Password</label>
								<div class="col-sm-9">
									<input ng-model="user.password" type="password"
										class="form-control" 
										placeholder="Password" >
								</div>
							</div>
							

							<div class="form-group">
								<label class="col-sm-3"></label>
								<div class="col-sm-9">
									<div class="alert alert-warning" ng-if="message">
										<a href="#" class="close" data-dismiss="alert"
											aria-label="close">�</a> <strong>Warning!</strong>
										{{message}}
									</div>
								</div>
							</div>

							<div class="form-group last">
								<div class="col-sm-offset-3 col-sm-9">
									<button ng-click="login()" type="submit"
										class="btn btn-success btn-sm">Sign in</button>

								</div>
							</div>
						</form>
					</div>
					
				</div>
			</div>
		</div>
	</div>

</body>
</html>