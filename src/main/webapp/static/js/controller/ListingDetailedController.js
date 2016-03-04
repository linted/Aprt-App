'use strict';

App.controller('ListingDetailedController', ['$scope', 'ListingService', function($scope, ListingService) {
    //set up function scope
    var self = this;
	
    
    
	//function declarations
	self.fetchSingleListing = function(id) {
		ListingService.findListingById(id)
			.then(
					function(d) {
						console.log("logging listing");
						console.log(d);
						self.detailedListing = d;
					},
					function(errResponse) {
						console.error('some error');
					}
			);
	};
	
    
    //code to be run
    //
	self.fetchSingleListing(id);
    
    
    /***********************TEMP CODE******************************/
    self.detailedListing.latlng ={lat:37.391031, lng:-79.191554};
    /************************END TEMP*******************************/
    
    //set up the map
	initMap(self.detailedListing.latlng);
    //add marker to map
    addMarker(self.detailedListing.latlng);
}]);
