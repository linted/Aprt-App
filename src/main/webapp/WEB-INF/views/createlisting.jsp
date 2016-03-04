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
		<div class="container-fluid">
			<div class="row">
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="col-md-4">
						<div class="panel panel-default">
			    			<div class="panel-heading" role="tab" id="headingOne">
			      				<h4 class="panel-title">
			        				<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
			          					Primary Property Information
			        				</a>
			      				</h4>
			    			</div>
				    		<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
				      			<div class="panel-body">
				      				<div class="col-md-6">
										<fieldset class="form-group">
											<label for="housingId">Housing ID</label>
										    <input type="text" class="form-control" placeholder="#####" ng-model="housingId">
										</fieldset>
										<fieldset class="form-group">
											<label for="orgId">Org ID</label>
										    <input type="text" class="form-control" placeholder="#####" ng-model="orgId">
										</fieldset>
										<fieldset class="form-group">
											<label for="housingHeadline">Housing Headline</label>
										    <input type="text" class="form-control" placeholder="2 BR Apartment 10 Min from Liberty!" ng-model="housingHeadline">
										</fieldset>
										<fieldset class="form-group">
											<label for="price">Price</label>
										    <input type="text" class="form-control" placeholder="600" ng-model="price">
										</fieldset>
				      				</div>
				      				<div class="col-md-6">
				      					<fieldset class="form-group">
											<label for="lease">Lease Type</label>
										    <input type="text" class="form-control" placeholder="Per Month" ng-model="lease">
										</fieldset>
										<fieldset class="form-group">
											<label for="location">Location</label>
										    <input type="text" class="form-control" placeholder="1971 University Blvd. Lynchburg, VA" ng-model="location">
										</fieldset>
										<fieldset class="form-group">
											<label for="housingPhoto">Property Photos</label>
										    <input type="text" class="form-control" placeholder="Browse for pics" ng-model="housingPhoto">
										</fieldset>
				      				</div>
				      			</div>
				    		</div>
			  			</div>	
					</div>
					<div class="col-md-4">
						<div class="panel panel-default">
			    			<div class="panel-heading" role="tab" id="headingTwo">
			      				<h4 class="panel-title">
			        				<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
			          					Property Details
			        				</a>
			      				</h4>
			    			</div>
				    		<div id="collapseTwo" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingTwo">
				      			<div class="panel-body">
				      				<div class="col-md-6">
				      					<fieldset class="form-group">
											<label for="housingType">Housing Type</label>
										    <input type="text" class="form-control" placeholder="Apartment" ng-model="housingType">
										</fieldset>
										<div class="checkbox">
										  <label for="forSale">
										    <input ng-model="forSale" type="checkbox" value="true">
										    <b>For Sale</b>
										  </label>
										</div>
										<fieldset class="form-group">
											<label for="bedrooms">Bedrooms</label>
										    <input type="text" class="form-control" placeholder="2" ng-model="bedrooms">
										</fieldset>
										<fieldset class="form-group">
											<label for="bathrooms">Bathrooms</label>
										    <input type="text" class="form-control" placeholder="1" ng-model="bathrooms">
										</fieldset>
				      				</div>
				      				<div class="col-md-6">
				      					<fieldset class="form-group">
											<label for="preferences">Preferences</label>
										    <input type="text" class="form-control" placeholder="Females Only" ng-model="preferences">
										</fieldset>
										<fieldset class="form-group">
											<label for="deposit">Deposit</label>
										    <input type="text" class="form-control" placeholder="450" ng-model="deposit">
										</fieldset>
										<fieldset class="form-group">
											<label for="comments">Comments</label>
										    <input type="text" class="form-control" placeholder="Perfect for any LU student." ng-model="comments">
										</fieldset>
				      				</div>
				      			</div>
				    		</div>
			  			</div>	
					</div>
					<div class="col-md-4">
						<div class="panel panel-default">
			    			<div class="panel-heading" role="tab" id="headingThree">
			      				<h4 class="panel-title">
			        				<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
			          					Property Features
			        				</a>
			      				</h4>
			    			</div>
				    		<div id="collapseThree" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingThree">
				      			<div class="panel-body">
				      				<div class="col-md-6">
				      					<fieldset class="form-group">
											<label for="floorPlan">Floor Plan</label>
										    <input type="text" class="form-control" placeholder="Browse for floor plan" ng-model="floorPlan">
										</fieldset>
										<div class="checkbox">
										  <label for="sharedBathroom">
										    <input ng-model="sharedBathroom" type="checkbox" value="true">
										    <b>Shared Bathroom</b>
										  </label>
										</div>
										<fieldset class="form-group">
											<label for="washerDryer">Washer/Dryer</label>
										    <input type="text" class="form-control" placeholder="0=None,1=Hookups,2=OnPremise" ng-model="washerDryer">
										</fieldset>
				      				</div>
				      				<div class="col-md-6">
				      					<div class="checkbox">
										  <label for="furnished">
										    <input ng-model="furnished" type="checkbox" value="true">
										    <b>Furnished</b>
										  </label>
										</div>
				      					<fieldset class="form-group">
											<label for="airConditioned">Air Conditioning</label>
										    <input type="text" class="form-control" placeholder="0=None,1=WindowUnit,2=Central" ng-model="airConditioned">
										</fieldset>
										<fieldset class="form-group">
											<label for="petsAllowed">Pets Allowed</label>
										    <input type="text" class="form-control" placeholder="0,1,2" ng-model="petsAllowed">
										</fieldset>
				      				</div>
				      			</div>
				    		</div>
			  			</div>	
					</div>
				</div>
			</div>
			<div class="row" style="margin-top: 15px;">
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">	
					<div class="col-md-4">
						<div class="panel panel-default">
			    			<div class="panel-heading" role="tab" id="headingFour">
			      				<h4 class="panel-title">
			        				<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
			          					Included Utilities
			        				</a>
			      				</h4>
			    			</div>
				    		<div id="collapseFour" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingFour">
				      			<div class="panel-body">
				      				<div class="col-md-6">
				      					<div class="checkbox">
										  <label for="water">
										    <input ng-model="water" type="checkbox" value="true">
										    Water
										  </label>
										</div>
										<div class="checkbox">
										  <label for="heat">
										    <input ng-model="heat" type="checkbox" value="true">
										    Heat
										  </label>
										</div>
										<div class="checkbox">
										  <label for="electricity">
										    <input ng-model="electricity" type="checkbox" value="true">
										    Electricity
										  </label>
										</div>
										<div class="checkbox">
										  <label for="gas">
										    <input ng-model="gas" type="checkbox" value="true">
										    Gas
										  </label>
										</div>
				      				</div>
				      				<div class="col-md-6">
				      					<div class="checkbox">
										  <label for="cable">
										    <input ng-model="cable" type="checkbox" value="true">
										    Cable
										  </label>
										</div>
										<div class="checkbox">
										  <label for="phone">
										    <input ng-model="phone" type="checkbox" value="true">
										    Phone
										  </label>
										</div>
										<div class="checkbox">
										  <label for="trash">
										    <input ng-model="trash" type="checkbox" value="true">
										    Trash
										  </label>
										</div>
				      				</div>
				      			</div>
				    		</div>
			  			</div>	
					</div>
					<div class="col-md-4">
						<div class="panel panel-default">
			    			<div class="panel-heading" role="tab" id="headingFive">
			      				<h4 class="panel-title">
			        				<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
			          					Property Security
			        				</a>
			      				</h4>
			    			</div>
				    		<div id="collapseFive" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingFive">
				      			<div class="panel-body">
									
									<div class="col-md-4">
										<div class="checkbox">
										  <label for="lockChanges">
										    <input ng-model="lockChanges" type="checkbox" value="true">
										    Lock Changes
										  </label>
										</div>
										<div class="checkbox">
										  <label for="deadbolts">
										    <input ng-model="deadbolts" type="checkbox" value="true">
										    Deadbolts
										  </label>
										</div>
										<div class="checkbox">
										  <label for="peepholes">
										    <input ng-model="peepholes" type="checkbox" value="true">
										    Peepholes
										  </label>
										</div>
										<div class="checkbox">
										  <label for="balconyLock">
										    <input ng-model="balconyLock" type="checkbox" value="true">
										    Balcony Lock
										  </label>
										</div>
										<div class="checkbox">
										  <label for="exteriorLocks">
										    <input ng-model="exteriorLocks" type="checkbox" value="true">
										    Exterior Locks
										  </label>
										</div>
									</div>
									<div class="col-md-4">
										<div class="checkbox">
										  <label for="batterySmokeDetectors">
										    <input ng-model="batterySmokeDetectors" type="checkbox" value="true">
										    Battery Smoke Detectors
										  </label>
										</div>
										<div class="checkbox">
										  <label for="hardWiredSmokeDetectors">
										    <input ng-model="hardWiredSmokeDetectors" type="checkbox" value="true">
										    Hard Wired Smoke Detectors
										  </label>
										</div>
										<div class="checkbox">
										  <label for="carbonDioxideDetector">
										    <input ng-model="carbonDioxideDetector" type="checkbox" value="true">
										    CO2 Detector
										  </label>
										</div>
										<div class="checkbox">
										  <label for="fireExtinguisher">
										    <input ng-model="fireExtinguisher" type="checkbox" value="true">
										    Fire Extinguisher
										  </label>
										</div>
										<div class="checkbox">
										  <label for="exteriorLighting">
										    <input ng-model="exteriorLighting" type="checkbox" value="true">
										    Exterior Lighting
										  </label>
										</div>
									</div>
									<div class="col-md-4">
										<div class="checkbox">
										  <label for="safetyInspections">
										    <input ng-model="safetyInspections" type="checkbox" value="true">
										    Safety Inspections
										  </label>
										</div>
										<div class="checkbox">
										  <label for="securityAlarm">
										    <input ng-model="securityAlarm" type="checkbox" value="true">
										    Security Alarm
										  </label>
										</div>
										<div class="checkbox">
										  <label for="securityCameras">
										    <input ng-model="securityCameras" type="checkbox" value="true">
										    Security Cameras
										  </label>
										</div>
										<div class="checkbox">
										  <label for="securityGuard">
										    <input ng-model="securityGuard" type="checkbox" value="true">
										    Security Guard
										  </label>
										</div>
										<div class="checkbox">
										  <label for="gatedCommunity">
										    <input ng-model="gatedCommunity" type="checkbox" value="true">
										    Gated Community
										  </label>
										</div>
									</div>
				      			</div>
				    		</div>
			  			</div>	
					</div>
					<div class="col-md-4">
						<div class="panel panel-default">
			    			<div class="panel-heading" role="tab" id="headingSix">
			      				<h4 class="panel-title">
			        				<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
			          					Contact Information
			        				</a>
			      				</h4>
			    			</div>
				    		<div id="collapseSix" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingSix">
				      			<div class="panel-body">
				      				<fieldset class="form-group">
										<label for="siteUrl">Property Website</label>
										<input type="text" class="form-control" placeholder="www.langleyapartments.com" ng-model="siteUrl">
									</fieldset>
									<fieldset class="form-group">
										<label for="email">Contact Email</label>
										<input type="text" class="form-control" placeholder="contact@langley.com" ng-model="email">
									</fieldset>
									<fieldset class="form-group">
										<label for="contactPhone">Contact Phone</label>
										<input type="text" class="form-control" placeholder="1234567890" ng-model="contactPhone">
									</fieldset>
				      			</div>
				    		</div>
			  			</div>	
					</div>
				</div>
			</div>
			<div class="col-md-4" style="margin-top:40px;">
				<button ng-click="createNewListing()" class="btn btn-primary">Create Listing</button>
			</div>
		</div>
		
	
	</form>
</body>

<script src="<c:url value='/static/js/app.js' />"></script>
<script src="<c:url value='/static/js/service/ListingService.js' />"></script>
<script src="<c:url value='/static/js/controller/ListingController.js' />"></script>
</html>