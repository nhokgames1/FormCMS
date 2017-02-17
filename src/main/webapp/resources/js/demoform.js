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



      $http({
         method: 'GET',
                url     : '/Student/student',
                data    : $scope.user, //forms user object
                headers : {'Content-Type': 'application/json;charset=UTF-8'}
      }).then(function success(response){
        $scope.daa = 
        console.log(response.data);

          $scope.test= response.data[6].subject;
          $scope.a=$scope.test.replace("[","");
          $scope.b=$scope.a.replace("]","");
          // console.log($scope.last);

          $scope.array= [];
          $scope.array= angular.fromJson($scope.test);

          $scope.hehe = JSON.stringify($scope.array[0]);
          console.log($scope.hehe);
          $scope.data=angular.fromJson($scope.hehe);
          // console.log($scope.array.length);
          // console.log(angular.isObject($scope.hehe));
          // for (i=0;i<$scope.array.length;i++) {
          //   $builder.addFormObject('test',$scope.hehe);
          // }
          for (i=0;i<$scope.array.length;i++) {
            $builder.addFormObject('test',angular.fromJson(JSON.stringify($scope.array[i])));
          }
         
           $builder.addFormObject('test',$scope.data);
           console.log(angular.isObject($scope.data));

      })
      
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
      // $scope.add = function(){
      //   // console.log($scope.input);
      //   $scope.var =JSON.stringify($scope.input[3]);
      //   $scope.count = $scope.input.length;
      //   for (i=0; i<$scope.count;i ++) {
      //     $builder.addFormObject('test',JSON.stringify($scope.input[i]));
          
      //   }
      //   // for (i=0 ,i< $scope.var.length)
      //   // $scope.array=angular.toJson($scope.input);
        
       
        
      //   // $scope.user={};
      //   // $scope.user.name= 'Hi';
      //   // $scope.user.subject= $scope.array;
        
      //   // $scope.first = $scope.user.subject.replace("[","");
      //   // $scope.last= $scope.first.replace("]","");
      //   // console.log($scope.last[0]);
        

      //   // $http({
      //   //   method: 'POST',
      //   //         url     : '/Student/add',
      //   //         data    : $scope.user, //forms user object
      //   //         headers : {'Content-Type': 'application/json;charset=UTF-8'}
      //   // })
       
      //  }

      return $scope.submit = function() {
        console.log($scope.form);
        console.log($scope.input);
       



        return $validator.validate($scope, 'default').success(function() {
          return console.log('success');
        }).error(function() {
          return console.log('error');
        });
      };
      $scope.getmedata= function() {
        console.log($)
      }
      
    }
  ]);


}).call(this);
