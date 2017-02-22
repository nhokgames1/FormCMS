 var app= angular.module('app', ['builder', 'builder.components', 'validator.rules']).run([
    '$builder', function($builder) {
      $builder.registerComponent('sampleInput', {});
      return $builder.registerComponent('name', {});
    }
  ])


  .controller('DemoController', [
    '$scope', '$builder', '$validator','$http', function($scope, $builder, $validator,$http) {
       
       $http({
     method: 'GET',
  url: '/FormCMS/listForm'
      }).then(function successCallback(response) {
        $scope.arrForm= response.data;
   
      }, function errorCallback(response) {
    
  });
      $scope.try =function(formlist) {
      // console.log(formlist);
      $builder.removeFormObject 
      $scope.tempdata =formlist;
      console.log($scope.tempdata.formdata);
      $scope.array =[];
      $scope.array = angular.fromJson($scope.tempdata.formdata);
      console.log ($scope.array);
        for (i=0;i<$scope.array.length;i++) {
          $builder.removeFormObject('building',$scope.array.length);
          $builder.addFormObject('building',$scope.array[i]);
        }

      var checkbox, textbox,test;
      textbox = $builder.addFormObject('default', {
        id: 'textbox',
        component: 'textInput',
        label: 'Name',
        description: '',
        placeholder: 'Your name',
        required: true,
        editable: true
      });
      checkbox = $builder.addFormObject('default', {
        id: 'checkbox',
        component: 'checkbox',
        label: 'Pets',
        description: 'Do you have any pets?',
        options: ['Dog', 'Cat']
      });
      $builder.addFormObject('default', {
        component: 'sampleInput'
      });        
      $scope.form = $builder.forms['default'];   
      $scope.input = [];
      $scope.defaultValue = {};
      $scope.defaultValue[textbox.id] = 'default value';
      $scope.defaultValue[checkbox.id] = [true, true];

      return $scope.submit = function() {
        console.log('ok i"m in');
      };
     }     
    }
  ]);


