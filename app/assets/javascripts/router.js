
var hotelButlerRouter = angular.module("hotelButlerRouter", ["ngRoute"]);


hotelButlerRouter.config(['$routeProvider',function($routeProvider){
  $routeProvider.
    when("/",
    {
      templateUrl: "templates/stays/index.html",
      controller: "staysCtrl"
    }).
    when('/new',{
      templateUrl: "templates/stays/new.html",
      controller: "staysCtrl"
    });
}]);
