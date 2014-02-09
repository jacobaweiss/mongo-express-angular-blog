angular.module('blogger.services', ['ngResource'])

.factory 'Post', ($resource) ->
  $resource '/api/post/:title', null,
    'update': { method: 'PUT' }
