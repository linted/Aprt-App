'use strict';

var App = angular.module('myApp', ['ngRoute']);

App.config(['$routeProvider', function($routeProvider) {
	$routeProvider
		.when('/', {
			templateUrl: 'static/partials/apt-finder_list.jsp',
			controller: 'ListingController as ctrl'
		})
		.when('/:id', {
			templateUrl: 'views/detailedlisting.jsp',
			controller: 'ListingDetailedController'
		})
		.otherwise({redirectTo:'/'});
}]);