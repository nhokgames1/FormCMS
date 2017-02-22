var app = angular.module('myapp', []);
	
app.controller('myCtrl', function($scope,$http,$window) {
	
	 $scope.url  = 'http://localhost:8080/FormCMS/listForm';
	 $http.get($scope.url,{header : {'Content-Type' : 'application/json; charset=UTF-8'}}).then(function(response) {
	 $scope.arrForm = response.data;
	
	 // console.log($scope.arrStudent);
	

	 //add user to server
	 $scope.saveUser = function() {
	 	console.log($scope.user);
	 	$http({
	 		method: 'POST',
        		url     : '/FormCMS/add',
                data    : $scope.user, //forms user object
                headers : {'Content-Type': 'application/json;charset=UTF-8'} 
	 	})
	 	.success(function(data){

	 	})
	 };	
	 //get user into field
	 $scope.selectUser=function(formlist){
	 	console.log(formlist);	
	 	$scope.clickedUser= user;
	 }
			  	});
	 $scope.updateUser = function(user){
	 	$scope.user=user;
	 	console.log(user);
	 	$http({
	 		method: 'PUT',
	 		url: '/FormCMS/update/'+user.id,
	 		data : $scope.user,
	 		headers : {'Content-Type': 'application/json; charset=UTF-8'}

	 	})
	 }
	 //delete id
	 $scope.deleteUser=function(id){
	 	
	 	
	 	$http({
	 		method: 'DELETE',
	 		url: '/FormCMS/delete/'+id,
	 		headers : {'Content-Type': 'application/json'}
	 	})

	 }
	 $scope.login= function(){
	 	console.log($scope.user);
	 	$http({
	 		method: 'POST',
        		url     : '/FormCMS/login',
                data    : $scope.user, //forms user object
                headers : {'Content-Type': 'application/json;charset=UTF-8'} 
	 	})
	 	.then(function mydata(response,$window){
	 		$scope.data=response.data;
	 		console.log($scope.data);
	 		if ($scope.data==true) {
	 			window.location.href = "http://localhost:8080/FormCMS/home";
	 			


	 		}
	 		else 
	 			$scope.message="Username or Password is incorrect";
	 			
	 	})
	 }
	});
