<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <html lang="en">

    <!-- HTML that is not displayed -->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Apartment Finder</title>
        <!-- css -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <!-- remote js -->
        <script>function init(){console.log("done")}</script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular-route.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBeJZn7s4pb3g3XAl6J-w2tQXvi1aFwIdM&callback=init"></script>
        <!-- <base href="/finderapp/"> -->
    </head>

    <!-- HTML that is displayed -->

    <body ng-app="myApp">
        <div ng-view></div>
    </body>
    <!-- end displayed HTML section -->

    <!-- local js -->
    <script src="<c:url value='/static/js/app.js' />"></script>
    <script src="<c:url value='/static/js/map.js' />"></script>
    <script src="<c:url value='/static/js/service/ListingService.js' />"></script>
    <script src="<c:url value='/static/js/controller/ListingController.js' />"></script>
	<script src="<c:url value='/static/js/controller/ListingDetailedController.js' />"></script>
	<script src="<c:url value='/static/js/controller/ListingCreationController.js' />"></script>
	<script src="<c:url value='/static/js/controller/ListingEditController.js' />"></script>

    <!-- End Document -->

    </html>