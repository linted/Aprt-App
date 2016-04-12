'use strict';

App.controller('ListingCreationController', ['$scope', 'ListingService', '$window', function($scope, ListingService, $window){
	var self = this;
	var housingId, orgId, housingHeadline, housingType, forSale, water, heat, electricity, gas, cable, phone, trash, bedrooms, bathrooms, sharedBathroom,
	washerDryer, furnished, airConditioned, petsAllowed, lease, preferences, price, deposit, location, streetAddress, comments, floorPlan, housingPhoto, createDate, postingDate,
	editDate, active, siteUrl, lockChanges, deadbolts, peepholes, balconyLock, exteriorLocks, batterySmokeDetectors, hardWiredSmokeDetectors, carbonDioxideDetector, fireExtinguisher,
	exteriorLighting, safetyInspections, securityAlarm, securityCameras, securityGuard, gatedCommunity, email, contactPhone, latitude, longitude;
	
//	var array = [forSale, water, heat, electricity, gas, cable, phone, trash, sharedBathroom, furnished, petsAllowed, deposit, lockChanges, deadbolts, peepholes, balconyLock, exteriorLocks, batterySmokeDetectors, hardWiredSmokeDetectors, carbonDioxideDetector, fireExtinguisher,
//	             exteriorLighting, safetyInspections, securityAlarm, securityCameras, securityGuard, gatedCommunity];
	
	var array = [forSale, deposit, sharedBathroom, furnished, petsAllowed, water, heat, electricity, gas, cable, phone, trash, lockChanges, peepholes, balconyLock, exteriorLocks, batterySmokeDetectors, hardWiredSmokeDetectors, carbonDioxideDetector, fireExtinguisher,
	             exteriorLighting, safetyInspections, securityAlarm, securityCameras, securityGuard, gatedCommunity]
	
	$scope.lease = "One Year";
	$scope.housingType = "Apartment";
	$scope.bedrooms = "1";
	$scope.bathrooms = "1";
	$scope.washerDryer = "0";
	$scope.airConditioned = "0";
	
	self.validation = function () {
		console.log("Time for validation");
//		console.log(housingHeadline);
		
		//Ensure that a housing headline is given
		if ($scope.housingHeadline == "" || $scope.housingHeadline == undefined) {
			document.getElementById("housingHeadlineValidation").className += " has-error";
			document.getElementById("housingHeadlineError").style.display = 'block';
			document.getElementById("housingHeadlineError").innerHTML = "Please enter a housing headline";
			return false;
		} else {
			document.getElementById("housingHeadlineValidation").className = "form-group";
			document.getElementById("housingHeadlineError").style.display = 'none';
		}
		
		//Ensure that a price is given
		if ($scope.price == undefined) {
			document.getElementById("priceValidation").className += " has-error";
			document.getElementById("priceError").style.display = 'block';
			document.getElementById("priceError").innerHTML = "Please enter a value greater than 0";
			return false;
		}
		
		//Check to see if the price is only numerals. If not, remove all non numeric characters.
		if ($scope.price.toString().match(/^[0-9]+$/) == null) {
			$scope.price = $scope.price.replace(/[^\d.-]/g, '');
			$scope.price = Math.round($scope.price);
		}
		
		//Ensure that price is not less than zero.
		if ($scope.price <= 0) {
			document.getElementById("priceValidation").className += " has-error";
			document.getElementById("priceError").style.display = 'block';
			document.getElementById("priceError").innerHTML = "Please enter a value greater than 0";
			return false;
		} else {
			document.getElementById("priceValidation").className = "form-group";
			document.getElementById("priceError").style.display = 'none';
		}
		
		//Make sure that the street address is valid.
		if ($scope.streetAddress == "" || $scope.streetAddress == undefined) {
			document.getElementById("streetValidation").className += " has-error";
			document.getElementById("streetError").style.display = 'block';
			document.getElementById("streetError").innerHTML = "Please enter a valid street address";
			return false;
		} else {
			document.getElementById("streetValidation").className = "form-group";
			document.getElementById("streetError").style.display = 'none';
			
			
			//Get the latitude and longitude for a given address.
			var geocoder = new google.maps.Geocoder();
			geocoder.geocode( { 'address': $scope.streetAddress}, function(results, status) {
		      if (status == google.maps.GeocoderStatus.OK) {
		        //In this case it creates a marker, but you can get the lat and lng from the location.LatLng
		        $scope.latitude = results[0].geometry.location.lat();
		        $scope.longitude = results[0].geometry.location.lng();
		        $scope.$apply(function(){
		        	$scope.streetAddress = results[0].formatted_address;
		        });
		      } else {
		        alert("Geocode was not successful for the following reason: " + status);
		        document.getElementById("streetValidation").className += " has-error";
				document.getElementById("streetError").style.display = 'block';
				document.getElementById("streetError").innerHTML = "Please enter a valid street address";
				return false;
		      }
		    });
		}
		
		//Make sure that website address is valid
		if (!($scope.siteUrl == undefined || $scope.siteUrl == "")) {
			if ($scope.siteUrl.match(/^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/) == null) {
				document.getElementById("siteVal").className += " has-error";
				document.getElementById("siteError").style.display = 'block';
				document.getElementById("siteError").innerHTML = "Please enter a valid URL";
				return false;
			} else { 
				document.getElementById("siteVal").className = "form-group";
				document.getElementById("siteError").style.display = 'none';
			}
		} else {
			document.getElementById("siteVal").className = "form-group";
			document.getElementById("siteError").style.display = 'none';
		}
		
		//Make sure that email address is valid
		if (!($scope.email == undefined || $scope.email == "")) {
			if ($scope.email.match(/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/) == null) {
				document.getElementById("emailVal").className += " has-error";
				document.getElementById("emailError").style.display = 'block';
				document.getElementById("emailError").innerHTML = "Please enter a valid email";
				return false;
			} else { 
				document.getElementById("emailVal").className = "form-group";
				document.getElementById("emailError").style.display = 'none';
			}
		} else {
			document.getElementById("emailVal").className = "form-group";
			document.getElementById("emailError").style.display = 'none';
		}
		
		if (!($scope.contactPhone == undefined || $scope.contactPhone == "")) {
			if ($scope.contactPhone.toString().match(/^[0-9]+$/) == null) {
				$scope.contactPhone = $scope.contactPhone.replace(/[^\d.-]/g, '');
				if ($scope.contactPhone.length < 10 || $scope.contactPhone.length > 15) {
					document.getElementById("contactVal").className += " has-error";
					document.getElementById("contactError").style.display = 'block';
					document.getElementById("contactError").innerHTML = "Please enter a valid contact";
					return false;
				} else {
					document.getElementById("contactVal").className = "form-group";
					document.getElementById("contactError").style.display = 'none';
				}
			} else { 
				if ($scope.contactPhone.length < 10 || $scope.contactPhone.length > 15) {
					document.getElementById("contactVal").className += " has-error";
					document.getElementById("contactError").style.display = 'block';
					document.getElementById("contactError").innerHTML = "Please enter a valid contact";
					return false;
				} else {
					document.getElementById("contactVal").className = "form-group";
					document.getElementById("contactError").style.display = 'none';
				}
			}
		} else {
			document.getElementById("contactVal").className = "form-group";
			document.getElementById("contactError").style.display = 'none';
		}
		
		if (($scope.siteUrl == undefined || $scope.siteUrl == "") && ($scope.email == undefined || $scope.email == "") && ($scope.contactPhone == undefined || $scope.contactPhone == "")) {
			document.getElementById("siteVal").className += " has-error";
			document.getElementById("siteError").style.display = 'block';
			document.getElementById("siteError").innerHTML = "Please enter a form of contact (Website/Email/Phone)";
			return false;
		} else {
			document.getElementById("siteVal").className = "form-group";
			document.getElementById("siteError").style.display = 'none';
		}
		
		return true;
		
	}
	
	$scope.createNewListing = function () {
		console.log('creating new listing');
		
			if (self.validation()) {
				setTimeout(function() {
					console.log('sending to db');
					console.log(latitude);
					console.log(longitude);
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
						water: array[5],
						heat: array[6],
						electricity: array[7],
						gas: array[8],
						cable: array[9],
						phone: array[10],
						trash: array[11],
						bedrooms: $scope.bedrooms,
						bathrooms: $scope.bathrooms,
						sharedBathroom: array[2],
						washerDryer: $scope.washerDryer,
						furnished: array[3],
						airConditioned: $scope.airConditioned,
						petsAllowed: array[4],
						lease: $scope.lease,
						preferences: $scope.preferences,
						price: $scope.price,
						deposit: array[1],
						location: $scope.location,
						streetAddress: $scope.streetAddress,
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
						contactPhone: $scope.contactPhone,
						latitude: $scope.latitude,
						longitude: $scope.longitude
					});
					var str = JSON.parse(somedata);
					console.log(str);
					ListingService.createNewListing(somedata);
				}, 2000);
				$window.location.assign( "/" );
			}
		
		//Location validation
//		var address = document.getElementById('locationTxt').value;
//		console.log(address);
//		self.validate(address);
		
	}
}])