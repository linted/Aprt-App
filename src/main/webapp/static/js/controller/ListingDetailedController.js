'use strict';

App.controller('ListingDetailedController', ['$scope', 'ListingService', '$routeParams', '$cookies', function ($scope, ListingService, $routeParams, $cookies) {
    //variable declarations
    var self = this;                                        //
    var listing = {};                                       //declare the listing variable we are going to use
    var id = $routeParams.keyId;                            //the ID of the listing we are looking at  
 
    $scope.allowEdit = false;                               //assume that the user is not the owner

    /* Function declarations */
    self.fetchSingleListing = function (id) {               //function to recieve the listing from the database
        ListingService.fetchSingleListing(id)
            .then(
                function (d) {
                    // if we got the d, assign it to listing
                    self.listing = d;
                    //make the map
                    self.map = self.resultsMapInit();
                    //make sure the map is sized correctly
                    google.maps.event.trigger(self.map, "resize");
                    //check if the user is allowed to edit this page
                    $scope.allowEdit = ($cookies.get('user') == self.listing.orgId);
                },
                function (errResponse) {
                    console.error('some error');
                }
            );
    };

    self.resultsMapInit = function () {                     //function to init the map and display the location
        if (self.listing.latitude && self.listing.longitude) {
            //if we have lat lng then set the map approriatly
            var map = initMap("resultsGoogleMaps", {
                lat: self.listing.latitude,
                lng: self.listing.longitude
            }, 13);
            //make sure the add the marker also
            addMarker({
                lat: self.listing.latitude,
                lng: self.listing.longitude
            }, map);
        } else {
            //if we don't have lat lng, center at liberty, don't add a marker
            var map = initMap("resultsGoogleMaps", {
                lat: 37.391031,
                lng: -79.191554
            }, 13);
        }

        return map;
    }

    
    /* Code that runs */
    self.fetchSingleListing(id);                            //kick it all off
        
    
}]);