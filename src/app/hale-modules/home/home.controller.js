(function() {

  /* @ngInject */
  var HomeController;
  HomeController = function(TemplateService) {
    var model;
    model = this;
    return model.tester = TemplateService.makeid();
  };
  'use strict';
  angular.module('app.hale.home').controller('HomeController', HomeController);
})();
