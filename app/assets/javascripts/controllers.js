var hotelButlerCtrls = angular.module("hotelButlerCtrls", []);

hotelButlerCtrls.controller('siteCtrl',['$scope', function($scope){
  $scope.msg = "This controller is working";
}]);