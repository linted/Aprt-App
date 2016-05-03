<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <html lang="en">

    <!-- HTML that is not displayed -->
    <!--
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Mike Test Page</title>
        <!-- css ->
        <link rel="stylesheet" href="<c:url value='/static/css/apt-finder_list.css' />">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <!-- remote js ->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js"></script>
    </head>
-->
    <!-- HTML that is displayed -->

    <%-- <link rel="stylesheet" href="<c:url value='/static/css/apt-finder_list.css' />"> --%>
    <link rel="stylesheet" href="<c:url value='/static/css/apt-finder_list-responsive.css' />">
    <body ng-app="myApp">
        <div id="mainContent" class="container-fluid clearfix">
            <!-- Header -->
            <section id="header">
                <span class="Apartment-Finder">Apartment Finder</span>
                <a ng-if="!isLandlord" class="landlordLoginLink" href="#/login/">Landlord Sign-in ></a>
                <!-- if you want a dedicated logout page, change the following href -->
                <a ng-if="isLandlord" class="landlordLoginLink" href="#/login/">Landlord Sign-out ></a>
            </section>
            <!-- left column -->
            <section id="leftColumn" ng-init="resultingListings = undefined" class="visible-lg visible-md">
                <span class="Filter-Results">Filter Results</span>
                <!-- filter form -->
                <form>
                    <!-- input boxes -->
                    <div id="priceFiltering">
                        <!-- price -->
                        <p>Price</p>
                        	<span>$ </span>
	                        <input class="priceBox" id="lowerPriceBound">
	                        <span id="toDolla"> to $ </span>
	                        <input class="priceBox" id="upperPriceBound">
                        	<button id="goButton" type="submit" ng-click="applyToSearch()">GO</button>
                        
                    </div>

                    <!-- drop down menus -->
                    <div id="bedBathDrop">
                        <!-- bedrooms -->
                        <label id="bedLbl">
                        	Bedrooms
                        	<br>
                            <select class="bedBathFilt filterStyle" ng-model="looseFilters.bedrooms">
                                <option value="">0+</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </label>
                        <!-- bathrooms -->
                        <label>
                            Bathrooms
                            <br>
                            <select class="bedBathFilt filterStyle" ng-model="looseFilters.bathrooms">
                                <option value="">0+</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </label>
                    </div>
                    <!-- check boxes -->
                    <div id="advancedDrop">
                        <div class="col-md-6">
                        	<label>
                                Furnished
                                <br>
                                <select class="yesNoFilt filterStyle" ng-model="looseFilters.furnished">
                                    <option value="">Any</option>
                                    <option value="false">No</option>
                                    <option value="true">Yes</option>
                                </select>
                            </label>
                            <label>
                                Pets Allowed
                                <br>
                                <select class="yesNoFilt filterStyle" ng-model="looseFilters.petsAllowed">
                                    <option value="">Any</option>
                                    <option value="false">No</option>
                                    <option value="true">Yes</option>
                                </select>
                            </label>
                        </div>
                        <div class="col-md-6">
                        	<label>
                                Deposit Required
                                <br>
                                <select class="yesNoFilt filterStyle" ng-model="looseFilters.deposit">
                                    <option value="">Any</option>
                                    <option value="false">No</option>
                                    <option value="true">Yes</option>
                                </select>
                            </label>
                            <br>
                            <label>
                                For Sale
                                <br>
                                <select class="yesNoFilt filterStyle" ng-model="looseFilters.forSale">
                                    <option value="">Any</option>
                                    <option value="0">No</option>
                                    <option value="1">Yes</option>
                                </select>
                            </label> 
                        </div>
                        <div id="largeDrop" class="col-md-12">
                        	<label>
                                Air Conditioning
                                <br>
                                <select id="acFilt" class="filterStyle" ng-model="looseFilters.airConditioned">
                                    <option value="">Any</option>
                                    <option value="0">None</option>
                                    <option value="1">Window Unit</option>
                                    <option value="2">Central Air</option>
                                </select>
                            </label>
                            <br>
                            <label>
                                Washer/Dryer
                                <br>
                                <select id="washDryFilt" class="filterStyle" ng-model="looseFilters.washerDryer">
                                    <option value="">Any</option>
                                    <option value="0">None</option>
                                    <option value="1">Hookups</option>
                                    <option value="2">On Premises</option>
                                </select>
                            </label>
                            <br>
                            <label>
                                Housing Type
                                <br>
                                <select id="houseFilt" class="filterStyle" ng-model="looseFilters.housingType">
                                    <option value="">Any</option>
                                    <option value="Apartment">Apartment</option>
                                    <option value="Duplex">Duplex</option>
                                    <option value="House">House</option>
                                    <option value="Mobile Home">Mobile Home</option>
                                    <option value="Room">Room</option>
                                    <option value="Studio">Studio</option>
                                    <option value="Townhome">Townhome</option>
                                </select>
                            </label>
                            <br>
                            <label>
                                Lease Type
                                <br>
                                <select id="leaseFilt" class="filterStyle" ng-model="looseFilters.lease">
                                    <option value="">Any</option>
                                    <option value="Month-to-Month">Month-to-Month</option>
                                    <option value="Six Months">Six Months</option>
                                    <option value="Nine Months">Nine Months</option>
                                    <option value="One Year">One Year</option>
                                    <option value="Negotiable">Negotiable</option>
                                    <option value="Not Applicable">Not Applicable</option>
                                </select>
                            </label>
                        </div>
                    </div>

                </form>
            </section>

            <!-- right column -->
            <section id="rightColumn">
                <!-- Sort by buttons -->
                <section id="rightTopSortBar">
                    <h3 class="verticalCenter">{{filtered.length}} Listings</h3>
                    <!-- Sort by drop down menu -->
                    <div id="controls" class="verticalCenter">
	                    <label id="dropMenu" class="dropMenuStyle">
	                        <select id="SortBySelect" data-ng-model="orderBy">
	                            <option value="low-price">Lowest Price</option>
	                            <option value="high-price">Highest Price</option>
	                        </select>
	                    </label>
	                    <!-- toggle for list vs. map view -->

	                    <button id="listButton" class="toggledBtn" ng-click="mode = listButton()" type="button">List</button>
	                    <button id="mapButton" class="untoggledBtn" ng-click="mode = mapButton()" type="button">Map</button>
                    </div>

                </section>
                <!-- Listing controller -->
                <section>
                	<button class="btn btn-default" ng-if="isLandlord" ng-click="create()">Create New Listing</button>
                    <!-- repeat through the entries in listings, filtering as we go -->
                    <section ng-if="!mode" class="allListings" ng-repeat="x in (filtered = (ctrl.listings | filter: looseFilters | filter:filterPrice | filter: strictFilters | orderBy: orderByPrice)) | limitTo:totalDisplayed" ng-model="x">
                        <section class="listingStyleLeft">
                            <!-- temp holder until we get images working-->
                            <img class="thumb" src="<c:url value='/static/img/181.jpeg' />">
                            <!--src="{{x.thumb}}">-->
                        </section>

                        <section class="listingStyleRight">
                            <section class="leftSubListingStyle">
                                <a href="#/properties/{{x.keyId}}"><span class="listingLink" ng-bind="x.housingHeadline"></span></a>
                                <div id="location"><span ng-bind="x.location"></span></div>
                            </section>
                            <section class="rightSubListingStyle">
                                <span class="listingPrice">$<span class="listingPrice" ng-bind="x.price"></span></span>
                                <!--<span ng-if="x.forSale == '1'"></span>-->
                                <span ng-if="x.forSale == '0'" class="priceSubText">Per Month</span>
                            </section>
                        </section>

                    </section>
                    <button ng-if="totalDisplayed < filtered.length && !mode" ng-click="loadMore()">Load More</button>
                </section>
                <section ng-if="mode">
                    <section id="listingGoogleMaps" ng-init="loadMap()"></section>
                </section>

            </section>
        </div>
    </body>
    <!-- end displayed HTML section -->
    <!-- local js -->
    <script src="<c:url value='/static/js/angular-google-maps-native.js' />"></script>
    <%-- <script src="<c:url value='/static/js/maps.js' />"></script> --%>
    <%-- <script src="<c:url value='/static/js/service/ListingService.js' />"></script> --%>
    <%--     <script src="<c:url value='/static/js/controller/ListingController.js' />"></script> --%>

    <!-- End Document -->

    </html>