angular.module('stayServices', ['ngResource'])
  .factory('Stay', function($resource) {
    return $resource('/stays/:id', { id: '@id'});
  })
  .factory('Hotel', function($resource) {
    return $resource('/hotels/:id', { id: '@id'});
  });