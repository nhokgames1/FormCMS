(function() {
  angular.module('app', ['builder', 'builder.components', 'validator.rules']).run([
    '$builder', function($builder) {
     
     
    }
  ])


  .controller('DemoController', [
    '$scope', '$builder', '$validator','$http', function($scope, $builder, $validator,$http) {
                    
      $scope.form = $builder.forms['default'];
     
      $scope.input = [];
      console.log($scope.input);
     
     
      return $scope.submit = function() {
        console.log($scope.form);
        $scope.stringform = (JSON.stringify($scope.form));
        $scope.sendding ={};
        $scope.sendding.name=$scope.nameform;
        $scope.sendding.formdata=$scope.stringform;
        $http({
          method: 'POST',
          url : '/FormCMS/addForm',
          data :$scope.sendding,
          headers : {'Content-Type': 'application/json;charset=UTF-8'}
        })
       
      };         
    }
  ]);


}).call(this);
