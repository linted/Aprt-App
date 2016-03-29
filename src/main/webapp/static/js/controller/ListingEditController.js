'use strict';

App.controller('ListingEditController', ['$scope', 'ListingService', '$routeParams', function($scope, ListingService, $routeParams) {
    //set up function scope
    var self = this;
	var listing = {};
	var id;
	
	id = $routeParams.keyId;
	console.log("key id");
	console.log(id);
	console.log(typeof id);
	console.log(typeof listing);
	
	self.fetchSingleListing = function(id) {
		ListingService.fetchSingleListing(id)
			.then(
					function(d) {
						console.log("logging listing");
						console.log(d);
						self.listing = d;
//						console.log(self.listing);
					},
					function(errResponse) {
						console.error('some error');
					}
			);
	};
	
	self.fetchSingleListing(id);
	
    $scope.resultsMapInit = function () {
        initMap("resultsGoogleMaps", {lat:37.391031, lng:-79.191554}, 13);
        addMarker({lat:37.391031, lng:-79.191554});
    }
    
    
	
    $scope.updateListing = function () {
    	console.log('updating listing');
    	console.log('logging listing');
    	console.log(self.listing);
    	var dataToUpdate = JSON.stringify(self.listing);
//    	var str = JSON.parse(dataToUpdate);
//		console.log(str);
        ListingService.editListing(dataToUpdate);
    }
    
    $scope.confirmDelete = function () {
    	var confirmation = confirm("Are you sure you wish to delete this listing?");
    	if (confirmation) {
    		self.deleteListing();
    		return true;
    	} else return false;
    }
    
    self.deleteListing = function () {
    	ListingService.deleteListing(id);
    }
    
}]);