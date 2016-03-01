'use strict';

var App = angular.module('myApp', []);
App.controller('ListingDetailedController', ["$scope", function($scope, ListingDetailedController) {
	var self = this;
	self.detailedListing ={keyId:111,housingId:"1571",orgId:"116",housingHeadline:"2 Story House",housingType:"House",forSale:false,water:true,heat:true,electricity:true,gas:true,cable:false,phone:false,trash:false,bedrooms:3,bathrooms:"2",sharedBathroom:false,washerDryer:2,furnished:false,airConditioned:2,petsAllowed:false,lease:"One Year",preferences:null,price:200,deposit:1,location:"4548 Greenwood Dr.\r\n\r\nOff of Perrymount Ave.; approx. 5 minutes from LU campus.",comments:"Looking for 1-2 additional female roommates to share house; Great location; only 1/2 of rent needed for deposit.",floorPlan:null,housingPhoto:null,createDate:"2002-07-28 09:56:18.0",postingDate:"2002-07-29 00:00:00.0",editDate:"2002-07-29 10:28:27.0",active:1,siteUrl:null,lockChanges:true,deadbolts:false,peepholes:false,balconyLock:false,exteriorLocks:false,securityAlarm:false,bsd:false,hwsd:false,cod:false,fireExt:false,extLight:false,safetyInspec:true,secCameras:false,secGuard:false,gated:false};
    
    self.detailedListing["security"] = (self.detailedListing.lockChanges || self.detailedListing.deadbolts || self.detailedListing.peepholes || self.detailedListing.balconyLock || self.detailedListing.exteriorLocks || self.detailedListing.securityAlarm || self.detailedListing.bsd || self.detailedListing.hwsd || self.detailedListing.hwsd || self.detailedListing.cod || self.detailedListing.fireExt || self.detailedListing.extLight || self.detailedListing.safetyInspec || self.detailedListing.secCameras || self.detailedListing.secGuard);
    
    console.log(self.detailedListing);
    
}]);