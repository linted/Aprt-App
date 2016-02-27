'use strict';

App.controller('ListingController', ['$scope', 'ListingService', function($scope, ListingService) {
	var self = this;
	self.listing = {};
	self.listings = [];
	var id;
	
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
	
	$scope.totalDisplayed = 20;
	
	$scope.loadMore = function () {
		console.log("loading more");
		$scope.totalDisplayed += 20;
	};
	
	$scope.filterPrice = function(element) {
		var minPrice = document.getElementById('minPrice').value;
		var maxPrice = document.getElementById('maxPrice').value;
		
		console.log("Min Price" + minPrice);
		console.log("Max Price" + maxPrice);
	}
	
	self.visitListing = function (id) {
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
	}
	
//	self.fetchSingleListing = function(id) {
//		ListingService.findListingById(id)
//			.then(
//					function(d) {
//						console.log("logging listing");
//						console.log(d);
//						self.listing = d;
//					},
//					function(errResponse) {
//						console.error('some error');
//					}
//			);
//	};
	
	
}]);

//'use strict';
//
//App.controller('ListingController', ['async', function(async) {
//	var self = this;
//	self.listings = async;
//}]);