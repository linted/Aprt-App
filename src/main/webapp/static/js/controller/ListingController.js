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
	
	var array = [forSale, water, heat, electricity, gas, cable, phone, trash, sharedBathroom, furnished, petsAllowed, lockChanges, deadbolts, peepholes, balconyLock, exteriorLocks, batterySmokeDetectors, hardWiredSmokeDetectors, carbonDioxideDetector, fireExtinguisher,
	             exteriorLighting, safetyInspections, securityAlarm, securityCameras, securityGuard, gatedCommunity]
	
	console.log(array.length)
	
	$scope.createNewListing = function () {
		console.log('creating new listing');
		var i = 0;
		[].forEach.call( document.querySelectorAll('input[type="checkbox"]'),function(el){
		       if (el.checked == true) {
		    	   console.log("this checkbox is checked");
		    	   array[i] = 1;
		       } else if (el.checked == false) {
		    	   console.log("this checkbox is unchecked");
		    	   array[i] = 0;
		       }
		       i++;
			}
		);
		
		var somedata = JSON.stringify({
			housingHeadline: $scope.housingHeadline,
			housingType: $scope.housingType,
			forSale: array[0],
			water: array[1],
			heat: array[2],
			electricity: array[3],
			gas: array[4],
			cable: array[5],
			phone: array[6],
			trash: array[7],
			bedrooms: $scope.bedrooms,
			bathrooms: $scope.bathrooms,
			sharedBathroom: array[8],
			washerDryer: $scope.washerDryer,
			furnished: array[9],
			airConditioned: $scope.airConditioned,
			petsAllowed: array[10],
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
			lockChanges: array[11],
			deadbolts: array[12],
			peepholes: array[13],
			balconyLock: array[14],
			exteriorLocks: array[15],
			batterySmokeDetectors: array[16],
			hardWiredSmokeDetectors: array[17],
			carbonDioxideDetector: array[18],
			fireExtinguisher: array[19],
			exteriorLighting: array[20],
			safetyInspections: array[21],
			securityAlarm: array[22],
			securityCameras: array[23],
			securityGuard: array[24],
			gatedCommunity: array[25],
			email: $scope.email,
			contactPhone: $scope.contactPhone
		});
//		var testdata = JSON.stringify({
//			housingId: '14000',
//			orgId: '14000',
//			housingHeadline: 'someheadline',
//			housingType: 'apartment',
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
//			siteUrl: 'google.com',
//		})
		var str = JSON.parse(somedata);
		console.log(str);
		ListingService.createNewListing(somedata);
	}
}])
