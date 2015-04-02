"use strict"

@appConfig = ($routeProvider, $locationProvider) ->
  $routeProvider
  .when("/",
    templateUrl: "templates/index.html"
    controller: "mainController"
  )
  .when("/bank",
    templateUrl: "templates/bank.html"
    controller: "mainController"
  )
  .when("/phone",
    templateUrl: "templates/phone.html"
    controller: "mainController"
  )
  .when("/internet",
    templateUrl: "templates/internet.html"
    controller: "mainController"
  )
  .when("/job",
    templateUrl: "templates/job.html"
    controller: "mainController"
  )
  .when("/search",
    templateUrl: "templates/search/index.html"
    controller: "mainController"
  )
  .otherwise
    templateUrl: "views/404.html"
    controller: "404Ctrl"

@appConfig.$inject = ['$routeProvider', '$locationProvider']

bbApp.config(appConfig)
