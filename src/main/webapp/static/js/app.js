'use strict';

var App = angular.module('myApp', ['ngRoute']);

App.config(['$routeProvider', function($routeProvider) {
	$routeProvider
		.when('/', {
			templateUrl: 'apt-finder_list.jsp',
			controller: 'ListingController as ctrl'
		})
		.when('/properties/:id', {
			templateUrl: 'detailedlisting.jsp',
			controller: 'ListingDetailedController'
		})
		.otherwise({redirectTo:'/'});
}]);