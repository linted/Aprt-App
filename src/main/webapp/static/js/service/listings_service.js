'use strict';

App.factory('ListingService', ['$http', '$q', function($http, $q){
	
	return {
		
		fetchAllListings: function() {
			return $http.get('http://localhost:8080/finderapp/listings/')
					.then(
							function(response) {
//								console.log(response.data);
								return response.data;
							},
							function(errResponse) {
								console.error('Error while fetching listings');
								return $q.reject(errResponse);
							}
					);
		}
	};
}]);