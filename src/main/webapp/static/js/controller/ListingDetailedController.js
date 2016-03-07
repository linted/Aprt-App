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
	
	self.fetchSingleListing(id);
    
    
//    /***********************TEMP CODE******************************/
//    self.detailedListing.latlng = {lat:37.391031, lng:-79.191554};
//    /************************END TEMP*******************************/
//    
//    //set up the map
//	initMap(self.detailedListing.latlng);
//    //add marker to map
//    addMarker(self.detailedListing.latlng);
}]);
