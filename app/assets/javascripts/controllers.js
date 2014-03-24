var hotelButlerCtrls = angular.module("hotelButlerCtrls", []);

hotelButlerCtrls.controller('staysCtrl',['$scope','Stay', function($scope, Stay){
  $scope.stays = Stay.query();

  $scope.hotels = Hotel.query();

}])

.controller('newStayCtrl',['$scope', 'Stay', 'Hotel', function($scope, Stay, Hotel){
  $scope.stays = Stay.query();

  $scope.stay = new Stay();


  $scope.createStay = function(){
    Stay.save($scope.stay);
  };

  $scope.hotels = Hotel.query();

  $scope.dateOptions = {
    changeYear: true,
    changeMonth: true,
    yearRange: '2014:2020'
  };
}]);