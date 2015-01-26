"use strict"

@mainController = ($scope, $window, $rootScope, $http, $modal, $location) ->
  $scope.status = {
    step1: false
    step2: false
    step3: false
    step4: false
  }

  $scope.toggleCompleted = (step) ->
    $scope.status[step] = !$scope.status[step]

  $scope.progress = ->
    console.log "Progress"




@mainController.$inject = ['$scope', '$window', '$rootScope', '$http', '$modal', '$location']

bbApp.controller('mainController', mainController);
