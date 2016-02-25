'use strict';

//App.factory('ListingService', ['$http', '$q', function($http, $q){
//	
//	return {
//		
//		fetchAllListings: function() {
//			return $http.get('http://tomtest-appartmentfinder.rhcloud.com/listings/')
//					.then(
//							function(response) {
////								console.log(response.data);
//								return response.data;
//							},
//							function(errResponse) {
//								console.error('Error while fetching listings');
//								return $q.reject(errResponse);
//							}
//					);
//		},
//		
//		fetchSingleListing: function(id) {
//			return $http.get('http://tomtest-appartmentfinder.rhcloud.com/listings/'+id)
//					.then(
//						function(response) {
//							console.log(response.data);
//							return response.data;
//						},
//						function(errResponse) {
//							return $q.reject(errResponse);
//						}
//					);
//		}
//	};
//}]);

//This is only used for local testing. Must be commented out when deploying to openshift.

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
		},
		
		fetchSingleListing: function(id) {
			return $http.get('http://localhost:8080/finderapp/listings/'+id)
					.then(
						function(response) {
							console.log(response.data);
							return response.data;
						},
						function(errResponse) {
							return $q.reject(errResponse);
						}
					);
		}
	};
}]);