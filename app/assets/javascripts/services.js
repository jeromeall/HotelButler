angular.module('stayServices', ['ngResource'])
  .factory('Stay', function($resource) {
    return $resource('/stays');
  });