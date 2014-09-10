angular.module('portfolioApp').controller "MainController", ($scope, Labels, Languages, initialData) ->
  
  if not initialData.labels.$resolved or not initialData.languages.$resolved
    alert("Server error in MainController, please try again!")
  
  Labels.setLabels(initialData.labels)
  Languages.setLanguages(initialData.languages)
