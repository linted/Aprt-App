<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!--<!DOCTYPE html> -->
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Mike Test Page</title>
    <!-- css -->
    
    <link rel="stylesheet" href="<c:url value='/static/css/Apartment.css' />">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <!-- remote js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
</head>

<!-- remove. for testing only! -->
<!--<script src="mike.js"></script>
<link rel="stylesheet" href="Apartment.css">-->
<!-- end test area -->

<body ng-app="myApp">
    <!-- Header -->
    <h1>Apartment Finder</h1>
    <hr>
    <!-- left column -->
    <section id="leftColumn">
        <p>Filter Results</p>
        <form>
        <input>
        <input>
        
        
        <hr>
        <select>
            <option>0+</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
        </select>
        <select>
            <option>0+</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
        </select>
        <hr>
        <input type="checkbox"> <label>Air-Conditioned</label> <br>
        <input type="checkbox"> <label>Furnished</label>
        <input type="checkbox"> <label>Washer/Dryer</label> <br>
        <input type="checkbox"> <label>Pets Allowed</label> <br>
        <button>GO</button>
        </form>
    </section>
    <!-- right column -->
    <section id="rightColumn">
        <!-- Listing controller -->
        <section ng-controller="ListingController as ctrl">
            <!-- repeat through the entries in the sql -->
            <section ng-repeat="x in ctrl.listings">
                <section class="listingStyleLeft">
                    <!-- img needs work to pull the src from javascript -->
                <img class="thumb" src="{{x.thumb}}">
                </section>
                <section class="listingStyleRight">
                    <hr>
                    <span ng-bind="x.housingHeadline"></span>
                    <span ng-bind="x.location"></span>
                    <span ng-bind="x.price"></span>
                    <span ng-bind="x.lease"></span>
                    <hr>
                </section>
            </section>
        </section>
    </section>
</body>
    

<!-- local js -->

<script src="<c:url value='/static/js/app.js' />"></script>
<script src="<c:url value='/static/js/service/listings_service.js' />"></script>
<script src="<c:url value='/static/js/controller/listings_controller.js' />"></script>

</html>