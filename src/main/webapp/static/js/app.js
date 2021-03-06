'use strict';

var App = angular.module('myApp', ['ngRoute','ngCookies']);

App.config(['$routeProvider', function ($routeProvider) {
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
        .when('/edit/:keyId', {
            templateUrl: 'static/partials/editlisting2.jsp',
            controller: 'ListingEditController as ctrl'
        }).when('/login', {
            templateUrl: 'static/partials/loginpage.jsp',
            controller: 'loginController as ctrl'
        })
        .otherwise({
            redirectTo: '/'
        });

    //	$locationProvider.html5Mode(true);
}]);