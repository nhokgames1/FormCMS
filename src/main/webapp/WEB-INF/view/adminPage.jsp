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
<link rel="stylesheet" type="text/css"
	href="../resources/css/seachbox.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/table.css">
	<link rel="stylesheet" type="text/css"
	href="../resources/css/button.css">
<script src="../resources/js/jquery-1.11.3.min.js"></script>
<script src="../resources/js/jquery-ui.min.js"></script>
<script src="../resources/js/angular.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/User.js"></script>
<script src="../resources/js/dropdown.js"></script>
<script src="../resources/js/dirPagination.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách Student</title>


</head>

<body ng-app="myApp" ng-controller="myCtrl">
<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<!-- Header -->
		
		 
		 <!-- Body -->
		<h1>List User</h1>
<div class="pull-right">
	<div class="row">
	<div class="col-md-8"></div>
        <div class="col-md-4">
    		
            <div id="custom-search-input">
                <div class="input-group col-md-12">
                    <input type="text" class="form-control input-lg" placeholder="User" ng-model="searchName" />
                    <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button" ng-click="search()">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
            </div>
        </div>
	</div>
</div>
<br><br><br><br>
		<div class="col-md-10"></div><button type="button"  class="btn btn-primary" data-toggle="modal"
			data-target="#myModalAdd" ng-click="saveUser">Add</button>
 
		<table class="table table-striped custab">
	
			<thead>
				<tr><br><br>
				<div></div>
					  <div  ng-if="message" class="alert alert-danger alert-dismissable fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>{{message}}</strong> 
  </div>
					<th >ID</th>
					<th >Account</th>
					<th>FullName</th>
					<th>Password</th>
					<th>Birthday</th>
					<th>Role</th>
					<th>Control</th>

				</tr>
			</thead>
			<tbody>
				<tr dir-paginate="user in arrStudent | filter:searchName | itemsPerPage:5">
					<td>{{user.id}}</td>
					<td>{{user.account}}</td>
					<td>{{user.fullname}}</td>
					<td>{{user.password}}</td>
					<td>{{user.birthday}}</td>
					<td>{{user.role}}</td>
					<td>
						<button type="button" class="btn btn-primary btn-circle btn-lg"
							data-toggle="modal" data-target="#myModalEdit"
							ng-click="selectUser(user)"><i class="glyphicon glyphicon-list"></i></button>
							
						<button type="button" class="btn btn-danger btn-circle btn-lg"
							data-toggle="modal" data-target="#myModalDelete"
							ng-click="selectUser(user)"><i class="glyphicon glyphicon-remove"> </i></button>

					</td>
				</tr>
			</tbody>
		</table>
<div class="col-md-4"><dir-pagination-controls
       										max-size="5"
       										direction-links="true"
      										 boundary-links="true" >
   					</dir-pagination-controls></div>
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
						<label for="text">Pasword</label> <input type="password"
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
						class="btn btn-info btn-circle btn-lg" type="button" data-dismiss="modal" ><i class="glyphicon glyphicon-ok"></i></button>
					<button type="button" class="btn btn-warning btn-circle btn-lg" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i></button>
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
							<label for="inputAccount" class="col-sm-2 control-label">Fullname</label>
							<div class="col-sm-10">
								<input type="text" class="form-control"
									ng-value="clickedUser.fullname" placeholder="Fullname">
							</div>
						</div>
						<br> <br>
						<div class="form-group">
							<label for="inputPassword" class="col-sm-2 control-label">Password
								</label>
							<div class="col-sm-10">
								<input type="password" class="form-control"
									ng-value="clickedUser.password" placeholder="password">
							</div>
						</div>
						<br> <br>
						<div class="form-group">
							<label for="inputBirthday" class="col-sm-2 control-label">Birthday
								day</label>
							<div class="col-sm-10">
								<input type="date" class="form-control"
									ng-value="clickedUser.birthday " placeholder="Birthday">
							</div>
						</div>
						<br><br>
						<div class="form-group">
						<div class="col-sm-2"><label >Role</label></div>
						<div class="col-sm-10">
						
						<label for="redRadio">User</label> 
						
						<input id="user"
							type="radio" ng-model="clickedUser.role" value="user" />
						<label for="greenRadio">Admin</label> 
						<input id="admin"
							type="radio" ng-model="clickedUser.role" value="admin" /><br />
							</div>
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