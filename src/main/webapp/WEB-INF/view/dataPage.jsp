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

<script src="../resources/js/jquery-1.11.3.min.js"></script>
<script src="../resources/js/jquery-ui.min.js"></script>
<script src="../resources/js/angular.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/dataForm.js"></script>
<script src="../resources/js/dropdown.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Data Input By User</title>
</head>
<body ng-app="myApp" ng-controller="myCtrl">
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
		<!-- Header -->
		
		 
		 <!-- Body -->
		<h1>List Data Input</h1>

		

		<table class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Form Data</th>
					<th>By User</th>
					

				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="data in arrData">
					<td>{{data.id}}</td>
					<td><textarea rows="5" cols="30">{{data.formData}}</textarea></td>
					<td>{{data.user}}</td>
					
					
				</tr>
			</tbody>
		</table>

	</div>

</body>
</html>