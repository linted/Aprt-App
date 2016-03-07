<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <html lang="en">

    <!-- HTML that is not displayed -->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Mike Test Page</title>
        <!-- css -->
        <link rel="stylesheet" href="<c:url value='/static/css/apt-finder_list.css' />">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <!-- remote js -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
    </head>

    <!-- HTML that is displayed -->


    <body ng-app="myApp">
        <div class="container-fluid">
            <!-- Header -->
            <section id="header">
                <span class="Apartment-Finder">Apartment Finder</span>
                <a id="landlordLogin" href="#">Landlord Sign-in ></a>
            </section>
            <!-- left column -->
            <section id="leftColumn" ng-init="cc={keyId:'',orgId:'',housingHeadline:'',forSale:'',bedrooms:'',bathrooms:'',washerDryer:'',furnished:'',airConditioned:'',petsAllowed:'',price:'',location:'',active:1}">
                <span class="Filter-Results">Filter Results</span>
                <!-- filter form -->
                <form>
                    <!-- input boxes -->
                    <div id="inputBoxes">
                        <!-- price -->
                        <p class="Price">Price</p>
                        <span class="Price-Text">$ </span>
                        <input class="priceBox" id="lowerPriceBound">
                        <span class="Price-Text" id="toDolla"> to $</span>
                        <input class="priceBox" id="upperPriceBound">
                        <button type="submit" id="goButton" ng-click="applyToSearch()">GO</button>
                    </div>

                    <!-- drop down menus -->
                    <div id="dropDownMenus">
                        <!-- bedrooms -->
                        <label class="DropMenu">
                            Bedrooms
                            <br>
                            <select id="BedroomSelect" ng-model="cc.bedrooms">
                                <option value="">0+</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </label>
                        <!-- bathrooms -->
                        <label class="DropMenu">
                            Bathrooms
                            <br>
                            <select id="BathroomSelect" ng-model="cc.bathrooms">
                                <option value="">0+</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </label>
                    </div>
                    <!-- check boxes -->
                    <div id="checkBoxes">
                        <div id="advFilter" class="col-md-6">
                            <label class="advFilterDrop">
                                Air Conditioning
                                <br>
                                <select ng-model="cc.airConditioned">
                                    <option value="">Any</option>
                                    <option value="0">None</option>
                                    <option value="1">Window Unit</option>
                                    <option value="2">Central Air</option>
                                </select>
                            </label>
                            <!-- <label class="checkBox">
                                <input type="checkbox" ng-model="cc.airConditioned" checked="true"> Air-Conditioned</label> -->
                            <br>
                            <label class="advFilterDrop">
                                Furnished
                                <br>
                                <select ng-model="cc.furnished">
                                    <option value="">Any</option>
                                    <option value="false">No</option>
                                    <option value="true">Yes</option>
                                </select>
                            </label>
                            <!-- <label class="checkBox">
                                <input type="checkbox" ng-model="cc.furnished" checked="true"> Furnished</label> -->
                            <br>
                            <label class="advFilterDrop">
                                Washer/Dryer
                                <br>
                                <select ng-model="cc.washerDryer">
                                    <option value="">Any</option>
                                    <option value="0">None</option>
                                    <option value="1">Hookups</option>
                                    <option value="2">On Premises</option>
                                </select>
                            </label>
                            <br>
                            <label class="advFilterDrop">
                                Pets Allowed
                                <br>
                                <select ng-model="cc.petsAllowed">
                                    <option value="">Any</option>
                                    <option value="false">No</option>
                                    <option value="true">Yes</option>
                                </select>
                            </label>
                        </div>
                        <div class="col-md-6">
                            <label class="advFilterDrop">
                                Housing Type
                                <br>
                                <select ng-model="cc.housingType">
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
                            <!-- <label class="checkBox">
                                <input type="checkbox" ng-model="cc.airConditioned" checked="true"> Air-Conditioned</label> -->
                            <br>
                            <label class="advFilterDrop">
                                Lease Type
                                <br>
                                <select ng-model="cc.lease">
                                    <option value="">Any</option>
                                    <option value="Month-to-Month">Month-to-Month</option>
                                    <option value="Six Months">Six Months</option>
                                    <option value="Nine Months">Nine Months</option>
                                    <option value="One Year">One Year</option>
                                    <option value="Negotiable">Negotiable</option>
                                    <option value="Not Applicable">Not Applicable</option>
                                </select>
                            </label>
                            <!-- <label class="checkBox">
                                <input type="checkbox" ng-model="cc.furnished" checked="true"> Furnished</label> -->
                            <br>
                            <label class="advFilterDrop">
                                Deposit Required
                                <br>
                                <select ng-model="cc.deposit">
                                    <option value="">Any</option>
                                    <option value="false">No</option>
                                    <option value="true">Yes</option>
                                </select>
                            </label>
                            <br>
                            <label class="advFilterDrop">
                                For Sale
                                <br>
                                <select ng-model="cc.forSale">
                                    <option value="">Any</option>
                                    <option value="false">No</option>
                                    <option value="true">Yes</option>
                                </select>
                            </label>
                        </div>

                        <!-- <label class="checkBox">
                            <input type="checkbox" ng-model="cc.petsAllowed" checked="true"> Pets Allowed</label> -->
                        <br>
                    </div>

                </form>
            </section>

        <!-- right column -->
        <section id="rightColumn">
            <!-- Sort by buttons -->
            <section id="rightTopSortBar">
                <!-- Sort by drop down menu -->
                <label class="DropMenu">
                    <br>
                    <select id="SortBySelect">
                        <option value="">Any Order</option>
                        <option value="price+">Lowest Price</option>
                        <option value="price-">Highest Price</option>
                    </select>
                </label>
                <!-- toggle for list vs. map view -->
                <label>
                    <input type="checkbox" ng-model="listCheckbox" ng-click="listOn()" checked>List</label>
                <label>
                    <input type="checkbox" ng-model="mapCheckbox" ng-click="mapOn()">Map</label>
            </section>
            <!-- Listing controller -->
            <section ng-if="listCheckbox">
                <!-- repeat through the entries in the sql -->
                <section class="allListings" ng-repeat="x in ctrl.listings | filter:cc | filter:filterPrice | limitTo:totalDisplayed">
                    <section class="listingStyleLeft">
                        <!-- temp holder until we get images working-->
                        <img class="thumb" src="<c:url value='/static/img/181.jpeg' />">
                        <!--src="{{x.thumb}}">-->
                    </section>

                    <section class="listingStyleRight">
                        <section class="leftSubListingStyle">
                            <a href="#"><span ng-bind="x.housingHeadline"></span></a>
                            <br>
                            <span ng-bind="x.location"></span>
                        </section>
                        <section class="rightSubListingStyle">
                            <span class="listingPrice">$ <span ng-bind="x.price"></span></span>
                            <!--<span ng-if="x.forSale == '1'"></span>-->
                            <span ng-if="x.forSale == '0'" class="priceSubText">Per Month</span>
                        </section>
                    </section>
                    <button ng-click="loadMore()">Load More</button>
                </section>
            </section>

	            <section id="map" ng-if="mapCheckbox">
	                <section id="googleMaps"></section>
	            </section>
        	</section>
        </div>
    </body>
    <!-- end displayed HTML section -->

    <!-- local js -->
    <script src="<c:url value='/static/js/app.js' />"></script>
    <script src="<c:url value='/static/js/service/ListingService.js' />"></script>
<%--     <script src="<c:url value='/static/js/controller/ListingController.js' />"></script> --%>


    <!-- End Document -->

    </html>