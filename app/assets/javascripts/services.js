angular.module('stayServices', ['ngResource'])
  .factory('Stays', function($resource) {
    return $resource('/stays.json');
  })
  .factory('newStay', function($resource) {
    return $resource('/stays/new.json');
  })
  .factory('Hotel', function($resource) {
    return $resource('/hotels.json');
  });