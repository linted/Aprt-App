'use strict';

App.controller('ListingController', ['$scope', 'ListingService', function($scope, ListingService) {
	var self = this;
	self.listing = {};
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

App.controller('ListingCreationController', ['$scope', 'ListingService', function($scope, ListingService){
	var self = this;
	var housingId, orgId, housingHeadline, housingType, forSale, water, heat, electricity, gas, cable, phone, trash, bedrooms, bathrooms, sharedBathroom,
	washerDryer, furnished, airConditioned, petsAllowed, lease, preferences, price, deposit, location, comments, floorPlan, housingPhoto, createDate, postingDate,
	editDate, active, siteUrl, lockChanges, deadbolts, peepholes, balconyLock, exteriorLocks, batterySmokeDetectors, hardWiredSmokeDetectors, carbonDioxideDetector, fireExtinguisher,
	exteriorLighting, safetyInspections, securityAlarm, securityCameras, securityGuard, gatedCommunity, email, contactPhone, latitude, longitude;
	
	$scope.createNewListing = function () {
		console.log('creating new listing');
		var somedata = JSON.stringify({
			housingId: $scope.housingId,
			orgId: $scope.orgId,
			housingHeadline: $scope.housingHeadline,
			batterySmokeDetectors: $scope.batterySmokeDetectors,
			housingType: $scope.housingType,
			forSale: $scope.forSale,
			water: $scope.water,
			heat: $scope.heat,
			electricity: $scope.electricity,
			gas: $scope.gas,
			cable: $scope.cable,
			phone: $scope.phone,
			trash: $scope.trash,
			bedrooms: $scope.bedrooms,
			bathrooms: $scope.bathrooms,
			sharedBathroom: $scope.sharedBathroom,
			washerDryer: $scope.washerDryer,
			furnished: $scope.furnished,
			airConditioned: $scope.airConditioned,
			petsAllowed: $scope.petsAllowed,
			lease: $scope.lease,
			preferences: $scope.preferences,
			price: $scope.price,
			deposit: $scope.deposit,
			location: $scope.location,
			comments: $scope.comments,
			floorPlan: $scope.floorPlan,
			housingPhoto: $scope.housingPhoto,
			active: '1',
			siteUrl: $scope.siteUrl,
			lockChanges: $scope.lockChanges,
			deadbolts: $scope.deadbolts,
			peepholes: $scope.peepholes,
			balconyLock: $scope.balconyLock,
			exteriorLocks: $scope.exteriorLocks,
			hardWiredSmokeDetectors: $scope.hardWiredSmokeDetectors,
			carbonDioxideDetector: $scope.carbonDioxideDetector,
			fireExtinguisher: $scope.fireExtinguisher,
			exteriorLighting: $scope.exteriorLighting,
			safetyInspections: $scope.safetyInspections,
			securityAlarm: $scope.securityAlarm,
			securityCameras: $scope.securityCameras,
			securityGuard: $scope.securityGuard,
			gatedCommunity: $scope.gatedCommunity,
			email: $scope.email,
			contactPhone: $scope.contactPhone
		})
//		var testdata = JSON.stringify({
//			housingId: '14000',
//			orgId: '14000',
//			housingHeadline: 'someheadline',
//			batterySmokeDetectors: 'true',
//			housingType: 'apartment',
//			forSale: 'true',
//			water: 'true',
//			heat: 'true',
//			electricity: 'true',
//			gas: 'true',
//			cable: 'true',
//			phone: 'true',
//			trash: 'true',
//			bedrooms: '2',
//			bathrooms: '2',
//			sharedBathroom: 'true',
//			washerDryer: '2',
//			furnished: 'true',
//			airConditioned: '2',
//			petsAllowed: '2',
//			lease: 'none',
//			preferences: 'none',
//			price: '500',
//			deposit: '100',
//			location: 'none',
//			comments: 'none',
//			floorPlan: 'none',
//			housingPhoto: 'none',
//			active: '1',
//			siteUrl: 'google.com',
//			lockChanges: 'true',
//			deadbolts: 'true',
//			peepholes: 'true',
//			balconyLock: 'true',
//			exteriorLocks: 'true',
//			hardWiredSmokeDetectors: 'true',
//			carbonDioxideDetector: 'true',
//			fireExtinguisher: 'true',
//			exteriorLighting: 'true',
//			safetyInspections: 'true',
//			securityAlarm: 'true',
//			securityCameras: 'true',
//			securityGuard: 'true',
//			gatedCommunity: 'true'
//		})
		var str = JSON.parse(somedata);
		console.log(str);
		ListingService.createNewListing(somedata);
	}
}])
