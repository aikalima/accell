do ->

  ### @ngInject ###
  HomeController = (TemplateService) ->
    model = @
    model.tester = TemplateService.makeid()

  	# TemplateService.fetch().then (data) ->
   #  	model.templates = data

  'use strict'
  angular.module('app.hale.home').controller 'HomeController', HomeController
  
  return