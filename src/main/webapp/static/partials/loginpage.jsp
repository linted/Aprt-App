<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Login</title>
    </head>

    <body ng-app="myApp">
        <div>
            <form name="myForm" style="margin-top: 10%; margin-left: 40%; background-color: gainsboro; border: 1px solid; height: 50%; width: 30%; padding: 2%;">
                <label>
                    User ID:
                    <input type="text" name="userName" ng-model="user.name" required>
                </label>
                <div role="alert">
                    <span class="error" ng-show="myForm.userName.$error.required">Required!</span>
                </div>
                <label>
                    Password:
                    <input type="password" name="password" ng-model="user.pass" required>
                </label>
                <div role="alert">
                    <span class="error" ng-show="myForm.password.$error.required">Required!</span>
                </div>
                <button ng-click="submitForm()">Log in!</button>
            </form>
        </div>
    </body>

    <!-- 
Copyright 2016 Google Inc. All Rights Reserved.
Use of this source code is governed by an MIT-style license that
can be found in the LICENSE file at http://angular.io/license
-->

    </html>