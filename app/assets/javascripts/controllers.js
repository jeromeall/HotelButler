var hotelButlerCtrls = angular.module("hotelButlerCtrls", []);

hotelButlerCtrls.controller('staysCtrl',['$scope','Stay', function($scope, Stay){
  $scope.stays = Stay.query();

  $scope.hotels = Hotel.query();

  $scope.newStay = function() {
    if($scope.stays !== []){
      return false;
    }else{
      return true;
    }
  };


}])

.controller('newStayCtrl',['$scope', 'Stay', 'Hotel', function($scope, Stay, Hotel){
  $scope.stays = Stay.query();

  $scope.hotels = Hotel.query();

  $scope.dateOptions = {
    changeYear: true,
    changeMonth: true,
    yearRange: '2014:2020'
  };
}]);