do ->

  ### @ngInject ###
  'use strict'
  angular.module('app.hale.service').service 'TemplateService', [ "$http", "$q" , "API_CONFIG" ,($http, $q, API_CONFIG) ->

  	@makeid = () ->
  		text = ''
  		possible = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
  		i = 0
  		while i < 3
  			text += possible.charAt(Math.floor(Math.random() * possible.length))
  			i++

  		text

    # @fetch = () ->
    #   "abc"
      # d = $q.defer()
      # d.resolve API_CONFIG.url
      # d.promise

  	return

  ]

