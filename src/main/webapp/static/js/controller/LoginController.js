'use strict';

App.controller('loginController', ['$scope', '$window', '$cookies', function ($scope, $window, $cookies) {
        $scope.user = {
            name: '',
            pass: ''
        };
        $scope.submitForm = function () {
            if ($scope.user.name && $scope.user.pass) {
                var today = new Date();
                var expired = new Date(today);
                expired.setDate(today.getDate() + 1); //Set expired date to tomorrow
                var temp1 = $scope.user.name;
                $cookies.put('user', $scope.user.name, {
                    expires: expired,
                    //###################################################################################################
                    //CHANGE THIS TO WHAT EVER DOMAIN WE ARE CURRENTLY USING
                    //###################################################################################################
                    /*domain: "http://tomtest-appartmentfinder.rhcloud.com/"*/
//                    domain: "http://localhost:8080/finderapp/"
                });
                $window.location.assign("/");
//                $window.location.assign("/finderapp/");
            }
        };
     }]);