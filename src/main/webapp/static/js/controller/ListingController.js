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
	
	$scope.applyToSearch = function() {
		var minPrice = document.getElementById('lowerPriceBound').value;
		var maxPrice = document.getElementById('upperPriceBound').value;
		
		console.log("Min Price" + minPrice);
		console.log("Max Price" + maxPrice);
	}
	
	$scope.filterPrice = function(item) {
//		console.log('filtering prices');
		var minPrice = document.getElementById('lowerPriceBound').value;
		var maxPrice = document.getElementById('upperPriceBound').value;
		if (minPrice == '' && maxPrice == '') {
//			console.log('prices were null');
			return item.price;
		} else if (minPrice == '' && maxPrice > 0) {
			return item.price < maxPrice;
		} else if (minPrice > 0 && maxPrice == '') {
			return item.price > minPrice;
		} else return ((item.price > minPrice && item.price < maxPrice));
	}
	
	$scope.customOrder = function() {
		var order = document.getElementById('SortBySelect').value;
		console.log(order);
	}

}]);
