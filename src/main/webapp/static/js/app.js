'use strict';

var App = angular.module('myApp', ['ngRoute']);

App.config(['$routeProvider', function($routeProvider) {
	$routeProvider
		.when('/', {
			templateUrl: 'static/partials/apt-finder_list.jsp',
			controller: 'ListingController as ctrl'
		})
		.when('/properties/:keyId', {
			templateUrl: 'static/partials/apt-finder_results.jsp',
			controller: 'ListingDetailedController as ctrl'
		})
		.when('/new', {
			templateUrl: 'static/partials/createlisting.jsp',
			controller: 'ListingCreationController as ctrl'
		})
		.otherwise({redirectTo:'/'});
	
//	$locationProvider.html5Mode(true);
}]);