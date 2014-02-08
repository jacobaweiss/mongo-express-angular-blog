angular.module('blogger.controllers', [])

.controller 'PostsController', ($scope, $http) ->
  $http.get('/api/posts')
    .success (data) -> $scope.posts = data.posts

.controller 'PostController', ($scope, $http, $routeParams) ->
  $http.get("/api/post/#{$routeParams.title}")
    .success (data) -> $scope.post = data.post
