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
	var keyId, housingId, orgId, housingHeadline, housingType, forSale, water, heat, electricity, gas, cable, phone, trash, bedrooms, bathrooms, sharedBathroom,
	washerDryer, furnished, airConditioned, petsAllowed, lease, preferences, price, deposit, location, comments, floorPlan, housingPhoto, createDate, postingDate,
	editDate, active, siteUrl, lockChanges, deadbolts, peepholes, balconyLock, exteriorLocks, batterySmokeDetectors, hardWiredSmokeDetectors, coDetector, fireExtinguisher,
	exteriorLighting, safetyInspections, securityAlarm, securityCameras, securityGuard, gatedCommunity;
	
	$scope.createNewListing = function () {
		console.log('creating new listing');
		var data = $.param({
			json: JSON.stringify({
				keyId: $scope.keyId,
				housingId: $scope.housingId,
				orgId: $scope.orgId,
				housingHeadline: $scope.housingHeadline,
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
				createDate: $scope.createDate,
				postingDate: $scope.postingDate,
				editDate: $scope.editDate,
				active: '1',
				siteUrl: $scope.siteUrl,
				lockChanges: $scope.lockChanges,
				deadbolts: $scope.deadbolts,
				peepholes: $scope.peepholes,
				balconyLock: $scope.balconyLock,
				exteriorLocks: $scope.exteriorLocks,
				batterySmokeDetectors: $scope.batterySmokeDetectors,
				hardWiredSmokeDetectors: $scope.hardWiredSmokeDetectors,
				coDetector: $scope.coDetector,
				fireExtinguisher: $scope.fireExtinguisher,
				exteriorLighting: $scope.exteriorLighting,
				safetyInspections: $scope.safetyInspections,
				securityAlarm: $scope.securityAlarm,
				securityCameras: $scope.securityCameras,
				securityGuard: $scope.securityGuard,
				gatedCommunity: $scope.gatedCommunity
			})
		});
		var somedata = JSON.stringify({
			keyId: $scope.keyId,
			housingId: $scope.housingId,
			orgId: $scope.orgId,
			housingHeadline: $scope.housingHeadline,
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
			createDate: $scope.createDate,
			postingDate: $scope.postingDate,
			editDate: $scope.editDate,
			active: '1',
			siteUrl: $scope.siteUrl,
			lockChanges: $scope.lockChanges,
			deadbolts: $scope.deadbolts,
			peepholes: $scope.peepholes,
			balconyLock: $scope.balconyLock,
			exteriorLocks: $scope.exteriorLocks,
			batterySmokeDetectors: $scope.batterySmokeDetectors,
			hardWiredSmokeDetectors: $scope.hardWiredSmokeDetectors,
			coDetector: $scope.coDetector,
			fireExtinguisher: $scope.fireExtinguisher,
			exteriorLighting: $scope.exteriorLighting,
			safetyInspections: $scope.safetyInspections,
			securityAlarm: $scope.securityAlarm,
			securityCameras: $scope.securityCameras,
			securityGuard: $scope.securityGuard,
			gatedCommunity: $scope.gatedCommunity
		})
		var str = JSON.parse(somedata);
		console.log(str);
		ListingService.createNewListing(somedata);
	}
}])
