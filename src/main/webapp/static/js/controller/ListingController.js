'use strict';

App.controller('ListingController', ['$scope', 'ListingService', '$cookies', '$window', function ($scope, ListingService, $cookies, $window) {
    /******************* Variable declarations *******************/
    var self = this;
    self.listings = [];
    self.isMapInit = false;
    self.map = undefined;

    $scope.totalDisplayed = 20;
    $scope.mode = false;
    $scope.resultingList = 0;
    $scope.orgID = $cookies.get('user');
    $scope.isLandlord = $scope.orgID != undefined;
    console.log($scope.isLandlord);
    $scope.orderBy = "low-price";

    $scope.looseFilters = {
        keyId: '',
        housingHeadline: '',
        forSale: '',
        bedrooms: '',
        bathrooms: '',
        washerDryer: '',
        furnished: '',
        airConditioned: '',
        petsAllowed: '',
        price: '',
        location: '',
        active: 1
    }

    /******************* function declarations *******************/
    $scope.strictFilters = function (listing) {
        if ($scope.orgID) {
            var temp = listing.orgId == $scope.orgID;
            return temp
        }
        return true;
    };

    self.fetchAllListings = function () {
        console.log($cookies.get('user'));
        ListingService.fetchAllListings()
            .then(
                function (d) {
                    //                    console.log(d);
                    self.listings = d;
                },
                function (errResponse) {
                    console.error('Error while fetching listings');
                }
            );

    };

    self.placeMarkers = function () {
        //console.log($scope.results.length);
        console.log("Loading markers");
        for (var i = 0; i < self.listings.length; i++) {
            //        	console.log(self.listings[i].latitude);
            //        	console.log(self.listings[i].longitude);
            if (self.listings[i].latitude && self.listings[i].longitude) {
                if (self.listings[i].marker) {
                    self.listings[i].marker.setMap(self.map);
                } else {
                    self.listings[i].marker = addMarker({
                        lat: self.listings[i].latitude,
                        lng: self.listings[i].longitude
                    }, self.map, self.listings[i].keyId, self.listings[i].housingHeadline);
                }
                self.listings[i].marker.addListener('click', function () {
//                    self.map.setZoom(8);
//                    self.map.setCenter(self.listings[i].marker.getPosition());
                    $window.location.assign("#/properties/" + this.keyId);
                });

            }

        }
    }

    self.listMapInit = function () {
        //set up the map centered at liberty university
        console.log("Initalizing map");
        self.map = initMap("listingGoogleMaps", {
            lat: 37.353464,
            lng: -79.177372
        }, 13);
        //add markers to map
        self.placeMarkers(self.map);
    };

    $scope.loadMap = function () {
        console.log(self.listings[0]);
        self.listMapInit();
        console.log("Init done");
        google.maps.event.trigger(self.map, "resize");
        $scope.mode = true;
    }

    $scope.loadMore = function () {
        console.log("loading more");
        $scope.totalDisplayed += 20;
    };

    // do we need this function anymore? ###################################################################################################################
    $scope.applyToSearch = function () {
        var minPrice = document.getElementById('lowerPriceBound').value;
        var maxPrice = document.getElementById('upperPriceBound').value;

        console.log("Min Price" + minPrice);
        console.log("Max Price" + maxPrice);
    };

    $scope.filterPrice = function (item) {
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
    };

    // needs to be implemented ###############################################################################################################################
    $scope.customOrder = function () {
        var order = document.getElementById('SortBySelect').value;
        console.log(order);
    };


    $scope.classToggle = function (btn1,btn2) {
    	if ($(btn1).hasClass("untoggledBtn")) {
    		$(btn1).removeClass("untoggledBtn");
            $(btn1).addClass("toggledBtn");
            $(btn2).removeClass("toggledBtn");
            $(btn2).addClass("untoggledBtn");
    	}

    };

    $scope.listButton = function () {
    	console.log("List selected");
        if ($scope.mode) {
        	var btn1 = "#listButton";
        	var btn2 = "#mapButton";
            $scope.classToggle(btn1,btn2);
        }
        return false;
    };

    $scope.mapButton = function () {
    	console.log("Map selected");
        console.log($scope.mode);
        if (!$scope.mode) {
        	var btn1 = "#mapButton";
        	var btn2 = "#listButton";
            $scope.classToggle(btn1,btn2);
        }
        return true;
    };
    
    $scope.orderByPrice = function (x) {
		if ($scope.orderBy == 'low-price') {
			return x.price;
		}
		if ($scope.orderBy == 'high-price') {
			return -x.price;
		}
		else return x.price;
	};

    $scope.orderByPrice = function (x) {
        if ($scope.orderBy == 'low-price') {
            return x.price;
        }
        if ($scope.orderBy == 'high-price') {
            return -x.price;
        } else return x.price;
    };
    
    $scope.create = function() {
    	$window.location.assign( "/#/new/" );
    }

    /******************* code that runs *******************/

    self.fetchAllListings();
}]);