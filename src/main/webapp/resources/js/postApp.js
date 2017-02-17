 // Defining angularjs application.
    var postApp = angular.module('postApp', []);
    // Controller function and passing $http service and $scope var.
    postApp.controller('postController', function($scope, $http) {
      // create a blank object to handle form data.
        $scope.user = {};
     
      // calling our submit function.
        $scope.submitForm = function() {
        	$http({
        		method: 'POST',
        		url     : '/Student/add',
                data    : $scope.user, //forms user object
                headers : {'Content-Type': 'application/json'} 
        	})
        	.success(function(data) {
        		
        	})
        };
        
    });