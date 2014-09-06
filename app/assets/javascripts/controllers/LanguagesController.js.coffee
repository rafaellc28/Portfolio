angular.module('portfolioApp').controller "LanguagesController", ($scope, Languages) ->
  
  $scope.init = ->
    
    @languagesService = new Languages(serverErrorHandler)
    $scope.languages = @languagesService.all()
  
  $scope.setInitLanguage = (lang) ->
    if $scope.language == undefined
      Languages.setCurrentLanguage(lang)
      $scope.language = lang
  
  $scope.setCurrentLanguage = (lang) ->
    Languages.setCurrentLanguage(lang)
    $scope.$apply()
  
  serverErrorHandler = ->
    alert("Server error!")
