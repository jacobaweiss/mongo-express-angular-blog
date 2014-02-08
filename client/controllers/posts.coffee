paramToTitle = (title) ->
  (title.split('_').map (word) -> word[0].toUpperCase() + word[1..-1].toLowerCase()).join ' '

angular.module('blogger.controllers', [])

.controller 'PostsController', ($scope, $http) ->
  $http.get('/api/posts')
    .success (data) -> $scope.posts = data.posts

.controller 'ShowPostController', ($scope, $http, $location, $routeParams) ->
  $http.get("/api/post/#{$routeParams.title}")
    .success (data) -> $scope.post = data.post

  $scope.removePost = ->
    $http.delete("/api/post/#{$routeParams.title}")
      .success (data) -> $location.path '/'

.controller 'AddPostController', ($scope, $http, $location) ->
  $scope.form = {}
  $scope.submitPost = ->
    $http.post('/api/posts', $scope.form)
      .success (data) -> $location.path '/'

.controller 'EditPostController', ($scope, $http, $location, $routeParams) ->
  $scope.form = { title: paramToTitle $routeParams.title }
  $scope.updatePost = ->
    $http.put("/api/post/#{$routeParams.title}", $scope.form)
      .success (data) -> $location.path '/'
