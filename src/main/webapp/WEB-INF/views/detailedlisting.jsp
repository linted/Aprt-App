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
		<h1 align="center">Single Listings</h1>
    <div class="container">
      <div ng-controller="ListingDetailedController as ctrl">
      	<span ng-bind="ctrl.housingHeadline"></span>
	  </div>
	</div>
		

	  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
      <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/ListingService.js' />"></script>
      <script src="<c:url value='/static/js/controller/ListingDetailedController.js' />"></script>
      
	</body>
</html>
