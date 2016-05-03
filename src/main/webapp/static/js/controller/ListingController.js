'use strict';

App.controller('ListingController', ['$scope', 'ListingService', '$cookies', '$window', function ($scope, ListingService, $cookies, $window) {
    /******************* Variable declarations *******************/
    var self = this;
    self.listings = [];                                 //declare that there will be a listsings array
    self.isMapInit = false;                             //bool for determining if map is init
    self.map = undefined;                               //the map object 

    $scope.totalDisplayed = 20;                         //total number of listings displayed on a page
    $scope.ListingStartingIndex = 0;                    //index used to show the starting point for each page
    $scope.mode = false;                                //
    $scope.resultingList = 0;                           //
    $scope.orgID = $cookies.get('user');                //the landlord orgID
    $scope.isLandlord = ($scope.orgID != undefined);    //bool to determine if user is a landlord
    $scope.orderBy = "low-price";                       //default order by setting

    $scope.looseFilters = {                             //the non strict filters for listings (any part match == pass)
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
    $scope.strictFilters = function (listing) {         //strict filters should be added to this function (must be ===)
        if ($scope.orgID) {
            var temp = listing.orgId == $scope.orgID;
            return temp
        }
        return true;
    };

    self.fetchAllListings = function () {               //used to fetch the listings from the database
        ListingService.fetchAllListings()
            .then(
                function (d) {
                    //We got a valid response from the DB, so we will save the results
                    self.listings = d;
                },
                function (errResponse) {
                    //bad response, output that there was an error. for security reasons, we will not output the error
                    console.error('Error while fetching listings');
                }
            );

    };

    self.placeMarkers = function () {                   //places markers on the map
        for (var i = 0; i < self.listings.length; i++) {
            // if there is map data on the entry (this can probabaly be removed once old data is removed from the DB)
            if (self.listings[i].latitude && self.listings[i].longitude) {
                //if we already have a marker, don't make a new one
                if (self.listings[i].marker) {
                    self.listings[i].marker.setMap(self.map);
                } else {
                    //make a new marker with the lat and lng
                    self.listings[i].marker = addMarker({
                        lat: self.listings[i].latitude,
                        lng: self.listings[i].longitude
                    }, self.map, self.listings[i].keyId, self.listings[i].housingHeadline);
                }
                
                //set a listener on the marker to redirect on click
                self.listings[i].marker.addListener('click', function () {
                    $window.location.assign("#/properties/" + this.keyId);
                });

            }

        }
    }

    self.listMapInit = function () {                    //create the map
        //set up the map centered at liberty university
        self.map = initMap("listingGoogleMaps", {
            lat: 37.353464,
            lng: -79.177372
        }, 13);
        
        //add markers to map
        self.placeMarkers(self.map);
    };

    $scope.loadMap = function () {                      //call all the required function to make the map load
        //init the map
        self.listMapInit();
        //make sure that the map is sized correctly (this may be able to be removed)
        google.maps.event.trigger(self.map, "resize");
        
        //make sure we are in the correct mode
        $scope.mode = true;
    }

    $scope.loadMore = function () {                     //increase the starting index to "load more" listings
        //increase the starting index
        $scope.ListingStartingIndex += 20;
    };
    
    $scope.loadLess = function () {                     //decrease the starting index to "load Less" listings
        //decrease the starting index
        $scope.ListingStartingIndex -= 20;
    };

    // do we need this function anymore? ###################################################################################################################
    $scope.applyToSearch = function () {
        var minPrice = document.getElementById('lowerPriceBound').value;
        var maxPrice = document.getElementById('upperPriceBound').value;

        console.log("Min Price" + minPrice);
        console.log("Max Price" + maxPrice);
    };

    $scope.filterPrice = function (item) {              //function to filter the price of listings to user's asking
        //get the price ranges
        var minPrice = document.getElementById('lowerPriceBound').value;
        var maxPrice = document.getElementById('upperPriceBound').value;
        if (minPrice == '' && maxPrice == '') {
            //prices were null, so everything goes
            return item.price;
        } else if (minPrice == '' && maxPrice > 0) {
            //filter by max price if no min price
            return item.price < maxPrice;
        } else if (minPrice > 0 && maxPrice == '') {
            //filter by min price if no max price
            return item.price > minPrice;
        } else {
            //filter by min and max price
            return ((item.price > minPrice && item.price < maxPrice));
        }
    };

    $scope.classToggle = function () {                  //function that toggles the classes of buttons to show selection
        $("#listButton").toggleClass("buttonSelected buttonUnselected");
        $("#mapButton").toggleClass("buttonSelected buttonUnselected");
    };

    $scope.listButton = function () {                   //function to switch the layout to list mode
        //make sure the user didn't click the button while already in this mode.
        if ($scope.mode) {
            //swap selected mode if we are changing modes
            $scope.classToggle();
        }
        //return the bool val for list mode
        return false;
    };

    $scope.mapButton = function () {                    //function to switch the layout to map mode
        //make sure the user didn't click the button while already in this mode.
        if (!$scope.mode) {
            //swap selected mode if we are changing modes
            $scope.classToggle();
        }
        //return the bool val for map mode
        return true;
    };
    
    $scope.orderByPrice = function (x) {                //function used to order listings by price
		if ($scope.orderBy == 'low-price') {
            //if low price return the actual price
			return x.price;
		} else if ($scope.orderBy == 'high-price') {
            //if high price, return the negation 
			return -x.price;
		}
		else return x.price; //if invalid, order by low-price.
	};
    
    /******************* code that runs *******************/

    //initialize the page by fetching the listings.
    self.fetchAllListings();
}]);