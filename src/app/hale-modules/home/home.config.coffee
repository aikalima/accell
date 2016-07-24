do ->

  ### @ngInject yo###

  moduleConfig = ($stateProvider, triMenuProvider) ->
    $stateProvider.state 'triangular.home',
      url: '/home'
      templateUrl: 'app/hale-modules/home/home.tmpl.html'
      controller: 'HomeController'
      controllerAs: 'home'
      # data: 
      #   layout: 
      #     contentClass: 'full-image-background mb-bg-09'
        
    triMenuProvider.addMenu
      name: 'Accelerator'
      icon: 'zmdi zmdi-face'
      type: 'dropdown'
      priority: 0.3
      children: [
        {
          name: 'Dashboard'
          state: 'triangular.home'
          type: 'link'
        }
        {
          name: 'Startups'
          state: 'triangular.home'
          type: 'link'
        }
        {
          name: 'Events'
          state: 'triangular.home'
          type: 'link'
        }
        {
          name: 'Radars'
          state: 'triangular.home'
          type: 'link'
        }
      ]
    triMenuProvider.addMenu
      name: 'Startups'
      icon: 'fa fa-tree'
      type: 'dropdown'
      priority: 0.4
      children: [ 
        {
          name: 'Dashboard'
          state: 'triangular.home'
          type: 'link'
        } 
        {
          name: 'Radars'
          state: 'triangular.home'
          type: 'link'
        } 
        {
          name: 'Profile'
          state: 'triangular.home'
          type: 'link'
        }
    ]

    triMenuProvider.addMenu
      name: 'Investors'
      icon: 'zmdi zmdi-flower-alt zmdi-hc-2x'
      type: 'dropdown'
      priority: 0.5
      children: [ 
        {
          name: 'Deal Flow'
          state: 'triangular.home'
          type: 'link'
        }
        {
          name: 'Investments'
          state: 'triangular.home'
          type: 'link'
        } 
        
        {
          name: 'Profile'
          state: 'triangular.home'
          type: 'link'
        } 
      ]
    return

  'use strict'
  angular.module('app.hale.home').config moduleConfig

  return
