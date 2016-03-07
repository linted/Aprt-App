'use strict';

App.controller('ListingController', ['$scope', 'ListingService', function ($scope, ListingService) {
    /******************* Variable declarations *******************/
    var self = this;
    //self.listing = {};   <- do we need this anymore?
    self.listings = [];
    $scope.totalDisplayed = 20;

    /******************* function declarations *******************/
    self.fetchAllListings = function () {
        ListingService.fetchAllListings()
            .then(
                function (d) {
                    console.log(d);
                    self.listings = d;
                },
                function (errResponse) {
                    console.error('Error while fetching listings');
                }
            );
    };

    self.placeMarkers = function () {
        for (var i = 0; i < self.listings.length; i++) {
            addMarker({
                lat: self.listings[i].lat,
                lng: self.listings[i].lng
            });
        }
    }

    $scope.loadMore = function () {
        console.log("loading more");
        $scope.totalDisplayed += 20;
    };

    $scope.applyToSearch = function () {
        var minPrice = document.getElementById('lowerPriceBound').value;
        var maxPrice = document.getElementById('upperPriceBound').value;

        console.log("Min Price" + minPrice);
        console.log("Max Price" + maxPrice);
    }

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
    }

    $scope.customOrder = function () {
        var order = document.getElementById('SortBySelect').value;
        console.log(order);
    }

    $scope.MapOn = function () {
        if ($scope.mapCheckbox) {
            $scope.listCheckbox = false;
        } else {
            $scope.listCheckbox = true;
        }
    }

    $scope.ListOn = function () {
        if ($scope.listCheckbox) {
            $scope.mapCheckbox = false;
        } else {
            $scope.mapCheckbox = true;
        }
    }

    /******************* code that runs *******************/

    self.fetchAllListings();

    //set up the map centered at liberty university
    initMap({
        lat: 37.353464,
        lng: -79.177372
    }, 7);
    //add markers to map
    //addMarker(self.detailedListing.latlng);
    self.placeMarkers();


}]);
>>>>>>> mike
