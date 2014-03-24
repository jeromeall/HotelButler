var hotelButlerCtrls = angular.module("hotelButlerCtrls", []);

hotelButlerCtrls.controller('staysCtrl',['$scope','Stays', function($scope, Stays){
  $scope.stays = Stays.query();

  $scope.hotels = Hotel.query();

}])

.controller('newStayCtrl',['$scope','Stay', 'newStay', 'Hotel', function($scope, Stays, newStay, Hotel){
  $scope.stays = Stays.query();

  $scope.stay = newStay.query();


  $scope.createStay = function(){
    console.log($);
    Stay.save($scope.stay);
  };

  $scope.hotels = Hotel.query();

  $scope.dateOptions = {
    changeYear: true,
    changeMonth: true,
    yearRange: '2014:2020'
  };
}]);