angular.module('portfolioApp').controller "LanguagesController", ($scope, Labels, Languages) ->
  
  $scope.init = ->
    
    $scope.languages = Languages.getCurrent()
    $scope.labels = Labels.getCurrent()
    $scope.currentLanguage = Languages.getCurrentLanguage()
    $scope.icon_color = $scope.labels[0][$scope.currentLanguage].config.icon_color
  
  $scope.setCurrentLanguage = (lang) ->
    Languages.setCurrentLanguage(lang)
    $scope.currentLanguage = Languages.getCurrentLanguage()
    $scope.icon_color = $scope.labels[0][$scope.currentLanguage].config.icon_color
  
  $scope.getIconColor = () ->
    $scope.icon_color
  
  serverErrorHandler = ->
    alert("Server error in LanguagesController, please try again!")
