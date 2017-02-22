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
    // when the response is available
      }, function errorCallback(response) {
    // called asynchronously if an error occurs
    // or server returns response with an error status.
  });
       

      $scope.try =function() {
      var checkbox, textbox,test;
      textbox = $builder.addFormObject('tester', {
        id: 'textbox',
        component: 'textInput',
        label: 'Name',
        description: '',
        placeholder: 'Your name',
        required: true,
        editable: true
      });
      checkbox = $builder.addFormObject('tester', {
        id: 'checkbox',
        component: 'checkbox',
        label: 'Pets',
        description: 'Do you have any pets?',
        options: ['Dog', 'Cat']
      });
      $builder.addFormObject('default', {
        component: 'sampleInput'
      });
       $builder.addFormObject('default',{"id":"textbox","component":"textInput","editable":true,"index":0,"label":"SDSDSD","description":"","placeholder":"Your name","options":[],"required":true,"validation":"/.*/","$$hashKey":"object:25"});
       $builder.addFormObject('default',{"component":"radio","editable":true,"index":1,"label":"Radio",
         "description":"description",
         "placeholder":"placeholder",
         "options":["value one","value two"],"required":false,"validation":"/.*/"});          
      $scope.form = $builder.forms['default'];   
      $scope.input = [];
      $scope.defaultValue = {};
      $scope.defaultValue[textbox.id] = 'default value';
      $scope.defaultValue[checkbox.id] = [true, true];

      return $scope.submit = function() {
        return $validator.validate($scope, 'default').success(function() {
          return console.log('success');
        }).error(function() {
          return console.log('error');
        });
      };
     }
      
    }
  ]);


