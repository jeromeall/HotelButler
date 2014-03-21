
var hotelButlerRouter = angular.module("hotelButlerRouter", ["ngRoute"]);


hotelButlerRouter.config(['$routeProvider',function($routeProvider){
  $routeProvider.
    when("/new",
    {
      templateUrl: "templates/new.html",
      controller: "siteCtrl"
    });
}]);
