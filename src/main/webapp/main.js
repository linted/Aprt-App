function main() {
    var aptfinder_list = angular.module("aptfinder_list", []);
    $scope.properties = ["1", "2", "3"];
    aptfinder_list.controller('populateList', function($scope) {
        //here we will query the DB and get the results for now here is some filler code
        $scope.properties = [
            {HousingHeadline: "This is a house!", Location: "that one place", Price: "$9001", Lease: "yes?", thumb: "#"},
            {HousingHeadline: "This is a house!", Location: "that one place", Price: "$9001", Lease: "yes?", thumb: "#"},
            {HousingHeadline: "This is a house!", Location: "that one place", Price: "$9001", Lease: "yes?", thumb: "#"},
            {HousingHeadline: "This is a house!", Location: "that one place", Price: "$9001", Lease: "yes?", thumb: "#"},
            {HousingHeadline: "This is a house!", Location: "that one place", Price: "$9001", Lease: "yes?", thumb: "#"},
        ];
    })
}

window.onload = function () {
    main();
    console.log("Done");
}

/*{HousingHeadline: "This is a house!", Location: "that one place", Price: "$9001", Lease: "yes?", thumb: "#"},
            {HousingHeadline: "This is a house!", Location: "that one place", Price: "$9001", Lease: "yes?", thumb: "#"},
            {HousingHeadline: "This is a house!", Location: "that one place", Price: "$9001", Lease: "yes?", thumb: "#"},
            {HousingHeadline: "This is a house!", Location: "that one place", Price: "$9001", Lease: "yes?", thumb: "#"},
            {HousingHeadline: "This is a house!", Location: "that one place", Price: "$9001", Lease: "yes?", thumb: "#"}, */