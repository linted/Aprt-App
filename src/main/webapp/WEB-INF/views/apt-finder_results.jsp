<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <title>Detailed listing page</title>
    <!-- style sheets -->
        <link rel="stylesheet" href="<c:url value='/static/css/apt-finder_results.css' />">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link href="http://twitter.github.io/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />

    <!-- nonlocal js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
</head>

<!-- Start visable html -->

<body ng-app="myApp" class="ng-cloak">
    <section ng-controller="ListingDetailedController as ctrl">
        <!-- Main image section -->
        <section id="topImageSection">
            <img class="sliderImg" src="http://placekitten.com/g/500/310">
            <img class="sliderImg" src="http://placekitten.com/g/400/310">
            <img class="sliderImg" src="http://placekitten.com/g/300/310">
        </section>

        <section class="centerPage">
            <section id="leftColumn">
                <section id="description">
                    <h3 ng-bind="ctrl.detailedListing.housingHeadline"></h3>
                    <p ng-bind="ctrl.detailedListing.comments"></p>
                </section>
                <section id="amenities">
                    <h3>Amenities</h3>
                    <ul id="amenitiesList">
                        <li id="bedrooms">{{ctrl.detailedListing.bedrooms}} bedrooms</li>
                        <li id="bathrooms">{{ctrl.detailedListing.bathrooms}} bathrooms</li>
                        <li id="washerDryer">Washer Dryer {{ctrl.detailedListing.washerDryer}}</li>
                        <li id="airConditioned" ng-if="airConditioned">Air Conditioned </li>
                        <li id="furnished" ng-if="furnished">furnished</li>
                        <li id="security">security features:
                            <span ng-if="ctrl.detailedListing.lockChanges">lock changes, </span>
                            <span ng-if="ctrl.detailedListing.deadbolts">dead bolts, </span>
                            <span ng-if="ctrl.detailedListing.peepholes">peepholes, </span>
                            <span ng-if="ctrl.detailedListing.balconyLock">balcony lock, </span>
                            <span ng-if="ctrl.detailedListing.exteriorLocks">exterior locks, </span>
                            <span ng-if="ctrl.detailedListing.securityAlarm">security alarm, </span>
                            <span ng-if="ctrl.detailedListing.bsd">bsd, </span>
                            <span ng-if="ctrl.detailedListing.hwsd">hwsd, </span>
                            <span ng-if="ctrl.detailedListing.cod">cod, </span>
                            <span ng-if="ctrl.detailedListing.fireExt">fire exit, </span>
                            <span ng-if="ctrl.detailedListing.extLight">exit light, </span>
                            <span ng-if="ctrl.detailedListing.safetyInspec">safety inspection, </span>
                            <span ng-if="ctrl.detailedListing.secCameras">security cameras, </span>
                            <span ng-if="ctrl.detailedListing.secGuard">security guard, </span>
                            <span ng-if="ctrl.detailedListing.gated">gated, </span>Please contact for more information.</li>
                        <li id="utilities">Utilities Included:
                            <span ng-if="ctrl.detailedListing.water">Water</span>
                            <span ng-if="ctrl.detailedListing.heat">Heat</span>
                            <span ng-if="ctrl.detailedListing.electricity">Electricity</span>
                            <span ng-if="ctrl.detailedListing.gas">Gas</span>
                            <span ng-if="ctrl.detailedListing.cable">Cable</span>
                            <span ng-if="ctrl.detailedListing.phone">Phone</span>
                            <span ng-if="ctrl.detailedListing.trash">Trash</span></li>
                    </ul>
                </section>
                <section id="facts">
                    <h3>Facts</h3>
                    <ul>
                        <li id="lease">Lease: {{ctrl.detailedListing.lease}}</li>
                        <li id="deposit">Deposit: <span ng-if="ctrl.detailedListing.deposit">yes</span><span ng-if="!ctrl.detailedListing.deposit">no</span></li>
                        <li id="petsAllowed">Pets Allowed: <span ng-if="ctrl.detailedListing.petsAllowed">yes</span><span ng-if="!ctrl.detailedListing.petsAllowed">no</span></li>
                    </ul>
                </section>
            </section>
            <section id="rightColumn">
                <section id="priceAndContact">
                    <span class="price">$ {{ctrl.detailedListing.price}}</span>
                    <span>Per Month</span>
                    <a href="mailto:{{ctrl.detailedListing.email}}" ng-if="ctrl.detailedListing.email" ng-bind="ctrl.detailedListing.email"></a>
                    <section ng-repeat="x in ctrl.detailedListing.phone">
                        <span ng-bind="x"></span>
                    </section>
                </section>
                <section id="map">
                    <section id="googleMaps" ng-load=""></section>
                </section>
                <section id="address">
                    <span ng-bind="ctrl.detailedListing.location"></span>
                </section>
            </section>
        </section>
    </section>
</body>
<!-- End viable html -->

<!-- local js -->
<script src="<c:url value='/static/js/app.js' />"></script>
<script src="<c:url value='/static/js/map.js' />"></script>
<script src="<c:url value='/static/js/service/ListingService.js' />"></script>
<script src="<c:url value='/static/js/controller/ListingController.js' />"></script>


</html>