<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="../resources/js/handleform.js"></script>
<script src="../resources/js/dropdown.js"></script>
<script type="text/javascript"
	src="../resources/js/form-builder.js"></script>
<script type="text/javascript"
	src="../resources/js/form-builder-components.js"></script>
<script type="text/javascript"
	src="../resources/js/angular-validator.min.js"></script>
<script type="text/javascript"
	src="../resources/js/angular-validator-rules.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List Form</title>


</head>

<body ng-app="app" ng-controller="DemoController">
<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<!-- Header -->
		
		<h1>List student</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Form Name</th>
					<th style="display: none;">Form format</th>
					<th>Enter Data</th>


				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="formlist in arrForm">
					<td>{{formlist.id}}</td>
					<td>{{formlist.name}}</td>
					<td style="display: none;">{{formlist.formdata}}</td>

					<td>
						<button type="button" class="btn btn-info btn-lg"
							data-toggle="modal" data-target="#myModalEdit"
							ng-click="try(formlist)">Input</button>


					</td>
				</tr>
			</tbody>
		</table>

	</div>


	<!-- Main Modal  -->
	<div id="myModalEdit" class="modal fade" role="dialog" ng-app="app"
		ng-controller="DemoController">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Form Input</h4>
				</div>
				<div class="modal-body row">
							<div class="col-xs-2 col-sm-9 "> 
								<h2>Form </h2>
								<form class="form-horizontal ">
									<div ng-model="input" fb-form="building"
										fb-default="defaultValue"></div>
									
									<div class="form-group">
									</div>
								</form>
							</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" ng-click="submit(input)"
						data-dismiss="modal">Save</button>
					
					<button type="button" class="btn btn-default" data-dismiss="modal" ng-click="refresh()">Close</button>
				</div>
			</div>

		</div>
	</div>





</body>
</html>