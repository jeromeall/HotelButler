angular.module('stayServices', ['ngResource'])
  .factory('Stay', function($resource) {
    return $resource('/stay.json');
  })
  .factory('Hotel', function($resource) {
    return $resource('/hotels.json');
  });