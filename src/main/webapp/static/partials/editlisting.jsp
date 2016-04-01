<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <html lang="en">

<html>
    
    <!--
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Create New Listing</title>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <!-- remote js ->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
</head>
    -->
    
<body ng-app="myApp">
	<h1>Edit Listing</h1>
	
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
											<label for="housingHeadline">Housing Headline</label>
										    <input type="text" class="form-control" placeholder="2 BR Apartment 10 Min from Liberty!" ng-model="ctrl.listing.housingHeadline">
										</fieldset>
										<fieldset class="form-group">
											<label for="price">Price</label>
										    <input type="text" class="form-control" placeholder="600" ng-model="ctrl.listing.price">
										</fieldset>
										<fieldset class="form-group">
											<label for="lease">Lease Type</label>
										    <input type="text" class="form-control" placeholder="Per Month" ng-model="ctrl.listing.lease">
										</fieldset>
				      				</div>
				      				<div class="col-md-6">
										<fieldset class="form-group">
											<label for="location">Location</label>
										    <input id="locationTxt" type="text" class="form-control" placeholder="1971 University Blvd. Lynchburg, VA" ng-model="ctrl.listing.location">
										</fieldset>
										<fieldset class="form-group">
											<label for="housingPhoto">Property Photos</label>
										    <input type="text" class="form-control" placeholder="Browse for pics" ng-model="ctrl.listing.housingPhoto">
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
										    <input type="text" class="form-control" placeholder="Apartment" ng-model="ctrl.listing.housingType">
										</fieldset>
										<div class="checkbox">
										  <label for="forSale">
										    <input ng-model="ctrl.listing.forSale" type="checkbox" value="true"> 
										    <b>For Sale</b>
										  </label>
										</div>
										<fieldset class="form-group">
											<label for="bedrooms">Bedrooms</label>
										    <input type="text" class="form-control" placeholder="2" ng-model="ctrl.listing.bedrooms">
										</fieldset>
										<fieldset class="form-group">
											<label for="bathrooms">Bathrooms</label>
										    <input type="text" class="form-control" placeholder="1" ng-model="ctrl.listing.bathrooms">
										</fieldset>
				      				</div>
				      				<div class="col-md-6">
				      					<fieldset class="form-group">
											<label for="preferences">Preferences</label>
										    <input type="text" class="form-control" placeholder="Females Only" ng-model="ctrl.listing.preferences">
										</fieldset>
										<div class="checkbox">
										  <label for="deposit">
										    <input ng-model="ctrl.listing.deposit" type="checkbox" value="true"> 
										    <b>Deposit</b>
										  </label>
										</div>
										<fieldset class="form-group">
											<label for="comments">Comments</label>
										    <input type="text" class="form-control" placeholder="Perfect for any LU student." ng-model="ctrl.listing.comments">
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
										    <input type="text" class="form-control" placeholder="Browse for floor plan" ng-model="ctrl.listing.floorPlan">
										</fieldset>
										<div class="checkbox">
										  <label for="sharedBathroom">
										    <input ng-model="ctrl.listing.sharedBathroom" type="checkbox" value="true">
										    <b>Shared Bathroom</b>
										  </label>
										</div>
										<fieldset class="form-group">
											<label for="washerDryer">Washer/Dryer</label>
										    <input type="text" class="form-control" placeholder="0=None,1=Hookups,2=OnPremise" ng-model="ctrl.listing.washerDryer">
										</fieldset>
				      				</div>
				      				<div class="col-md-6">
				      					<div class="checkbox">
										  <label for="furnished">
										    <input ng-model="ctrl.listing.furnished" type="checkbox" value="true">
										    <b>Furnished</b>
										  </label>
										</div>
				      					<fieldset class="form-group">
											<label for="airConditioned">Air Conditioning</label>
										    <input type="text" class="form-control" placeholder="0=None,1=WindowUnit,2=Central" ng-model="ctrl.listing.airConditioned">
										</fieldset>
										<div class="checkbox">
										  <label for="petsAllowed">
										    <input ng-model="ctrl.listing.petsAllowed" type="checkbox" value="true">
										    <b>Pets Allowed</b>
										  </label>
										</div>
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
										    <input ng-model="ctrl.listing.water" type="checkbox" value="true">
										    Water
										  </label>
										</div>
										<div class="checkbox">
										  <label for="heat">
										    <input ng-model="ctrl.listing.heat" type="checkbox" value="true">
										    Heat
										  </label>
										</div>
										<div class="checkbox">
										  <label for="electricity">
										    <input ng-model="ctrl.listing.electricity" type="checkbox" value="true">
										    Electricity
										  </label>
										</div>
										<div class="checkbox">
										  <label for="gas">
										    <input ng-model="ctrl.listing.gas" type="checkbox" value="true">
										    Gas
										  </label>
										</div>
				      				</div>
				      				<div class="col-md-6">
				      					<div class="checkbox">
										  <label for="cable">
										    <input ng-model="ctrl.listing.cable" type="checkbox" value="true">
										    Cable
										  </label>
										</div>
										<div class="checkbox">
										  <label for="phone">
										    <input ng-model="ctrl.listing.phone" type="checkbox" value="true">
										    Phone
										  </label>
										</div>
										<div class="checkbox">
										  <label for="trash">
										    <input ng-model="ctrl.listing.trash" type="checkbox" value="true">
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
										    <input ng-model="ctrl.listing.lockChanges" type="checkbox" value="true">
										    Lock Changes
										  </label>
										</div>
										<div class="checkbox">
										  <label for="deadbolts">
										    <input ng-model="ctrl.listing.deadbolts" type="checkbox" value="true">
										    Deadbolts
										  </label>
										</div>
										<div class="checkbox">
										  <label for="peepholes">
										    <input ng-model="ctrl.listing.peepholes" type="checkbox" value="true">
										    Peepholes
										  </label>
										</div>
										<div class="checkbox">
										  <label for="balconyLock">
										    <input ng-model="ctrl.listing.balconyLock" type="checkbox" value="true">
										    Balcony Lock
										  </label>
										</div>
										<div class="checkbox">
										  <label for="exteriorLocks">
										    <input ng-model="ctrl.listing.exteriorLocks" type="checkbox" value="true">
										    Exterior Locks
										  </label>
										</div>
									</div>
									<div class="col-md-4">
										<div class="checkbox">
										  <label for="batterySmokeDetectors">
										    <input ng-model="ctrl.listing.batterySmokeDetectors" type="checkbox" value="true">
										    Battery Smoke Detectors
										  </label>
										</div>
										<div class="checkbox">
										  <label for="hardWiredSmokeDetectors">
										    <input ng-model="ctrl.listing.hardWiredSmokeDetectors" type="checkbox" value="true">
										    Hard Wired Smoke Detectors
										  </label>
										</div>
										<div class="checkbox">
										  <label for="carbonDioxideDetector">
										    <input ng-model="ctrl.listing.carbonDioxideDetector" type="checkbox" value="true">
										    CO2 Detector
										  </label>
										</div>
										<div class="checkbox">
										  <label for="fireExtinguisher">
										    <input ng-model="ctrl.listing.fireExtinguisher" type="checkbox" value="true">
										    Fire Extinguisher
										  </label>
										</div>
										<div class="checkbox">
										  <label for="exteriorLighting">
										    <input ng-model="ctrl.listing.exteriorLighting" type="checkbox" value="true">
										    Exterior Lighting
										  </label>
										</div>
									</div>
									<div class="col-md-4">
										<div class="checkbox">
										  <label for="safetyInspections">
										    <input ng-model="ctrl.listing.safetyInspections" type="checkbox" value="true">
										    Safety Inspections
										  </label>
										</div>
										<div class="checkbox">
										  <label for="securityAlarm">
										    <input ng-model="ctrl.listing.securityAlarm" type="checkbox" value="true">
										    Security Alarm
										  </label>
										</div>
										<div class="checkbox">
										  <label for="securityCameras">
										    <input ng-model="ctrl.listing.securityCameras" type="checkbox" value="true">
										    Security Cameras
										  </label>
										</div>
										<div class="checkbox">
										  <label for="securityGuard">
										    <input ng-model="ctrl.listing.securityGuard" type="checkbox" value="true">
										    Security Guard
										  </label>
										</div>
										<div class="checkbox">
										  <label for="gatedCommunity">
										    <input ng-model="ctrl.listing.gatedCommunity" type="checkbox" value="true">
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
										<input type="text" class="form-control" placeholder="www.langleyapartments.com" ng-model="ctrl.listing.siteUrl">
									</fieldset>
									<fieldset class="form-group">
										<label for="email">Contact Email</label>
										<input type="text" class="form-control" placeholder="contact@langley.com" ng-model="ctrl.listing.email">
									</fieldset>
									<fieldset class="form-group">
										<label for="contactPhone">Contact Phone</label>
										<input type="text" class="form-control" placeholder="1234567890" ng-model="ctrl.listing.contactPhone">
									</fieldset>
				      			</div>
				    		</div>
			  			</div>	
					</div>
				</div>
			</div>
			<div class="col-md-4" style="margin-top:40px;">
				<button ng-click="updateListing()" class="btn btn-primary">Update Listing</button>
				<button ng-click="confirmDelete()" class="btn btn-danger">Delete Listing</button>
			</div>
		</div>
		
	
	</form>
</body>
<!--
<script src="<c:url value='/static/js/app.js' />"></script>
<script src="<c:url value='/static/js/service/ListingService.js' />"></script>
-->
</html>