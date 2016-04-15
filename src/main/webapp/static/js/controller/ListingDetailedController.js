'use strict';

App.controller('ListingDetailedController', ['$scope', 'ListingService', '$routeParams', '$cookies', function ($scope, ListingService, $routeParams, $cookies) {
    //variable declarations
    var self = this;
    var listing = {};
    var id;

    id = $routeParams.keyId;
    $scope.allowEdit = false;

    /* Function declarations */
    self.fetchSingleListing = function (id) {
        ListingService.fetchSingleListing(id)
            .then(
                function (d) {
                    console.log("logging listing");
                    console.log(d);
                    self.listing = d;
                    self.map = self.resultsMapInit();
                    google.maps.event.trigger(self.map, "resize");
                    $scope.allowEdit = ($cookies.get('user') === self.listing.orgId);
                },
                function (errResponse) {
                    console.error('some error');
                }
            );
    };

    self.resultsMapInit = function () {
        console.log("listings map");
        if (self.listing.latitude && self.listing.longitude) {
            var map = initMap("resultsGoogleMaps", {
                lat: self.listing.latitude,
                lng: self.listing.longitude
            }, 13);
            addMarker({
                lat: self.listing.latitude,
                lng: self.listing.longitude
            }, map);
        } else {
            var map = initMap("resultsGoogleMaps", {
                lat: 37.391031,
                lng: -79.191554
            }, 13);
        }

        return map;
    }

    
    /* Code that runs */
    self.fetchSingleListing(id);
        
    
}]);