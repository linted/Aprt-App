<!DOCTYPE HTML><!--<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>-->
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Mike Test Page</title>
    <link rel="stylesheet" href="<c:url value='/static/css/Appartment.css' />">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>


<body ng-app="myApp">
    <h1>Apartment Finder</h1>
    <hr>
    <section id="leftColumn">
        <button>option 1</button>
        <hr>
        <button> we do things</button>
        <hr>
        <select>
            <option>tadfs</option>
            <option>lahs</option>
            <option>those words</option>
        </select>
    </section>
    <section id="rightColumn">
        <section ng-controller="ListingController as ctrl">
            <section ng-repeat="x in ctrl.listings">
                <section class="listingStyleLeft">
                <img class="thumb" src="{{x.thumb}}">
                </section>
                <section class="listingStyleRight">
                    <hr>
                    <div ng-bind="x.HousingHeadline"></div>
                    <div ng-bind="x.location"></div>
                    <div ng-bind="x.price"></div>
                    <div ng-bind="x.Lease"></div>
                    <hr>
                </section>
            </section>
        </section>
    </section>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
<script src="<c:url value='/static/js/app.js' />"></script>
<script src="<c:url value='/static/js/service/listings_service.js' />"></script>
<script src="<c:url value='/static/js/controller/listings_controller.js' />"></script>
</html>