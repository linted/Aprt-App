'use strict';

App.controller('ListingDetailedController', ['$scope', 'ListingService', '$routeParams', function($scope, ListingService, $routeParams) {
    //set up function scope
    var self = this;
	var listing = {};
	var id;
	
	id = $routeParams.keyId;
	console.log("key id");
	console.log(id);
	console.log(typeof id);
	
	self.fetchSingleListing = function(id) {
        
		ListingService.fetchSingleListing(id)
			.then(
					function(d) {
						console.log("logging listing");
						console.log(d);
						self.listing = d;
					},
					function(errResponse) {
						console.error('some error');
					}
			);
	};
	
    self.resultsMapInit = function () {
        console.log("listings map");
        var map = initMap("resultsGoogleMaps", {lat:37.391031, lng:-79.191554}, 13);
        addMarker({lat:37.391031, lng:-79.191554}, map);
        return map;
    }
    
	self.fetchSingleListing(id);
    self.map = self.resultsMapInit();
    google.maps.event.trigger(self.map, "resize");
    
}]);
