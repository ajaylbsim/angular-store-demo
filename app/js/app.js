angular.module( 'app', [ 'ui.router','ngMaterial','ngAnimate', 'ngAria', 'home','header', 'footer'
] ).config( function($urlRouterProvider) {
  $urlRouterProvider.otherwise( '/home/list' );
} ).run( [ '$rootScope',
  function( $rootScope) {
  }
] );
