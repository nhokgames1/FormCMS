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
<script src="../resources/js/User.js"></script>
<script src="../resources/js/dropdown.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách Student</title>


</head>

<body ng-app="myApp" ng-controller="myCtrl">


	<div class="container">
		<!-- Header -->
		<div class="headerWrapper container-fluid fixed-navbar">
			<header style="padding: 15px 0px; height: 70px;"> <nav
				class="navbar navbar-default navbar-static-top hidden-sm hidden-md hidden-lg mainContainer">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle"
					ng-click="showNavMobile($event)" data-ga="" data-ga-action="click"
					data-ga-category="Header Navigation Mobile "
					data-ga-title="Open Mobile Nav Lnk">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="#" class="pull-left" data-ga="" data-ga-action="click"
					data-ga-category="Header Navigation" data-ga-title="Logo CF Img"><img
					class="cf-logo" src="../resources/img/cms_icon.png"></a> <a
					class="navbar-brand logo-text" data-ga="" data-ga-action="click"
					data-ga-category="Header Navigation " data-ga-title="Logo CF Img"
					href="#"> <span>Home</span>
				</a>
			</div>
			</nav> <nav
				class="navbar navbar-default navbar-static-top hidden-xs mainContainer"
				role="navigation">
			<div class="navbar-header">
				<a data-ga="" data-ga-action="click"
					data-ga-category="Header Navigation " data-ga-title="Logo CF Img"
					href="#" class="pull-left"> <img class="cf-logo"
					src="../resources/img/cms_icon.png" height="40" width="40">
				</a> <a class="navbar-brand logo-text" data-ga="" data-ga-action="click"
					data-ga-category="Header Navigation " data-ga-title="Logo CF Img"
					href="#"> <span>Content Management System</span>
				</a>
			</div>
			<ul class="nav navbar-nav navbar-right">


				</li>
				<li class="dropdown" data-ga="" data-ga-action="click"
					data-ga-category="Header Navigation " data-ga-title="Integrations">
					<a href="javascript:void(0);" data-target="#"
					class="dropdown-toggle" data-toggle="dropdown"
					aria-expanded="false"> <span class="account-setting">User
							Management</span> <b class="caret"></b>
						<div class="ripple-container"></div></a>
					<ul class="dropdown-menu account-setting-menu">
						<li><a href="#" data-ga="" data-ga-action="click"
							data-ga-category="Header Navigation " data-ga-title="Slack">
								List</a></li>
						<li><a href="#" data-ga="" data-ga-action="click"
							data-ga-category="Header Navigation " data-ga-title="Balsamiq">
								Add New</a></li>
					</ul>
				</li>

				<li class="dropdown" data-ga="" data-ga-action="click"
					data-ga-category="Header Navigation " data-ga-title="Integrations">
					<a href="javascript:void(0);" data-target="#"
					class="dropdown-toggle" data-toggle="dropdown"
					aria-expanded="false"> <span class="account-setting">Form
							Management</span> <b class="caret"></b>
						<div class="ripple-container"></div></a>
					<ul class="dropdown-menu account-setting-menu">
						<li><a href="#" data-ga="" data-ga-action="click"
							data-ga-category="Header Navigation " data-ga-title="Slack">
								List</a></li>
						<li><a href="#" data-ga="" data-ga-action="click"
							data-ga-category="Header Navigation " data-ga-title="Balsamiq">
								Add New</a></li>
					</ul>
				</li>


				<li class="dropdown" data-ga="" data-ga-action="click"
					data-ga-category="Header Navigation " data-ga-title="Integrations">
					<a href="javascript:void(0);" data-target="#"
					class="dropdown-toggle" data-toggle="dropdown"
					aria-expanded="false"> <span class="account-setting">Account</span>
						<b class="caret"></b>
						<div class="ripple-container"></div></a>
					<ul class="dropdown-menu account-setting-menu">
						<li><a href="#" data-ga="" data-ga-action="click"
							data-ga-category="Header Navigation " data-ga-title="Slack">
								Hello User</a></li>
						<li><a href="#" data-ga="" data-ga-action="click"
							data-ga-category="Header Navigation " data-ga-title="Balsamiq">
								Log Out</a></li>
					</ul>
				</li>

			</ul>
			</nav> </header>
		</div>
		<h1>List student</h1>

		<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
			data-target="#myModalAdd" ng-click="selectUser(user)">Add</button>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Account</th>
					<th>FullName</th>
					<th>Password</th>
					<th>Birthday</th>
					<th>Role</th>
					<th>Control</th>

				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="user in arrStudent">
					<td>{{user.id}}</td>
					<td>{{user.account}}</td>
					<td>{{user.fullname}}</td>
					<td>{{user.password}}</td>
					<td>{{user.birthday}}</td>
					<td>{{user.role}}</td>
					<td>
						<button type="button" class="btn btn-info btn-lg"
							data-toggle="modal" data-target="#myModalEdit"
							ng-click="selectUser(user)">Edit</button>
						<button type="button" class="btn btn-info btn-lg"
							data-toggle="modal" data-target="#myModalDelete"
							ng-click="selectUser(user)">Delete</button>

					</td>
				</tr>
			</tbody>
		</table>

	</div>

	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Are you sure ?</h4>
				</div>
				<div class="modal-body">
					<strong style="color: red;"> You are going to delete
						{{clickedUser.account}} </strong>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						ng-click="deleteUser(clickedUser.id)">Yes</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">No</button>

				</div>
			</div>

		</div>
	</div>

	<!-- Delete-->
	<div id="myModalDelete" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Are you sure ?</h4>
				</div>
				<div class="modal-body">
					<strong style="color: red;"> You are going to delete
						{{clickedUser.account}} </strong>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						ng-click="deleteUser(clickedUser.id)">Yes</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">No</button>

				</div>
			</div>

		</div>
	</div>


	<!-- Modal  Add-->
	<div id="myModalAdd" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Add New User</h4>
				</div>
				<div class="modal-body">

					<div class="form-group">
						<label for="account">Account</label> <input type="text"
							class="form-control" ng-model="user.account">
					</div>
					<div class="form-group">
						<label for="fullname">Fullname</label> <input type="text"
							class="form-control" ng-model="user.fullname">
					</div>
					<div class="form-group">
						<label for="text">Pasword</label> <input type="text"
							class="form-control" ng-model="user.password">
					</div>
					<div class="form-group">
						<label for="text">Birthday</label> <input type="date"
							class="form-control" ng-model="user.birthday">
					</div>
					
					<div class="form-group">
						<label for="redRadio">User</label> <input id="redRadio"
							type="radio" ng-model="user.role" value="user" /><br /> <label
							for="greenRadio">Admin</label> <input id="greenRadio"
							type="radio" ng-model="user.role" value="admin" /><br />
					</div>



					</form>
				</div>
				<div class="modal-footer">
					<button id="btnAddUser" ng-click="saveUser()"
						class="btn btn-default" type="button" data-dismiss="modal">Add</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

	<!--Edit -->
	<div id="myModalEdit" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title"><span class="	glyphicon glyphicon-pencil"></span>Edit User</h4>
				</div>
				<div class="modal-body">

					<form class="form-group" role="form">
						<div class="form-group">
							<label for="inputName" class="col-sm-2 control-label">Account</label>
							<div class="col-sm-10">
								<input type="text" class="form-control"
									ng-model="clickedUser.account" placeholder="Account">
							</div>
						</div>
						<br> <br> <br>
						<div class="form-group">
							<label for="inputSubject" class="col-sm-2 control-label">Fullname</label>
							<div class="col-sm-10">
								<input type="text" class="form-control"
									ng-value="clickedUser.fullname" placeholder="Fullname">
							</div>
						</div>
						<br> <br>
						<div class="form-group">
							<label for="inputStart" class="col-sm-2 control-label">Password
								</label>
							<div class="col-sm-10">
								<input type="text" class="form-control"
									ng-value="clickedUser.password" placeholder="password">
							</div>
						</div>
						<br> <br>
						<div class="form-group">
							<label for="inputEnd" class="col-sm-2 control-label">Birthday
								day</label>
							<div class="col-sm-10">
								<input type="date" class="form-control"
									ng-value="clickedUser.birthday | date:'yyyy-MM-dd" placeholder="Birthday">
							</div>
						</div>
						<div class="form-group">
						<label for="redRadio">User</label> <input id="user"
							type="radio" ng-model="clickedUser.role" value="user" /><br /> <label
							for="greenRadio">Admin</label> <input id="admin"
							type="radio" ng-model="clickedUser.role" value="admin" /><br />
					</div>
						<br>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default"
						ng-click="updateUser(clickedUser)" data-dismiss="modal">Save</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>





</body>
</html>