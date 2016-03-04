'use strict';

var App = angular.module('myApp', ['ngRoute']);

App.config(['$routeProvider', function($routeProvider) {
	$routeProvider
		.when('/properties', {
			controller: 'ListingController',
			resolve: {
				async: ['ListingService', function() {
					return ListingService.fetchAllListings();
				}]
			}
		})
		.when('/properties/:id', {
			controller: 'ListingDetailedController',
			resolve: {
				async: ['ListingService','$route', function($route) {
					return ListingService.fetchSingleListing($route.current.params.id);
				}]
			}
		})
		.otherwise({redirectTo:'/properties'});
}]);