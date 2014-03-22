var hotelButlerCtrls = angular.module("hotelButlerCtrls", []);

hotelButlerCtrls.controller('staysCtrl',['$scope', function($scope){
  $scope.msg = "This controller is working";
}]);