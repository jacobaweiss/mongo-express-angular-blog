success = ->
stripImmutableData = (form) ->
  delete form['_id']
  form

angular.module('blogger.controllers', [])

.controller 'PostsController', ($scope, Post) ->
  $scope.posts = Post.query()
  $scope.removePost = (id) -> Post.delete { id: id }, -> $scope.posts = Post.query()

.controller 'ShowPostController', ($scope, $location, $routeParams, Post) ->
  $scope.post = Post.get { id: $routeParams.id }, success, -> $location.path '/'
  $scope.removePost = -> Post.delete { id: $routeParams.id }, -> $location.path '/'

.controller 'AddPostController', ($scope, $location, Post) ->
  $scope.submitPost = -> (new Post $scope.post).$save -> $location.path '/'

.controller 'EditPostController', ($scope, $location, $routeParams, Post) ->
  $scope.post = Post.get { id: $routeParams.id }, success, -> $location.path '/'
  $scope.updatePost = ->
    Post.update { id: $routeParams.id }, stripImmutableData($scope.post), ->
      $location.path "/post/#{$routeParams.id}"
