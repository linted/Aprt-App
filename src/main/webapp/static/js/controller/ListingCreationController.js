'use strict';

App.controller('ListingCreationController', ['$scope', 'ListingService', function($scope, ListingService){
	var self = this;
	var housingId, orgId, housingHeadline, housingType, forSale, water, heat, electricity, gas, cable, phone, trash, bedrooms, bathrooms, sharedBathroom,
	washerDryer, furnished, airConditioned, petsAllowed, lease, preferences, price, deposit, location, streetAddress, comments, floorPlan, housingPhoto, createDate, postingDate,
	editDate, active, siteUrl, lockChanges, deadbolts, peepholes, balconyLock, exteriorLocks, batterySmokeDetectors, hardWiredSmokeDetectors, carbonDioxideDetector, fireExtinguisher,
	exteriorLighting, safetyInspections, securityAlarm, securityCameras, securityGuard, gatedCommunity, email, contactPhone, latitude, longitude;
	
	var array = [forSale, water, heat, electricity, gas, cable, phone, trash, sharedBathroom, furnished, petsAllowed, deposit, lockChanges, deadbolts, peepholes, balconyLock, exteriorLocks, batterySmokeDetectors, hardWiredSmokeDetectors, carbonDioxideDetector, fireExtinguisher,
	             exteriorLighting, safetyInspections, securityAlarm, securityCameras, securityGuard, gatedCommunity];
	
	$scope.lease = "One Year";
	
	console.log(array.length);
	var address = document.getElementById('locationTxt').value;
	console.log(location);
	
	self.validation = function () {
		console.log("Time for validation");
		console.log(housingHeadline);
		
		if ($scope.housingHeadline == "" || $scope.housingHeadline == undefined) {
			document.getElementById("housingHeadlineValidation").className += " has-error";
			document.getElementById("housingHeadlineError").style.display = 'block';
			document.getElementById("priceError").innerHTML = "Please enter a housing headline";
			return false;
		} else {
			document.getElementById("housingHeadlineValidation").className = "form-group";
			document.getElementById("housingHeadlineError").style.display = 'none';
		}
		
		if ($scope.price == undefined) {
			document.getElementById("priceValidation").className += " has-error";
			document.getElementById("priceError").style.display = 'block';
			document.getElementById("priceError").innerHTML = "Please enter a value greater than 0";
			return false;
		}
		
		$scope.price = $scope.price.replace(/[^\d.-]/g, '');
		$scope.price = Math.round($scope.price);
		if ($scope.price < 0) {
			document.getElementById("priceValidation").className += " has-error";
			document.getElementById("priceError").style.display = 'block';
			return false;
		} else {
			document.getElementById("priceValidation").className = "form-group";
			document.getElementById("priceError").style.display = 'none';
		}
	}
	
	self.validate = function (CurrentAddress) {
		console.log("We are validating")
		var geocoder = new google.maps.Geocoder();
		    //In this case it gets the address from an element on the page, but obviously you  could just pass it to the method instead
//		    var address = document.getElementById("locationTxt").value;
		
		    geocoder.geocode( { 'address': CurrentAddress}, function(results, status) {
		      if (status == google.maps.GeocoderStatus.OK) {
		        //In this case it creates a marker, but you can get the lat and lng from the location.LatLng
		        latitude = results[0].geometry.location.lat();
		        longitude = results[0].geometry.location.long()
		        console.log(latitude);
		        console.log(longitude);
		      } else {
		        alert("Geocode was not successful for the following reason: " + status);
		      }
		    });
	};
	
	$scope.createNewListing = function () {
		console.log('creating new listing');
		
		if (self.validation()) {
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
				deposit: array[11],
				location: $scope.location,
				comments: $scope.comments,
				floorPlan: $scope.floorPlan,
				housingPhoto: $scope.housingPhoto,
				active: '1',
				siteUrl: $scope.siteUrl,
				lockChanges: array[12],
				deadbolts: array[13],
				peepholes: array[14],
				balconyLock: array[15],
				exteriorLocks: array[16],
				batterySmokeDetectors: array[17],
				hardWiredSmokeDetectors: array[18],
				carbonDioxideDetector: array[19],
				fireExtinguisher: array[20],
				exteriorLighting: array[21],
				safetyInspections: array[22],
				securityAlarm: array[23],
				securityCameras: array[24],
				securityGuard: array[25],
				gatedCommunity: array[26],
				email: $scope.email,
				contactPhone: $scope.contactPhone
			});
			var str = JSON.parse(somedata);
			console.log(str);
			ListingService.createNewListing(somedata);
		}
		
		//Location validation
//		var address = document.getElementById('locationTxt').value;
//		console.log(address);
//		self.validate(address);
		
	}
}])