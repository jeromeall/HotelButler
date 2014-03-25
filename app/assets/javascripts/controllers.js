var hotelButlerCtrls = angular.module("hotelButlerCtrls", []);

hotelButlerCtrls.controller('stayIndexCtrl',['$scope','Stay', function($scope, Stay){
  $scope.stays = Stay.query();

  $scope.existingStay = function(){
    if($scope.stays === []){
      return false;
    }else{
      return true;
    }
  };

}])

.controller('stayCreateCtrl',['$scope','Stay',  'Hotel','$location', function($scope, Stay, Hotel, $location){
  $scope.stays = Stay.query();

  $scope.stay = {
    hotel_id: null,
    res_num: null,
    checkin_date: null,
    checkout_date: null 
  };


  $scope.createStay = function(isValid){
    if(isValid){
      Stay.save($scope.stay);
      $location.path("/");
    }
  };

  $scope.hotels = Hotel.query();

  $scope.dateOptions = {
    changeYear: true,
    changeMonth: true,
    yearRange: '2014:2020'
  };
}])

.controller('stayShowCtrl',['$scope','Stay',  'Hotel','$location', function($scope, Stay, Hotel, $location){
  }]);






