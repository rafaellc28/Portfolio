angular.module('portfolioApp').controller "MainController", ($scope, Labels, Languages, initialData) ->
  
  # set static labels information
  initialData.labels.$promise.then () ->
    Labels.setLabels(initialData.labels)
  , () ->
    alert("Server error 1 in MainController, please try again!")
  
  # set static languages information
  initialData.languages.$promise.then () ->
    Languages.setLanguages(initialData.languages)
  , () ->
    alert("Server error 2 in MainController, please try again!")
