var hotelButlerCtrls = angular.module("hotelButlerCtrls", []);

hotelButlerCtrls.controller('stayIndexCtrl',['$scope','Stay', function($scope, Stay){
  //Get all the stays
  $scope.stays = Stay.query();

  //nghide function for new form creation if no stays exist
  $scope.existingStay = function(){
    if($scope.stays === []){
      return false;
    }else{
      return true;
    }
  };

}])

.controller('stayCreateCtrl',['$scope','$location','Stay', 'Hotel', function($scope,$location, Stay, Hotel){
  //Query hotels for drop down select
  $scope.hotels = Hotel.query();

  //date options for datepicker
  $scope.dateOptions = {
    changeYear: true,
    changeMonth: true,
    yearRange: '2014:2020'
  };

  $scope.createStay = function() {
    //create the stay object to send to back-end
    var stay = new Stay($scope.stay);

    stay.$save(function() {
      // console.log(stay.id);
      // redirect to root path CHANGE LATER TO STAY
      $location.path("/stays/:" + stay.id);
    }, function(response) {
      //post response objects to the view
      $scope.errors = response.data.errors;
    });
  };
  
}])

.controller('stayShowCtrl',['$scope','Stay','$location','$routeParams', function($scope, Stay, $location, $routeParams){
    // Grab the stay from the server
    $scope.stay = Stay.get({id: $routeParams.id})
  }]);






