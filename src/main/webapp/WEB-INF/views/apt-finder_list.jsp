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
        <!-- Header -->
        <section id="header">
            <h1>Apartment Finder</h1>
            <a id="landlordLogin" href="#">Landlord Sign-in ></a>
        </section>
        <!-- left column -->
        <section id="leftColumn">
            <h3>Filter Results</h3>
            <!-- filter form -->
            <form>
                <!-- input boxes -->
                <div id="inputBoxes">
                    <!-- price -->
                    <p>price</p>
                    <label class="priceLable">$
                        <input class="inputBox" id="lowerPriceBound">
                    </label>
                    <p> to </p>
                    <label class="priceLable">$
                        <input class="inputBox" id="upperPriceBound">
                    </label>
                </div>

                <!-- drop down menus -->
                <div id="dropDownMenus">
                    <!-- bedrooms -->
                    <label class="DropMenu">
                        Bedrooms
                        <br>
                        <select id="BedroomSelect">
                            <option>0+</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                        </select>
                    </label>
                    <!-- bathrooms -->
                    <label class="DropMenu">
                        Bathrooms
                        <br>
                        <select id="BathroomSelect">
                            <option>0+</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                        </select>
                    </label>
                </div>
                <!-- check boxes -->
                <div id="checkBoxes">
                    <label class="checkBox">
                        <input type="checkbox"> Air-Conditioned</label>
                    <br>
                    <label class="checkBox">
                        <input type="checkbox"> Furnished</label>
                    <br>
                    <label class="checkBox">
                        <input type="checkbox"> Washer/Dryer</label>
                    <br>
                    <label class="checkBox">
                        <input type="checkbox"> Pets Allowed</label>
                    <br>
                </div>
                <button id="goButton" onclick="filterResults();">GO</button>
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
                        <option>Lowest Price</option>
                        <option>Highest Price</option>
                        <option>IDK what</option>
                        <option>Else</option>
                    </select>
                </label>
                <!-- toggle for list vs. map view -->
                <label>
                    <input type="checkbox">List</label>
                <label>
                    <input type="checkbox">Map</label>
            </section>
            <!-- Listing controller -->
            <section ng-controller="ListingController as ctrl">
                <!-- repeat through the entries in the sql -->
                <section class="allListings" ng-repeat="x in ctrl.listings">
                    <section class="listingStyleLeft">
                        <!-- temp holder until we get images working VVV -->
                        <img class="thumb" src="http://placekitten.com/g/181/181">
                        <!--src="{{x.thumb}}">-->
                    </section>

                    <section class="listingStyleRight">
                        <section class="leftSubListingStyle">
                            <a href="#">{{x.housingHeadline}}</a>
                            <br>
                            <span ng-bind="x.location"></span>
                        </section>
                        <section class="rightSubListingStyle">
                            <span class="price">${{x.price}}</span>
                            <span ng-bind="x.lease"></span>
                        </section>
                    </section>
                </section>
            </section>
        </section>
    </body>
    <!-- end displayed HTML section -->

    <!-- local js -->
    <script src="<c:url value='/static/js/app.js' />"></script>
    <script src="<c:url value='/static/js/service/ListingService.js' />"></script>
    <script src="<c:url value='/static/js/controller/ListingController.js' />"></script>


    <!-- End Document -->

    </html>