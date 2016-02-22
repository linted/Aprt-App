<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>Hello</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link href="http://twitter.github.io/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</head>
	<body ng-app="myApp" class="ng-cloak">
		<h1 align="center">All Listings</h1>
    <div class="container">
      <div ng-controller="ListingController as ctrl">
        <div class="panel panel-default"  ng-repeat="u in ctrl.listings | limitTo:totalDisplayed">
        <div class="panel-heading">
          <a ng-href="/finderapp/properties/{{u.keyId}}" style="text-decoration: none; color:black;"><h3 class="panel-title"><span>{{$index + 1}} </span><span ng-bind="u.housingHeadline"></span></h3></a>
        </div>
        <div class="panel-body">
          <table>
            <tr>
              <th>Key ID</th>
              <th>Housing ID</th>
              <th>Org ID</th>
              <th>Headline</th>
              <th>Type</th>
              <th>For Sale</th>
              <th>Water</th>
              <th>Heat</th>
              <th>Electricity</th>
              <th>Gas</th>
            </tr>
            <tr>
              <td><span ng-bind="u.keyId"></span></td>
              <td><span ng-bind="u.housingId"></span></td>
              <td><span ng-bind="u.orgId"></span></td>
              <td><span ng-bind="u.housingHeadline"></span></td>
              <td><span ng-bind="u.housingType"></span></td>
              <td><span ng-bind="u.forSale"></span></td>
              <td><span ng-bind="u.water"></span><</td>
              <td><span ng-bind="u.heat"></span></td>
              <td><span ng-bind="u.electricity"></span></td>
              <td><span ng-bind="u.gas"></span></td>
            </tr>
            <tr>
              <th>Cable</th>
              <th>Phone</th>
              <th>Trash</th>
              <th>Bedrooms</th>
              <th>Bathrooms</th>
              <th>Shared Bathroom</th>
              <th>Washer/Dryer</th>
              <th>Furnished</th>
              <th>A/C</th>
              <th>Pets</th>
            </tr>
            <tr>
              <td><span ng-bind="u.cable"></span></td>
              <td><span ng-bind="u.phone"></span></td>
              <td><span ng-bind="u.trash"></span></td>
              <td><span ng-bind="u.bedrooms"></span></td>
              <td><span ng-bind="u.bathrooms"></span></td>
              <td><span ng-bind="u.sharedBathroom"></span></td>
              <td><span ng-bind="u.washerDryer"></span></td>
              <td><span ng-bind="u.furnished"></span></td>
              <td><span ng-bind="u.airConditioned"></span></td>
              <td><span ng-bind="u.petsAllowed"></span></td>
            </tr>
            <tr>
              <th>Lease</th>
              <th>Preferences</th>
              <th>Price</th>
              <th>Deposit</th>
              <th>Location</th>
              <th>Comments</th>
              <th>Floor Plan</th>
              <th>housing Photo</th>
              <th>Create Date</th>
              <th>Posting Date</th>
            </tr>
            <tr>
              <td><span ng-bind="u.lease"></span></td>
              <td><span ng-bind="u.preferences"></span></td>
              <td><span ng-bind="u.price"></span></td>
              <td><span ng-bind="u.deposit"></span></td>
              <td><span ng-bind="u.location"></span></td>
              <td><span ng-bind="u.comments"></span></td>
              <td><span ng-bind="u.floorPlan"></span></td>
              <td><span ng-bind="u.housingPhoto"></span></td>
              <td><span ng-bind="u.createDate"></span></td>
              <td><span ng-bind="u.postingDate"></span></td>
            </tr>
            <tr>
              <th>Edit Date</th>
              <th>Active</th>
              <th>Site URL</th>
              <th>LockChanges</th>
              <th>Deadbolts</th>
              <th>Peepholes</th>
              <th>BalconyLock</th>
              <th>ExteriorLocks</th>
              <th>BatterySmokeDetectors</th>
              <th>HardWiredSmokeDetectors</th>
            </tr>
            <tr>
              <td><span ng-bind="u.editDate"></span></td>
              <td><span ng-bind="u.active"></span></td>
              <td><span ng-bind="u.siteUrl"></span></td>
              <td><span ng-bind="u.lockChanges"></span></td>
              <td><span ng-bind="u.deadbolts"></span></td>
              <td><span ng-bind="u.peepholes"></span></td>
              <td><span ng-bind="u.balconyLock"></span></td>
              <td><span ng-bind="u.exteriorLocks"></span></td>
              <td><span ng-bind="u.batterySmokeDetector"></span></td>
              <td><span ng-bind="u.hardWiredSmokeDetector"></span></td>
            </tr>
            <tr>
              <th>CODetector</th>
              <th>FireExtinguisher</th>
              <th>ExteriorLighting</th>
              <th>SafetyInspections</th>
              <th>SecurityAlarm</th>
              <th>SecurityCameras</th>
              <th>SecurityGuard</th>
              <th>GatedCommunity</th>
              <th></th>
              <th></th>
            </tr>
            <tr>
              <td><span ng-bind="u.coDetector"></span></td>
              <td><span ng-bind="u.fireExtinguisher"></span></td>
              <td><span ng-bind="u.exteriorLighting"></span></td>
              <td><span ng-bind="u.safetyInspections"></span></td>
              <td><span ng-bind="u.securityAlarm"></span></td>
              <td><span ng-bind="u.securityCameras"></span></td>
              <td><span ng-bind="u.securityGuard"></span></td>
              <td><span ng-bind="u.gatedCommunity"></span></td>
              <td></td>
              <td></td>
            </tr>
          </table>
        </div>
      </div>
      <button ng-click="loadMore()">Load More</button>
      </div>
    </div>
		

	  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
      <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/ListingService.js' />"></script>
      <script src="<c:url value='/static/js/controller/ListingController.js' />"></script>
      
	</body>
</html>
