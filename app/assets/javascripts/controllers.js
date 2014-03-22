var hotelButlerCtrls = angular.module("hotelButlerCtrls", []);

hotelButlerCtrls.controller('staysCtrl',['$scope','$location','$rootScope', 'Stay', function($scope, $location, $rootScope, Stay){
  $scope.stays = Stay.query();

  $scope.newStay = function() {
    if($scope.stays === []){
      return true;
    }else{
      return false;
    }
  };


}]);