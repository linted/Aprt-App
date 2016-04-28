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

    <link rel="stylesheet" href="<c:url value='/static/css/apt-finder_results.css' />">

    <body ng-app="myApp" class="ng-cloak">
        <section>
            <a href="/#/edit/{{id}}" ng-if="allowEdit">Edit Listing ></a>
            <!-- Main image section -->
            <section id="topImageSection">
                <img class="sliderImg" src="http://placekitten.com/g/300/300">
                <img class="sliderImg" src="http://placekitten.com/g/300/300">
                <img class="sliderImg" src="http://placekitten.com/g/300/300">
            </section>

            <section class="centerPage">
                <section id="leftColumn">
                    <section>
                        <h2 id="aptTitle" ng-bind="ctrl.listing.housingHeadline"></h2>
                        
                        <div class="visible-sm">
		                        <h1>$ {{ctrl.listing.price}}</h1>
		                        <span ng-if="ctrl.listing.forSale == '0'" class="priceSubText">Per Month</span>
		                        <p>
		                            <a href="{{ctrl.listing.siteUrl}}" ng-if="ctrl.listing.siteUrl" ng-bind="ctrl.listing.siteUrl"></a>
		                        </p>
		                        <p>
		                            <a href="mailto:{{ctrl.listing.email}}" ng-if="ctrl.listing.email" ng-bind="ctrl.listing.email"></a>
		                        </p>
		                        <p ng-if="ctrl.listing.contactPhone" ng-bind="ctrl.listing.contactPhone"></p>
		                    </div>
                        
                        <div id="description">
                        	<p ng-bind="ctrl.listing.comments"></p>
                        	<p ng-bind="ctrl.listing.location"></p>
                        </div>
                        
                    </section>
                    <section id="amenities">
                    	<div class="container-fluid">
	                    	<h3>Amenities</h3>
	                    	
	                        <div class="firstList col-md-4">
	                        	<ul class="noBullet">
	                        		<li class="bedroom" id="bedrooms"><p>{{ctrl.listing.bedrooms}} Bedrooms</p></li>
	                            	<li class="bathroom" id="bathrooms"><p>{{ctrl.listing.bathrooms}} Bathrooms</p></li>
	                            	<li class="washer"><p>Washer/Dryer: <span ng-if="!ctrl.listing.washerDryer">None</span>
	                            		<span ng-if="ctrl.listing.washerDryer == 1">Hookups</span><span ng-if="ctrl.listing.washerDryer == 2">On Premises</span></p>
	                            	</li>
	                        	</ul>
	                        </div>
	                        <div class="col-md-4">
	                        	<ul>
	                        		<li id="airConditioned"><p>Air Conditioning: <span ng-if="!ctrl.listing.airConditioned">none</span><span ng-if="airConditioned == 1">window unit</span><span ng-if="ctrl.listing.airConditioned == 2">central air</span></p></li>
		                            <li id="furnished"><p>Furnished: <span ng-if="furnished">Yes</span><span ng-if="!furnished">No</span></p></li>
		                            <li id="security"><p>Security Features:
		                                <span ng-if="ctrl.listing.lockChanges">Lock Changes, </span>
		                                <span ng-if="ctrl.listing.deadbolts">Dead Bolts, </span>
		                                <span ng-if="ctrl.listing.peepholes">Peepholes, </span>
		                                <span ng-if="ctrl.listing.balconyLock">Balcony Lock, </span>
		                                <span ng-if="ctrl.listing.exteriorLocks">Exterior Locks, </span>
		                                <span ng-if="ctrl.listing.securityAlarm">Security Alarm, </span>
		                                <span ng-if="ctrl.listing.batterySmokeDetectors">Battery Smoke Detectors, </span>
		                                <span ng-if="ctrl.listing.hardWiredSmokeDetectors">Hard Wired Smoke Detectors, </span>
		                                <span ng-if="ctrl.listing.carbonDioxideDetector">Carbon Dioxide Detector, </span>
		                                <span ng-if="ctrl.listing.fireExtinguisher">Fire Extinguisher, </span>
		                                <span ng-if="ctrl.listing.exteriorLighting">Exterior Lighting, </span>
		                                <span ng-if="ctrl.listing.safetyInspections">Safety Inspections, </span>
		                                <span ng-if="ctrl.listing.securityAlarm">Security Alarm, </span>
		                                <span ng-if="ctrl.listing.securityCameras">Security Cameras, </span>
		                                <span ng-if="ctrl.listing.securityGuard">Security Guard, </span>
		                                <span ng-if="ctrl.listing.gatedCommunity">Gated Community, </span>Please contact for more information.</p>
		                            </li>
	                        	</ul>
	                        </div>
	                        <div class="col-md-4">
	                        	<ul>
	                        		<li><p id="utilities">Utilities Included:
		                                <span ng-if="ctrl.listing.water">Water,</span>
		                                <span ng-if="ctrl.listing.heat">Heat,</span>
		                                <span ng-if="ctrl.listing.electricity">Electricity,</span>
		                                <span ng-if="ctrl.listing.gas">Gas,</span>
		                                <span ng-if="ctrl.listing.cable">Cable,</span>
		                                <span ng-if="ctrl.listing.phone">Phone,</span>
		                                <span ng-if="ctrl.listing.trash">Trash,</span></p>
		                            </li>
	                        	</ul>
	                        </div>
                    	</div>
                        
                    </section>
                    <section id="facts">
                    	<div class="firstList container-fluid">
                    		<h3>Facts</h3>
                    		<div class="col-md-4">
                    			<ul>
                    				<li id="lease"><p>Lease: {{ctrl.listing.lease}}</p></li>
                    			</ul>
                    		</div>
                    		<div class="col-md-4">
                    			<ul>
                    				<li id="deposit"><p>Deposit: <span ng-if="ctrl.listing.deposit">Yes</span><span ng-if="!ctrl.listing.deposit">No</span></p></li>
                    			</ul>
                    		</div>
                    		<div class="col-md-4">
                    			<ul>
                    				<li id="petsAllowed"><p>Pets Allowed: <span ng-if="ctrl.listing.petsAllowed">Yes</span><span ng-if="!ctrl.listing.petsAllowed">No</span></p></li>
                    			</ul>
                    		</div>
                    	</div>
                        
                    </section>
                </section>
                <section id="rightColumn" class="visible-lg visible-md">
                    <div id="priceAndContact">
                        <h1>\${{ctrl.listing.price}}</h1><span ng-if="ctrl.listing.forSale == '0'" class="priceSubText">Per Month</span>
                        <ul id="contactList" class="noBullet">
                        	<li>
                        		<p><a href="{{ctrl.listing.siteUrl}}" ng-if="ctrl.listing.siteUrl" ng-bind="ctrl.listing.siteUrl"></a></p>
                        		<p ng-if="!ctrl.listing.siteUrl">No Website Listed</p>
                        	</li>
                        	<li class="mail">
                        		<p ng-if="ctrl.listing.email"><a href="mailto:{{ctrl.listing.email}}" ng-bind="ctrl.listing.email"></a></p>
                        		<p ng-if="!ctrl.listing.email">No Email Listed</p>
                        	</li>
                        	<li class="phone">
                        		<p ng-if="ctrl.listing.contactPhone" ng-bind="ctrl.listing.contactPhone"></p>
                        		<p ng-if="!ctrl.listing.contactPhone">No Phone Listed</p>
                        	</li>
                        </ul>
                    </div>
                    <div id="resultsMap">
                        <div id="resultsGoogleMaps"></div>
                    </div>
                    <div id="address">
                        <p ng-bind="ctrl.listing.streetAddress"></p>
                    </div>
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