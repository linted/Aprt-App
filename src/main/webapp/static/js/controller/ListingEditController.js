'use strict';

App.controller('ListingEditController', ['$scope', 'ListingService', '$routeParams', '$window', '$cookies', function($scope, ListingService, $routeParams, $window, $cookies) {
    //set up function scope
    var self = this;
	var listing = {};
	var id;
	
	id = $routeParams.keyId;
	console.log("key id");
	console.log(id);
	console.log(typeof id);
	console.log(typeof listing);
	
    /* function definitions */
    
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
	
	
    self.resultsMapInit = function () {
        initMap("resultsGoogleMaps", {lat:37.391031, lng:-79.191554}, 13);
        addMarker({lat:37.391031, lng:-79.191554});
    }
    
    self.validation = function () {
		console.log("Time for validation");
//		console.log(housingHeadline);
		
		//Ensure that a housing headline is given
		if (self.listing.housingHeadline == "" || self.listing.housingHeadline == undefined) {
			document.getElementById("housingHeadlineValidation").className += " has-error";
			document.getElementById("housingHeadlineError").style.display = 'block';
			document.getElementById("housingHeadlineError").innerHTML = "Please enter a housing headline";
			return false;
		} else {
			document.getElementById("housingHeadlineValidation").className = "form-group";
			document.getElementById("housingHeadlineError").style.display = 'none';
		}
		
		console.log(self.listing.price);
		
		//Ensure that a price is given
		if (self.listing.price == undefined || self.listing.price == "") {
			document.getElementById("priceValidation").className += " has-error";
			document.getElementById("priceError").style.display = 'block';
			document.getElementById("priceError").innerHTML = "Please enter a value greater than 0";
			return false;
		}
		
		console.log("234".match(/^[0-9]*$/));
		
		//Check to see if the price is only numerals. If not, remove all non numeric characters.
		if (self.listing.price.toString().match(/^[0-9]*$/) == null) {
			console.log('Price is not only numberals');
			self.listing.price = self.listing.price.replace(/[^\d.-]/g, '');
			self.listing.price = Math.round(self.listing.price);
		}
		
		//Ensure that price is not less than zero.
		if (self.listing.price <= 0) {
			document.getElementById("priceValidation").className += " has-error";
			document.getElementById("priceError").style.display = 'block';
			document.getElementById("priceError").innerHTML = "Please enter a value greater than 0";
			return false;
		} else {
			document.getElementById("priceValidation").className = "form-group";
			document.getElementById("priceError").style.display = 'none';
		}
		
		//Make sure that the street address is valid.
		if (self.listing.streetAddress == "" || self.listing.streetAddress == undefined) {
			document.getElementById("streetValidation").className += " has-error";
			document.getElementById("streetError").style.display = 'block';
			document.getElementById("streetError").innerHTML = "Please enter a valid street address";
			return false;
		} else {
			document.getElementById("streetValidation").className = "form-group";
			document.getElementById("streetError").style.display = 'none';
			
			
			//Get the latitude and longitude for a given address.
			var geocoder = new google.maps.Geocoder();
			geocoder.geocode( { 'address': self.listing.streetAddress}, function(results, status) {
		      if (status == google.maps.GeocoderStatus.OK) {
		        //In this case it creates a marker, but you can get the lat and lng from the location.LatLng
		        $scope.$apply(function(){
		        	self.listing.streetAddress = results[0].formatted_address;
		        	self.listing.latitude = results[0].geometry.location.lat();
			        self.listing.longitude = results[0].geometry.location.lng();
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
		if (!(self.listing.siteUrl == undefined || self.listing.siteUrl == "")) {
			if (self.listing.siteUrl.match(/^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/) == null) {
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
		if (!(self.listing.email == undefined || self.listing.email == "")) {
			if (self.listing.email.match(/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/) == null) {
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
		
		if (!(self.listing.contactPhone == undefined || self.listing.contactPhone == "")) {
			if (self.listing.contactPhone.toString().match(/^[0-9]+$/) == null) {
				self.listing.contactPhone = self.listing.contactPhone.replace(/[^\d.-]/g, '');
				if (self.listing.contactPhone.length < 10 || self.listing.contactPhone.length > 15) {
					document.getElementById("contactVal").className += " has-error";
					document.getElementById("contactError").style.display = 'block';
					document.getElementById("contactError").innerHTML = "Please enter a valid contact";
					return false;
				} else {
					document.getElementById("contactVal").className = "form-group";
					document.getElementById("contactError").style.display = 'none';
				}
			} else { 
				if (self.listing.contactPhone.length < 10 || self.listing.contactPhone.length > 15) {
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
		
		if ((self.listing.siteUrl == undefined || self.listing.siteUrl == "") && (self.listing.email == undefined || self.listing.email == "") && (self.listing.contactPhone == undefined || self.listing.contactPhone == "")) {
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
    
    $scope.updateListing = function () {
    	console.log('updating listing');
    	console.log('logging listing');
    	console.log(self.listing);
    	console.log(self.listing.housingHeadline);
    	
    	if (self.validation()) {
    		setTimeout(function() {
    			var dataToUpdate = JSON.stringify(self.listing);
                ListingService.editListing(dataToUpdate);
                $window.location.assign( "#/properties/" + id );
    		}, 2000);
    		
    	}
    }
    
    $scope.confirmDelete = function () {
    	var confirmation = confirm("Are you sure you wish to delete this listing?");
    	if (confirmation) {
    		self.deleteListing();
            $window.location.assign( "/" );
    		return true;
    	} else return false;
    }
    
    self.deleteListing = function () {
    	ListingService.deleteListing(id);
    }
    
   
    
    /* Code That Runs */
    self.fetchSingleListing(id);
    
}]);

App.directive('convertToNumber', function() {
	return {
	    require: 'ngModel',
	    link: function(scope, element, attrs, ngModel) {
	      ngModel.$parsers.push(function(val) {
	        //saves integer to model null as null
	        return val == null ? null : parseInt(val, 10);
	      });
	      ngModel.$formatters.push(function(val) {
	        //return string for formatter and null as null
	        return val == null ? null : '' + val ;
	      });
	    }
	  };
	});
