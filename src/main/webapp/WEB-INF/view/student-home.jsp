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
<script src="../resources/js/demoform.js"></script>
<script src="../resources/js/dropdown.js"></script>
<script type="text/javascript"
	src="../resources/js/angular-form-builder.js"></script>
<script type="text/javascript"
	src="../resources/js/angular-form-builder-components.js"></script>
<script type="text/javascript"
	src="../resources/js/angular-validator.min.js"></script>
<script type="text/javascript"
	src="../resources/js/angular-validator-rules.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách Form</title>


</head>

<body ng-app="app" ng-controller="DemoController">


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
							ng-click="selectUser(formlist)">Edit</button>
						<button type="button" class="btn btn-info btn-lg"
							data-toggle="modal" data-target="#myModalDelete"
							ng-click="selectUser(user)">Delete</button>

					</td>
				</tr>
			</tbody>
		</table>

	</div>


	<!--Edit -->
	<div id="myModalEdit" class="modal fade" role="dialog" ng-app="app"  ng-controller="DemoController">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">
						Edit User
					</h4>
				</div>
				<div class="modal-body">

					<div >
						<h2>Form</h2>
						<hr />
						
						<!-- form here -->
						 <!-- <div class="row">
        <h1>angular-form-builder</h1>
        <hr/>

        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Builder</h3>
                </div>
                <div fb-builder="default"></div>
                <div class="panel-footer">
                    <div class="checkbox">
                        <label><input type="checkbox" ng-model="isShowScope" />
                            Show scope
                        </label>
                    </div>
                    <pre ng-if="isShowScope">{{form}}</pre>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div fb-components></div>
        </div>
    </div>
 --><button type="button" class="btn btn-info btn-lg"
							data-toggle="modal" data-target="#myModalDelete"
							ng-click="selectUser(user)">Delete</button>
 <div id="myModalDelete" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Are you sure ?</h4>
				</div>
				<div class="modal-body">
				<div class="row">
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
    </div>
				
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						ng-click="deleteUser(clickedUser.id)">Yes</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">No</button>

				</div>
			</div>

		</div>
	</div>
    
    <div class="row">
        <div class="col-md-12 footer"></div>
    </div>
						<div class="checkbox">
							<label><input type="checkbox" ng-model="isShowScope"
								ng-init="isShowScope=true" /> Show scope </label>
						</div>
						<pre ng-if="isShowScope">{{input}}</pre>
					</div>

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