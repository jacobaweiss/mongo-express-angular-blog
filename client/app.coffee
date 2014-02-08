angular.module('blogger', [
  'ngRoute',
  'blogger.controllers',
  'partials'
])
.config ($routeProvider) ->
  $routeProvider

    .when '/posts',
      templateUrl: '/partials/postIndex.html'
      controller:  'PostsController'

    .when '/post/:title',
      templateUrl: '/partials/postShow.html'
      controller:  'PostController'

    .otherwise redirectTo: '/'
