(function() {

  /* @ngInject */
  'use strict';
  return angular.module('app.hale.service').service('TemplateService', [
    "$http", "$q", "API_CONFIG", function($http, $q, API_CONFIG) {
      this.makeid = function() {
        var i, possible, text;
        text = '';
        possible = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        i = 0;
        while (i < 3) {
          text += possible.charAt(Math.floor(Math.random() * possible.length));
          i++;
        }
        return text;
      };
    }
  ]);
})();
