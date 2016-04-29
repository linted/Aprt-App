'use strict';

App.controller('loginController', ['$scope', '$window', '$cookies', function ($scope, $window, $cookies) {

    // variable definitions
    $scope.user = {
        name: '',
        pass: ''
    };

    // Function definitions

    $scope.submitForm = function () {
        if ($scope.user.name && $scope.user.pass && parseInt($scope.user.name)) {
            var today = new Date();
            var expired = new Date(today);
            expired.setDate(today.getDate() + 1); //Set expired date to tomorrow

            $cookies.put('user', parseInt($scope.user.name), {
                expires: expired,
                //###################################################################################################
                //CHANGE THIS TO WHAT EVER DOMAIN WE ARE CURRENTLY USING TO ENABLE SECURITY MEASURES IN COOKIES
                //###################################################################################################
                /*domain: "http://tomtest-appartmentfinder.rhcloud.com/"*/
                //                    domain: "http://localhost:8080/finderapp/"
            });
            $window.location.assign("/");
            //                $window.location.assign("/finderapp/");
        } else {
            $window.alert("make sure orgId is an int and that you have a password entered.")
        }
    };


    /* ################################################################# Cookie check if there is an orgID ############################################################# */
    $scope.checkUser = function () {
        //check if user is logged in, if so log them out and return them to the home page
        if ($cookies.get('user') != undefined) {
            $window.alert("Logging out.");
            $cookies.remove('user');
            $window.location.assign("/");
        }
    }

    /* Code that runs */

    $scope.checkUser();

}]);