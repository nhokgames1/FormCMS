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
    <script type="text/javascript" src="../resources/js/angular-form-builder.js"></script>
    <script type="text/javascript" src="../resources/js/angular-form-builder-components.js"></script>
    <script type="text/javascript" src="../resources/js/angular-validator.min.js"></script>
    <script type="text/javascript" src="../resources/js/angular-validator-rules.min.js"></script>
    <script type="text/javascript" src="../resources/js/demoform.js"></script>
<title>Insert title here</title>
</head>
<body class="container" ng-controller="DemoController">
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
            <div ng-model="input" fb-form="default" fb-default="defaultValue"></div>
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

    <a href="https://github.com/kelp404/angular-form-builder" target="_blank"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_gray_6d6d6d.png" alt="Fork me on GitHub"></a>
</body>
</html>