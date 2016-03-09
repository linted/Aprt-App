<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <html>
<!--
    <head>
        <title>Detailed listing page</title>
        <!-- style sheets ->
        <link rel="stylesheet" href="<c:url value='/static/css/apt-finder_results.css' />">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link href="http://twitter.github.io/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />

        <!-- nonlocal js ->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js"></script>
    </head>
-->
    <!-- Start visable html -->

    <body ng-app="myApp" class="ng-cloak">
        <section>
            <!-- Main image section -->
            <section id="topImageSection">
                <img class="sliderImg" src="http://placekitten.com/g/500/310">
                <img class="sliderImg" src="http://placekitten.com/g/400/310">
                <img class="sliderImg" src="http://placekitten.com/g/300/310">
            </section>

            <section class="centerPage">
                <section id="leftColumn">
                    <section id="description">
                        <h3 ng-bind="ctrl.listing.housingHeadline"></h3>
                        <p ng-bind="ctrl.listing.comments"></p>
                    </section>
                    <section id="amenities">
                        <h3>Amenities</h3>
                        <ul id="amenitiesList">
                            <li id="bedrooms">{{ctrl.listing.bedrooms}} bedrooms</li>
                            <li id="bathrooms">{{ctrl.listing.bathrooms}} bathrooms</li>
                            <!-- <span ng-if=""></span> -->
                            <li id="washerDryer">Washer Dryer <span ng-if="!ctrl.listing.washerDryer">none</span><span ng-if="ctrl.listing.washerDryer == 1">hookups</span><span ng-if="ctrl.listing.washerDryer == 2">on premises</span></li>
                            <li id="airConditioned">Air Conditioning: <span ng-if="!ctrl.listing.airConditioned">none</span><span ng-if="airConditioned == 1">window unit</span><span ng-if="ctrl.listing.airConditioned == 2">central air</span></li>
                            <li id="furnished" ng-if="furnished">furnished</li>
                            <li id="security">security features:
                                <span ng-if="ctrl.listing.lockChanges">lock changes, </span>
                                <span ng-if="ctrl.listing.deadbolts">dead bolts, </span>
                                <span ng-if="ctrl.listing.peepholes">peepholes, </span>
                                <span ng-if="ctrl.listing.balconyLock">balcony lock, </span>
                                <span ng-if="ctrl.listing.exteriorLocks">exterior locks, </span>
                                <span ng-if="ctrl.listing.securityAlarm">security alarm, </span>
                                <span ng-if="ctrl.listing.batterySmokeDetectors">bsd, </span>
                                <span ng-if="ctrl.listing.hardWiredSmokeDetectors">hwsd, </span>
                                <span ng-if="ctrl.listing.carbonDioxideDetector">cod, </span>
                                <span ng-if="ctrl.listing.fireExtinguisher">fire exit, </span>
                                <span ng-if="ctrl.listing.exteriorLighting">exit light, </span>
                                <span ng-if="ctrl.listing.safetyInspections">safety inspection, </span>
                                <span ng-if="ctrl.listing.securityAlarm">safety inspection, </span>
                                <span ng-if="ctrl.listing.securityCameras">security cameras, </span>
                                <span ng-if="ctrl.listing.securityGuard">security guard, </span>
                                <span ng-if="ctrl.listing.gatedCommunity">gated, </span>Please contact for more information.</li>
                            <li id="utilities">Utilities Included:
                                <span ng-if="ctrl.listing.water">Water</span>
                                <span ng-if="ctrl.listing.heat">Heat</span>
                                <span ng-if="ctrl.listing.electricity">Electricity</span>
                                <span ng-if="ctrl.listing.gas">Gas</span>
                                <span ng-if="ctrl.listing.cable">Cable</span>
                                <span ng-if="ctrl.listing.phone">Phone</span>
                                <span ng-if="ctrl.listing.trash">Trash</span></li>
                        </ul>
                    </section>
                    <section id="facts">
                        <h3>Facts</h3>
                        <ul>
                            <li id="lease">Lease: {{ctrl.listing.lease}}</li>
                            <li id="deposit">Deposit: <span ng-if="ctrl.listing.deposit">yes</span><span ng-if="!ctrl.listing.deposit">no</span></li>
                            <li id="petsAllowed">Pets Allowed: <span ng-if="ctrl.listing.petsAllowed">yes</span><span ng-if="!ctrl.listing.petsAllowed">no</span></li>
                        </ul>
                    </section>
                </section>
                <section id="rightColumn">
                    <section id="priceAndContact">
                        <span class="price">$ {{ctrl.listing.price}}</span>
                        <span>Per Month</span>
                        <a href="mailto:{{ctrl.listing.email}}" ng-if="ctrl.listing.email" ng-bind="ctrl.listing.email"></a>
                        <section ng-repeat="x in ctrl.listing.phone">
                            <span ng-bind="x"></span>
                        </section>
                    </section>
                     <section id="resultsMap" onload="resultsMapInit()">
                        <section id="resultsGoogleMaps"></section>
                    </section> 
                    <section id="address">
                        <span ng-bind="ctrl.listing.location"></span>
                    </section>
                </section>
            </section>
        </section>
    </body>
    <!-- End viable html -->

    <!-- local js -->
        <!--
    <script src="<c:url value='/static/js/app.js' />"></script>
    <%-- <script src="<c:url value='/static/js/maps.js' />"></script> --%>
    <script src="<c:url value='/static/js/service/ListingService.js' />"></script>
        -->
    </html>