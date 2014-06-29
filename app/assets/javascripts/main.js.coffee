# Main IEC angular app module
angular.module 'IEC', [
  'ui.router'
  'angular-parallax'
]

angular.module('IEC').config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise '/'

  $stateProvider
    # Layouts
    .state 'default-layout', {
      abstract: true
      controller: 'ApplicationCtrl'
      templateUrl: '../templates/layouts/default.html'
    }
    .state 'home', {
      parent: 'default-layout'
      url: '/'
      templateUrl: '../templates/home/index.html'
      controller: 'HomeCtrl'
    }
]