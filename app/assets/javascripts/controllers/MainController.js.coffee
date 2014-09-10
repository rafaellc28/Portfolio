angular.module('portfolioApp').controller "MainController", ($scope, Labels, Languages, initialData) ->
  
  initialData.labels.$promise.then () ->
    Labels.setLabels(initialData.labels)
  , () ->
    alert("Server error 1 in MainController, please try again!")
  
  initialData.languages.$promise.then () ->
    Languages.setLanguages(initialData.languages)
  , () ->
    alert("Server error 2 in MainController, please try again!")
