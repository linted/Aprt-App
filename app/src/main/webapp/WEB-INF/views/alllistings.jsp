<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>Hello</title>
	</head>
	<body ng-app="myApp" class="ng-cloak">
		<h1>All Listings</h1>
		<div ng-controller="ListingController as ctrl">
			<div class="tablecontainer">
                  <table class="table table-hover">
                      <thead>
                          <tr>
                              <th>ID.</th>
                              <th>Headline</th>
                              <th>Lease</th>
                              <th>Price</th>
                          </tr>
                      </thead>
                      <tbody>
                          <tr ng-repeat="u in ctrl.listings">
                              <td><span ng-bind="u.id"></span></td>
                              <td><span ng-bind="u.headline"></span></td>
                              <td><span ng-bind="u.lease"></span></td>
                              <td><span ng-bind="u.price"></span></td>
                          </tr>
                      </tbody>
                  </table>
              </div>
		</div>
		
	  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.js"></script>
      <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/listing_service.js' />"></script>
      <script src="<c:url value='/static/js/controller/listing_controller.js' />"></script>
	</body>
</html>