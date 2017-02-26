 var app= angular.module('app', ['builder', 'builder.components', 'validator.rules']).run([
    '$builder', function($builder) {
      $builder.registerComponent('sampleInput', {});
     
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
      // console.log($scope.tempdata.formdata);
      $scope.array =[];
      $scope.array = angular.fromJson($scope.tempdata.formdata);
      
        for (i=0;i<$scope.array.length;i++) {
          $builder.removeFormObject('building',$scope.array.length);
          $builder.addFormObject('building',$scope.array[i]);
        }

      var checkbox, textbox,test;
      textbox = $builder.addFormObject('test', {
        id: 'textbox',
        component: 'textInput',
        label: 'hehehe',
        description: '',
        placeholder: 'Tester',
        required: true,
        editable: true
      });
      checkbox = $builder.addFormObject('test', {
        id: 'checkbox',
        component: 'checkbox',
        label: 'Pets',
        description: 'Do you have any pets?',
        options: ['Dog', 'Cat']
      });
      $builder.addFormObject('test', {
        component: 'sampleInput'
      });        
      $scope.form = $builder.forms['building'];   
      $scope.input = [];
      $scope.defaultValue = {};
      $scope.defaultValue[textbox.id] = 'default value';
      $scope.defaultValue[checkbox.id] = [true];
      
      $scope.submit = function(input) {
         
        
         console.log(input);
        $scope.tester=input;
       
        $http({
            method: 'GET',
            url: '/FormCMS/sessionUser'
             }).then(function successCallback(response) {
               $scope.sessionUser= response.data;
              $scope.dataInput=angular.toJson($scope.tester);
                $scope.dataForm = {};
                $scope.dataForm.formData=$scope.dataInput;
                $scope.dataForm.user = $scope.sessionUser.fullname;
                console.log($scope.dataForm);
                $http({
                  method: 'POST',
                  url: '/FormCMS/addFormData',
                  data : $scope.dataForm,
                   headers : {'Content-Type': 'application/json;charset=UTF-8'} 
                })


        // console.log($scope.sessionUser);
            }, function errorCallback(response) {
        
        })
      
      };
     }

    }

  ]);


