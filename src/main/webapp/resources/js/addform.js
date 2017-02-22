(function() {
  angular.module('app', ['builder', 'builder.components', 'validator.rules']).run([
    '$builder', function($builder) {
      $builder.registerComponent('sampleInput', {});
      return $builder.registerComponent('name', {});
    }
  ])


  .controller('DemoController', [
    '$scope', '$builder', '$validator','$http', function($scope, $builder, $validator,$http) {
      var checkbox, textbox,test;
      textbox = $builder.addFormObject('default', {
        id: 'textbox',
        component: 'textInput',
        label: 'Name',
        description: 'Go way',
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



      
      
      // $builder.addFormObject('test',{"component":"textInput","editable":true,"index":0,"label":"Hi U","description":"Full Name","placeholder":"Tên của bạn","options":[],"required":false,"validation":"/.*/"});
      // $builder.addFormObject('test',{"component":"radio","editable":true,"index":1,"label":"Radio",
      //   "description":"description",
      //   "placeholder":"placeholder",
      //   "options":["value one","value two"],"required":false,"validation":"/.*/"});

          
      $scope.form = $builder.forms['default'];
     
      $scope.input = [];
      console.log($scope.input);
      $scope.defaultValue = {};
      $scope.defaultValue[textbox.id] = 'default value';
      $scope.defaultValue[checkbox.id] = [true, true];
     
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
