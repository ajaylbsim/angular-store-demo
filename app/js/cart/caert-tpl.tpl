    <div layout="column" style="height:600px" ng-cloak>
      <md-toolbar>
        <div>
          <h3>
            <span>Angular Store</span>
          </h3>
        </div>
      </md-toolbar>
      <div layout layout-padding><div><img ng-src="{{cartCtrl.imgPath}}" class="md-avatar"></div> <div layout-padding class="margin-auto"> Apple to eat keep doctor away.</div></div>
      <md-content flex layout layout-margin>
      <div flex>
          <md-toolbar layout-padding layout-align="center end">
            <div><h5 class="m-p-0">This item in your cart</h5></div>
            <div>3 items $20.00</div>
          </md-toolbar>
          <md-list>
            <md-list-item class="md-3-line">
              <div class="md-list-item-text">
                <h3 class="blue">Calories</h3>
              </div>
              <div layout-padding class=" margin-auto">90</div>
              <md-divider inset></md-divider>
            </md-list-item>
            <md-list-item class="md-3-line">
              <div class="md-list-item-text">
                <h3 class="blue">Fibre</h3>
              </div>
              <div layout-padding class=" margin-auto">90</div>
              <md-divider inset></md-divider>
            </md-list-item>
            <md-list-item class="md-3-line">
              <div class="md-list-item-text">
                <h3 class="blue">Folates</h3>
              </div>
              <div layout-padding class=" margin-auto">90</div>
              <md-divider inset></md-divider>
            </md-list-item>
            <md-list-item class="md-3-line">
              <div class="md-list-item-text">
                <h3 class="blue">Vitamin C</h3>
              </div>
              <div layout-padding class=" margin-auto">90</div>
              <md-divider inset></md-divider>
            </md-list-item>
          </md-list>
        </div>
        <div layout="column"><md-button class="md-primary">Add to cart</md-button>
          <md-button class="md-warn">Remove from cart</md-button>
          <md-button >Back to store</md-button>
        </div>
      </md-content>
    </div>
