'use strict';

App.controller('ListingController', ['$scope', 'ListingService', '$cookies', function ($scope, ListingService, $cookies) {
    /******************* Variable declarations *******************/
    var self = this;
    self.listings = [];
    $scope.totalDisplayed = 20;
    $scope.mode = false;
    self.isMapInit = false;
    self.map = undefined;
    $scope.orgID = $cookies.get('user');
    $scope.cc = {
        keyId: '',
        orgId: $scope.orgID,
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

    function getUser() {
        return parseInt($cookies.get('user'));
    }

    /******************* function declarations *******************/
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
        console.log(self.listings.length);
        console.log("Loading markers");
        for (var i = 0; i < self.listings.length; i++) {
            //        	console.log(self.listings[i].latitude);
            //        	console.log(self.listings[i].longitude);
            if (self.listings[i].latitude && self.listings[i].longitude) {
                addMarker({
                    lat: self.listings[i].latitude,
                    lng: self.listings[i].longitude
                }, self.map);
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


    $scope.classToggle = function () {
        $("#listButton").toggleClass("buttonSelected, buttonUnselected");
        $("#mapButton").toggleClass("buttonSelected, buttonUnselected");
    };

    $scope.listButton = function () {
        console.log("List selected");
        if ($scope.mode) {
            $scope.classToggle();
        }
        return false;
    };

    $scope.mapButton = function () {
        console.log("Map selected");
        if (!$scope.mode) {
            $scope.classToggle();
            //            $scope.loadMap();
        }
        return true;
    };

    /******************* code that runs *******************/

    self.fetchAllListings();
}]);