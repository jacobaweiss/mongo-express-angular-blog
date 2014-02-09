angular.module('blogger', [
  'ngRoute',
  'blogger.controllers', 'blogger.services',
  'partials'
])
.config ($routeProvider) ->
  $routeProvider

    .when '/',
      templateUrl: '/partials/postIndex.html'
      controller:  'PostsController'

    .when '/posts/new',
      templateUrl: '/partials/postNew.html'
      controller:  'AddPostController'

    .when '/post/edit/:title',
      templateUrl: '/partials/postEdit.html'
      controller:  'EditPostController'

    .when '/post/:title',
      templateUrl: '/partials/postShow.html'
      controller:  'ShowPostController'

    .otherwise redirectTo: '/'
