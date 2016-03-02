<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <html lang="en">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Create New Listing</title>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <!-- remote js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
</head>
<body ng-app="myApp" ng-controller="ListingCreationController">
	<h1>Create New Listing</h1>
	<form action="">
		<div><label for="keyId">Key ID</label><input ng-model="keyId" type="text"></div>
		<div><label for="housingId">Housing ID</label><input ng-model="housingId" type="text"></div>
		<div><label for="orgId">ORG ID</label><input ng-model="orgId" type="text"></div>
		<div><label for="housingHeadline">Housing Headline</label><input ng-model="housingHeadline" type="text"></div>
		<div><label for="housingType">housingType</label><input ng-model="housingType" type="text"></div>
		<div><label for="forSale">forSale</label><input ng-model="forSale" type="text"></div>
		<div><label for="water">water</label><input ng-model="water" type="text"></div>
		<div><label for="heat">heat</label><input ng-model="heat" type="text"></div>
		<div><label for="electricity">electricity</label><input ng-model="electricity" type="text"></div>
		<div><label for="gas">gas</label><input ng-model="gas" type="text"></div>
		<div><label for="cable">cable</label><input ng-model="cable" type="text"></div>
		<div><label for="phone">phone</label><input ng-model="phone" type="text"></div>
		<div><label for="trash">trash</label><input ng-model="trash" type="text"></div>
		<div><label for="bedrooms">bedrooms</label><input ng-model="bedrooms" type="text"></div>
		<div><label for="bathrooms">bathrooms</label><input ng-model="bathrooms" type="text"></div>
		<div><label for="sharedBathroom">sharedBathroom</label><input ng-model="sharedBathroom" type="text"></div>
		<div><label for="washerDryer">washerDryer</label><input ng-model="washerDryer" type="text"></div>
		<div><label for="furnished"></label>furnished<input ng-model="furnished" type="text"></div>
		<div><label for="airConditioned">airConditioned</label><input ng-model="airConditioned" type="text"></div>
		<div><label for="petsAllowed"></label>petsAllowed<input ng-model="petsAllowed" type="text"></div>
		<div><label for="lease">lease</label><input ng-model="lease" type="text"></div>
		<div><label for="preferences">preferences</label><input ng-model="preferences" type="text"></div>
		<div><label for="price">price</label><input ng-model="price" type="text"></div>
		<div><label for="deposit">deposit</label><input ng-model="deposit" type="text"></div>
		<div><label for="location">location</label><input ng-model="location" type="text"></div>
		<div><label for="comments">comments</label><input ng-model="comments" type="text"></div>
		<div><label for="floorPlan">floorPlan</label><input ng-model="floorPlan" type="text"></div>
		<div><label for="housingPhoto">housingPhoto</label><input ng-model="housingPhoto" type="text"></div>
		<div><label for="createDate">createDate</label><input ng-model="createDate" type="text"></div>
		<div><label for="postingDate">postingDate</label><input ng-model="postingDate" type="text"></div>
		<div><label for="editDate">editDate</label><input ng-model="editDate" type="text"></div>
		<div><label for="active">active</label><input ng-model="active" type="text"></div>
		<div><label for="siteUrl">siteUrl</label><input ng-model="siteUrl" type="text"></div>
		<div><label for="lockChanges">lockChanges</label><input ng-model="lockChanges" type="text"></div>
		<div><label for="deadbolts">deadbolts</label><input ng-model="deadbolts" type="text"></div>
		<div><label for="peepholes">peepholes</label><input ng-model="peepholes" type="text"></div>
		<div><label for="balconyLock">balconyLock</label><input ng-model="balconyLock" type="text"></div>
		<div><label for="exteriorLocks">exteriorLocks</label><input ng-model="exteriorLocks" type="text"></div>
		<div><label for="batterySmokeDetectors">batterySmokeDetectors</label><input ng-model="batterySmokeDetectors" type="text"></div>
		<div><label for="hardWiredSmokeDetectors">hardWiredSmokeDetectors</label><input ng-model="hardWiredSmokeDetectors" type="text"></div>
		<div><label for="coDetector">coDetector</label><input ng-model="coDetector" type="text"></div>
		<div><label for="fireExtinguisher">fireExtinguisher</label><input ng-model="fireExtinguisher" type="text"></div>
		<div><label for="exteriorLighting">exteriorLighting</label><input ng-model="exteriorLighting" type="text"></div>
		<div><label for="safetyInspections">safetyInspections</label><input ng-model="safetyInspections" type="text"></div>
		<div><label for="securityAlarm">securityAlarm</label><input ng-model="securityAlarm" type="text"></div>
		<div><label for="securityCameras">securityCameras</label><input ng-model="securityCameras" type="text"></div>
		<div><label for="securityGuard">securityGuard</label><input ng-model="securityGuard" type="text"></div>
		<div><label for="gatedCommunity">gatedCommunity</label><input ng-model="gatedCommunity" type="text"></div>
		<button ng-click="createNewListing()">create new listing</button>
	</form>
</body>

<script src="<c:url value='/static/js/app.js' />"></script>
<script src="<c:url value='/static/js/service/ListingService.js' />"></script>
<script src="<c:url value='/static/js/controller/ListingController.js' />"></script>
</html>