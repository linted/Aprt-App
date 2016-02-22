'use strict';

App.controller('ListingController', ['$scope', 'ListingService', function($scope, ListingService) {
	var self = this;
	self.listing = {id:'', headline:'', lease:'', price:''};
	self.listings = [];
	
	self.fetchAllListings = function() {
		ListingService.fetchAllListings()
			.then(
					function(d) {
						console.log(d);
						self.listings = d;
					},
					function(errResponse) {
						console.error('Error while fetching listings');
					}
			);
	};
	
	self.fetchAllListings();
}]);