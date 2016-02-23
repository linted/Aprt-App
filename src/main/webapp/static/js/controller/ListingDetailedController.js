'use strict';

App.controller('ListingDetailedController', ['$scope', 'ListingService', function($scope, ListingService) {
	var self = this;
	self.listing = {};
	
	self.fetchSingleListing = function(id) {
		ListingService.findListingById(id)
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
	
}]);

//App.controller('ListingDetailedController', ['async', function(async) {
//	var self = this;
//	self.listing = async;
//}]);