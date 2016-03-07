'use strict';

var App = angular.module('myApp', ['ngRoute']);

App.config(['$routeProvider', function($routeProvider) {
	$routeProvider
		.when('/', {
			templateUrl: 'static/partials/apt-finder_list.jsp',
			controller: 'ListingController as ctrl'
		})
		.when('/properties/:keyId', {
			templateUrl: 'static/partials/detailedlisting.jsp',
			controller: 'ListingDetailedController'
		})
		.otherwise({redirectTo:'/'});
}]);