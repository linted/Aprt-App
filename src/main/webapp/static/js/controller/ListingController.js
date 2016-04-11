'use strict';

App.controller('ListingController', ['$scope', 'ListingService', function ($scope, ListingService) {
    /******************* Variable declarations *******************/
    var self = this;
    self.listings = [];
    $scope.totalDisplayed = 20;
    $scope.mode = true;
    self.isMapInit = false;

    /******************* function declarations *******************/
    self.fetchAllListings = function () {
        ListingService.fetchAllListings()
            .then(
                function (d) {
                    //console.log(d);
                    self.listings = d;
                },
                function (errResponse) {
                    console.error('Error while fetching listings');
                }
            );
    };

    self.placeMarkers = function (map) {
        for (var i = 0; i < self.listings.length && i < $scope.totalDisplayed; i++) {
            if (self.listings[i].lat && self.listings[i].lng) {
                addMarker({
                    lat: self.listings[i].lat,
                    lng: self.listings[i].lng
                }, map);
            }

        }
    }

    self.listMapInit = function () {
        //set up the map centered at liberty university

        var map = initMap("listingGoogleMaps", {
            lat: 37.353464,
            lng: -79.177372
        }, 13);
        //add markers to map
        self.placeMarkers(map);

        return map;
    };

    $scope.loadMore = function () {
        console.log("loading more");
        $scope.totalDisplayed += 20;
    };

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

    $scope.customOrder = function () {
        var order = document.getElementById('SortBySelect').value;
        console.log(order);
    };


    $scope.classToggle = function () {
        $("#listButton").toggleClass("buttonSelected, buttonUnselected");
        $("#mapButton").toggleClass("buttonSelected, buttonUnselected");
    };

    $scope.listButton = function () {
        if (!$scope.mode) {
            $scope.classToggle();
            $scope.mode = !$scope.mode;
        }

    };

    $scope.mapButton = function () {
        if ($scope.mode) {
            $scope.classToggle();
            $scope.mode = !$scope.mode;
            if (!self.isMapInit) {
                self.map = self.listMapInit();
                self.isMapInit = true;
            }
            google.maps.event.trigger(self.map, "resize");
        }
        google.maps.event.trigger(self.map, "resize");
        $scope.$watch($scope.mode, function () {
            if (!$scope.mode) {
                self.map = self.listMapInit();
                google.maps.event.trigger(self.map, "resize");
            }
            console.log("in $watch")
        })
        console.log("i don't know what i am doing apparently")
    };


    /******************* code that runs *******************/

    self.fetchAllListings();


    google.maps.event.addDomListener(document.getElementById("listingGoogleMaps"), 'load', self.listMapInit);
}]);