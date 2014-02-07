angular.module('blogger', [
  'ngRoute',
  'blogger.controllers'
])
.config ($routeProvider, $locationProvider) ->
  $routeProvider

    .when '/',
      templateUrl: '/templates/posts/index.html'
      controller:  'PostsController'

    .otherwise redirectTo: '/'
