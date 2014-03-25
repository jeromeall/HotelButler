
var hotelButlerRouter = angular.module("hotelButlerRouter", ["ngRoute"]);


hotelButlerRouter.config(['$routeProvider','$httpProvider',function($routeProvider, $httpProvider){
  authToken = $("meta[name=\"csrf-token\"]").attr("content");
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken;
  $routeProvider.
    when("/",
    {
      templateUrl: "templates/stays/index.html",
      controller: "stayIndexCtrl"
    }).
    when('/stays/new',{
      templateUrl: "templates/stays/new.html",
      controller: "stayCreateCtrl"
    });
}]);
