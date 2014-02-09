titleToParam = (title) -> title.toLowerCase().replace ' ', '_'

stripImmutableData = (form) ->
  delete form['_id']
  form

angular.module('blogger.controllers', [])

.controller 'PostsController', ($scope, $http, Post) ->
  $scope.posts = Post.query()

.controller 'ShowPostController', ($scope, $http, $location, $routeParams, Post) ->
  $scope.post = Post.get { title: $routeParams.title }
  $scope.removePost = ->
    Post.delete { title: $routeParams.title }, ->
      $location.path '/'

.controller 'AddPostController', ($scope, $http, $location, Post) ->
  $scope.post = {}
  $scope.submitPost = ->
    (new Post $scope.post).$save ->
      $location.path '/'

.controller 'EditPostController', ($scope, $http, $location, $routeParams, Post) ->
  $scope.post = Post.get({ title: $routeParams.title })
  $scope.updatePost = ->
    Post.update { title: $routeParams.title}, stripImmutableData($scope.post), ->
      $location.path "/post/#{titleToParam $scope.post.title}"
