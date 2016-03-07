<!-- Header -->
        <section id="header">
            <span class="Apartment-Finder">Apartment Finder</span>
            <a id="landlordLogin" href="#">Landlord Sign-in ></a>
        </section>
        <!-- left column -->
        <section id="leftColumn" ng-init="cc={keyId:'',orgId:'',housingHeadline:'',forSale:'',bedrooms:'',bathrooms:'',washerDryer:'',furnished:'',airConditioned:'',petsAllowed:'',price:'',location:'',active:1}">
            <span class="Filter-Results">Filter Results</span>
            <!-- filter form -->
            <form>
                <!-- input boxes -->
                <div id="inputBoxes">
                    <!-- price -->
                    <p class="Price">Price</p>
                    <span class="Price-Text">$ </span><input class="priceBox" id="lowerPriceBound">
                    <span class="Price-Text" id="toDolla"> to $</span>
					<input class="priceBox" id="upperPriceBound">
					<button type="submit" id="goButton" ng-click="applyToSearch()">GO</button>
                </div>

                <!-- drop down menus -->
                <div id="dropDownMenus">
                    <!-- bedrooms -->
                    <label class="DropMenu">
                        Bedrooms
                        <br>
                        <select id="BedroomSelect" ng-model="cc.bedrooms">
                            <option value="">0+</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                    </label>
                    <!-- bathrooms -->
                    <label class="DropMenu">
                        Bathrooms
                        <br>
                        <select id="BathroomSelect" ng-model="cc.bathrooms">
                            <option value="">0+</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                    </label>
                </div>
                <!-- check boxes -->
                <div id="checkBoxes">
                    <label class="checkBox">
                        <input type="checkbox" ng-model="cc.airConditioned" checked="true"> Air-Conditioned</label>
                    <br>
                    <label class="checkBox">
                        <input type="checkbox" ng-model="cc.furnished" checked="true"> Furnished</label>
                    <br>
                    <label class="checkBox">
                        <input type="checkbox" ng-model="cc.washerDryer" checked="true"> Washer/Dryer</label>
                    <br>
                    <label class="checkBox">
                        <input type="checkbox" ng-model="cc.petsAllowed" checked="true"> Pets Allowed</label>
                    <br>
                </div>
                
            </form>
        </section>
        <!-- right column -->
        <section id="rightColumn">
            <!-- Sort by buttons -->
            <section id="rightTopSortBar">
                <!-- Sort by drop down menu -->
                <label class="DropMenu">
                    <br>
                    <select id="SortBySelect">
                    	<option value="">Any Order</option>
                        <option value="price+">Lowest Price</option>
                        <option value="price-">Highest Price</option>
                    </select>
                </label>
                <!-- toggle for list vs. map view -->
                <label>
                    <input type="checkbox">List</label>
                <label>
                    <input type="checkbox">Map</label>
            </section>
            <!-- Listing controller -->
            <section>
                <!-- repeat through the entries in the sql -->
                <section class="allListings" ng-repeat="x in ctrl.listings | filter:cc | filter:filterPrice | limitTo:totalDisplayed">
                    <section class="listingStyleLeft">
                        <!-- temp holder until we get images working VVV -->
                        <img class="thumb" src='/static/img/181.jpeg' />
                        <!--src="{{x.thumb}}">-->
                    </section>

                    <section class="listingStyleRight">
                        <section class="leftSubListingStyle">
                            <a href="properties/{{x.keyId}}"><span ng-bind="x.housingHeadline"></span></a>
                            <br>
                            <span ng-bind="x.location"></span>
                        </section>
                        <section class="rightSubListingStyle">
                           	<span class="listingPrice">$ <span ng-bind="x.price"></span></span>
                            <span ng-if="x.forSale == '1'"></span>
                            <span ng-if="x.forSale == '0'" class="priceSubText">Per Month</span>
                        </section>
                    </section>
                </section>
                <button ng-click="loadMore()">Load More</button>
            </section>
        </section>