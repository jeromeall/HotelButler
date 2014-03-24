angular.module('stayServices', ['ngResource'])
  .factory('Stay', function($resource) {
    return $resource('/stays.json');
  })
  .factory('Hotel', function($resource) {
    return $resource('/hotels.json');
  });