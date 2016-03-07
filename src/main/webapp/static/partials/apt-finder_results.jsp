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
                
                	<!-- Each needs to be defined in this style -->
                    <h3 ng-bind="ctrl.listing['housingHeadline']"></h3>
                    <p ng-bind="ctrl.comments"></p>
                </section>
                <section id="amenities">
                    <h3>Amenities</h3>
                    <ul id="amenitiesList">
                        <li id="bedrooms">{{ctrl.bedrooms}} bedrooms</li>
                        <li id="bathrooms">{{ctrl.bathrooms}} bathrooms</li>
                        
                        <!-- 0 = none, 1 = hookups, 2 = on premises -->
                        <li id="washerDryer">Washer Dryer {{ctrl.washerDryer}}</li>
                        
                        <!-- Needs to be changed because it is Integer 0 = None, 1 = Window Unit, 2 = Central Air -->
                        <li id="airConditioned" ng-if="airConditioned">Air Conditioned </li>
                        
                        <li id="furnished" ng-if="furnished">furnished</li>
                        <li id="security">security features:
                            <span ng-if="ctrl.lockChanges">lock changes, </span>
                            <span ng-if="ctrl.deadbolts">dead bolts, </span>
                            <span ng-if="ctrl.peepholes">peepholes, </span>
                            <span ng-if="ctrl.balconyLock">balcony lock, </span>
                            <span ng-if="ctrl.exteriorLocks">exterior locks, </span>
                            <span ng-if="ctrl.securityAlarm">security alarm, </span>
                            <span ng-if="ctrl.batterySmokeDetectors">bsd, </span>
                            <span ng-if="ctrl.hardWiredSmokeDetectors">hwsd, </span>
                            <span ng-if="ctrl.carbonDioxideDetector">cod, </span>
                            <span ng-if="ctrl.fireExtinguisher">fire exit, </span>
                            <span ng-if="ctrl.exteriorLighting">exit light, </span>
                            <span ng-if="ctrl.safetyInspections">safety inspection, </span>
                            <!-- Missing Security Alarm -->
                            <span ng-if="ctrl.securityCameras">security cameras, </span>
                            <span ng-if="ctrl.securityGuard">security guard, </span>
                            <span ng-if="ctrl.gatedCommunity">gated, </span>Please contact for more information.</li>
                        <li id="utilities">Utilities Included:
                            <span ng-if="ctrl.water">Water</span>
                            <span ng-if="ctrl.heat">Heat</span>
                            <span ng-if="ctrl.electricity">Electricity</span>
                            <span ng-if="ctrl.gas">Gas</span>
                            <span ng-if="ctrl.cable">Cable</span>
                            <span ng-if="ctrl.phone">Phone</span>
                            <span ng-if="ctrl.trash">Trash</span></li>
                    </ul>
                </section>
                <section id="facts">
                    <h3>Facts</h3>
                    <ul>
                        <li id="lease">Lease: {{ctrl.lease}}</li>
                        <li id="deposit">Deposit: <span ng-if="ctrl.deposit">yes</span><span ng-if="!ctrl.deposit">no</span></li>
                        <li id="petsAllowed">Pets Allowed: <span ng-if="ctrl.petsAllowed">yes</span><span ng-if="!ctrl.petsAllowed">no</span></li>
                    </ul>
                </section>
            </section>
            <section id="rightColumn">
                <section id="priceAndContact">
                    <span class="price">$ {{ctrl.price}}</span>
                    <span>Per Month</span>
                    <a href="mailto:{{ctrl.email}}" ng-if="ctrl.email" ng-bind="ctrl.email"></a>
                    <section ng-repeat="x in ctrl.phone">
                        <span ng-bind="x"></span>
                    </section>
                </section>
                <section id="map">
                    <section id="googleMaps"></section>
                </section>
                <section id="address">
                    <span ng-bind="ctrl.location"></span>
                </section>
            </section>
        </section>
    </section>
</body>
<!-- End viable html -->

<!-- local js -->
<script src="<c:url value='/static/js/app.js' />"></script>
<!-- Uncomment for maps -->
<%-- <script src="<c:url value='/static/js/maps.js' />"></script> --%>
<script src="<c:url value='/static/js/service/ListingService.js' />"></script>


</html>