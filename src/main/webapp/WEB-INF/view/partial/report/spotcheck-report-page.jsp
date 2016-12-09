<section class="padding-20" ng-controller="ReportCtrl">
  <div ng-controller="SpotcheckMismatchCtrl" ng-init='init()'>
    <div layout-align="space-between none" layout="row">
      <md-content>
        <p>Report Date: {{date}}</p>
        <select ng-model="textControls.whitespace" ng-change="getSummaries()"
                ng-options="value as label for (value, label) in checkBoxOptions"></select>
      </md-content>

      <div id="spotcheck-report-page-issues-box" layout-align="space-around center" layout="column">
        <md-checkbox>Open Issues</md-checkbox>
        <md-checkbox>New Issues</md-checkbox>
        <md-checkbox>Resolved Issues</md-checkbox>
      </div>
    </div>
  </div>

  <div ng-cloak>
    <md-content>
      <md-tabs md-dynamic-height md-border-bottom>
        <md-tab label="Bills">
          <md-content>
            <md-list>
              <md-list layout="row">
                <md-list-item ng-repeat="category in billCategories" flex>{{category}}</md-list-item>

                <md-button flex></md-button>
                <md-button flex></md-button>
              </md-list>

              <md-divider></md-divider>

              <md-list layout="row">
                <md-list-item ng-repeat="data in exampleData" flex>{{data}}</md-list-item>

                <md-button class="md-raised" flex>Diff</md-button>
                <md-button class="md-accent md-raised" flex>Ignore</md-button>
              </md-list>
            </md-list>
          </md-content>
        </md-tab>
        <md-tab label="Calendars">
          <md-content class="md-padding">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla venenatis ante
              augue.
              Phasellus volutpa.</p>
          </md-content>
        </md-tab>
        <md-tab label="Agendas">
          <md-content class="md-padding">
            <p>Integer turpis erat, porttitor vitae mi faucibus, laoreet interdum tellus.
              Curabitur
              posuere molestie</p>
          </md-content>
        </md-tab>
      </md-tabs>
    </md-content>
  </div>
</section>
