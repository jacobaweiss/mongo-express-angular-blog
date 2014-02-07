angular.module('blogger.controllers', [])

.controller 'PostsController', ($scope, $http) ->
  $http.get('/api/posts')
    .success (data) ->
      $scope.posts = data.posts
