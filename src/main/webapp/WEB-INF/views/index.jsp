<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <html lang="en">

    <!-- HTML that is not displayed -->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Mike Test Page</title>
        <!-- css -->
        <link rel="stylesheet" href="<c:url value='/static/css/apt-finder_list.css' />">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <!-- remote js -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular-route.js"></script>
        <base href="/finderapp/">
    </head>

    <!-- HTML that is displayed -->

    <body ng-app="myApp">
        <div ng-view></div>
    </body>
    <!-- end displayed HTML section -->

    <!-- local js -->
    <script src="<c:url value='/static/js/app.js' />"></script>
    <script src="<c:url value='/static/js/service/ListingService.js' />"></script>
    <script src="<c:url value='/static/js/controller/ListingController.js' />"></script>
	<script src="<c:url value='/static/js/controller/ListingDetailedController.js' />"></script>

    <!-- End Document -->

    </html>