
<div layout="column" style="height:600px" ng-cloak>

  <md-toolbar>
  <div class="md-toolbar-tools">
    <h3>
      <span>Angular Store</span>
    </h3>
  </div>

</md-toolbar>

<md-content flex layout-margin>
<div>Welcome to the angular store.</div>
<div>Please select the products you wand and add them to cart.</div>
<div>When you are done.click the cart icon for review your order.</div>
<md-input-container >
<label>Search</label>
<input type="text" ng-model="search">
</md-input-container>
<md-list>

<md-list-item class="md-3-line" ng-repeat="item in  listCtrl.fruits |filter: { name: search } track by $index">
<img ng-src="{{listCtrl.imgPath}}" class="md-avatar">

<div class="md-list-item-text">
  <h3 class="blue" ui-sref="home.item({id:item.id})">{{item.name}}</h3>
  <h4>..............</h4>

                <!-- <p>
                  {{item.notes}}
                </p> -->
              </div>
              <div layout-padding class="vertical-divider margin-auto">{{item.price}}</div>
              <div class="margin-auto"><md-button  ng-if="!item.inCart"class="md-primary" ng-click="addToCart(item);item.inCart= true">add to cart</md-button> 
              <md-button class="md-primary" ng-if="item.inCart" > In cart</md-button>  </div>
              
              <md-divider inset></md-divider>
            </md-list-item>

          </md-list>
<div layout layout-align="center end">
  <md-button ui-sref="home.cart" class="md-warn">Go to cart</md-button>
</div>
        </md-content>

      </div>
