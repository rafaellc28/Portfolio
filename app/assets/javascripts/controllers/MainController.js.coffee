angular.module('portfolioApp').controller "MainController", ($scope, Labels, Languages, initialData) ->
  
  Labels.setLabels(initialData.labels)
  Languages.setLanguages(initialData.languages)
