"use strict"

@mainController = ($scope, $window, $rootScope, $http, $modal, $location) ->
  $scope.status = {
    step1: false
    step2: false
    step3: false
    step4: false
  }

  $scope.results = null;

  $scope.toggleCompleted = (step) ->
    $scope.status[step] = !$scope.status[step]

  $scope.topics = [
    { val: 'Any', sel: false },
    { val: 'Housing', sel: false },
    # { val: 'Transportation', sel: false },
    { val: 'Employment', sel: false },
    { val: 'Health', sel: false },
    { val: 'Legal', sel: false },
    { val: 'Social', sel: false },
    {  val: 'Food', sel: false }
  ]
  $scope.types = [
    {val: 'Any', sel: false },
    {val: 'Guides', sel: false },
    {val: 'Help', sel: false },
    {val: 'Question', sel: false },
    {val: 'Event', sel: false }
  ]

  $scope.filter = {};

  $scope.init = ->
    $http
      url: "data/search-results.json"
    .success (data, status) ->
      $scope.results = data;

  $scope.filterByTopic = (item) ->
    return $scope.filter[item.tags] || noFilter($scope.filter);

  noFilter = (filterObj) ->
    for key, val of filterObj
      console.log key
      if (filterObj[key])
        return false

    return true;

  $scope.init();

@mainController.$inject = ['$scope', '$window', '$rootScope', '$http', '$modal', '$location']

bbApp.controller('mainController', mainController);
