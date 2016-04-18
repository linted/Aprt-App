/* the functions on this page are insecure, and show how and why this app needs some sort of login. as it stands we have no way of stoping 
   individuals from simply creating, editing, or deleting listings by using the urls below */

App.factory('ListingService', ['$http', '$q', function($http, $q){
	
	return {
		
		fetchAllListings: function() {
			return $http.get('https://tomtest-appartmentfinder.rhcloud.com/listings/')
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
			return $http.get('https://tomtest-appartmentfinder.rhcloud.com/listings/'+id)
					.then(
						function(response) {
//							console.log(response.data);
							return response.data;
						},
						function(errResponse) {
							return $q.reject(errResponse);
						}
					);
		},
		
		createNewListing: function(data) {
			return $http.post('https://tomtest-appartmentfinder.rhcloud.com/listings/new', data).success(function(data, status) {
				console.log(data);
			})
		},
		
		editListing: function(data) {
			return $http.post('https://tomtest-appartmentfinder.rhcloud.com/listings/edit', data)
				.success(function(data, status) {
					console.log(data);
					console.log('Success Status: ' + status);
				})
				.error(function(data, status) {
					console.log(data);
					console.log('Error Status' + status);
				})
		},
		
		deleteListing: function(id) {
			return $http.post('https://tomtest-appartmentfinder.rhcloud.com/listings/delete/'+id,id).success(function(data, status) {
				console.log(status);
			})
		}
	};
}]);

//This is only used for local testing. Must be commented out when deploying to openshift.

//App.factory('ListingService', ['$http', '$q', function($http, $q){
//	
//	return {
//		
//		fetchAllListings: function() {
//			return $http.get('http://localhost:8080/finderapp/listings/')
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
//			return $http.get('http://localhost:8080/finderapp/listings/'+id)
//					.then(
//						function(response) {
////							console.log(response.data);
//							return response.data;
//						},
//						function(errResponse) {
//							return $q.reject(errResponse);
//						}
//					);
//		},
//		
//		createNewListing: function(data) {
//			return $http.post('http://localhost:8080/finderapp/listings/new/', data).success(function(data, status) {
//				console.log('Successfully saved: ' + data);
//				return data;
////				$window.location.assign( "/properties/" + data );
//			})
//		},
//		
//		editListing: function(data) {
//			return $http.post('http://localhost:8080/finderapp/listings/edit', data)
//				.success(function(data, status) {
//					console.log(data);
//					console.log('Success Status: ' + status);
//				})
//				.error(function(data, status) {
//					console.log(data);
//					console.log('Error Status' + status);
//				})
//		},
//		
//		deleteListing: function(id) {
//			return $http.post('http://localhost:8080/finderapp/listings/delete/'+id,id).success(function(data, status) {
//				console.log(status);
//			})
//		}
//	};
//}]);