var app= angular.module('mainApp',['ngRoute']);
app.config(function ($routeProvider){
	$routeProvider
	.when('/',{
		templateUrl:'page.html'
	})
	.when('/login',{
		templateUrl:'http://localhost:8080/Student/home'
	})
	.otherwise({
		redirectTo: '/'
	});

});

app.controller('loginCtrl',function($scope,$location) {

	$scope.submit= function() {

		console.log($scope.user);
		$location.path('/login');
	};
});