angular.module('portfolioApp').controller "UserController", ($scope, Users, Languages, Labels, Section) ->
  
  $scope.init = ->        
    @usersService = new Users(serverErrorHandler)
    $scope.users = @usersService.all()
    
    $scope.labels = Labels.getCurrent()
    $scope.languages = Languages.getCurrent()
    
    $scope.currentLanguage = Languages.getCurrentLanguage()
    $scope.label = $scope.labels[0][$scope.currentLanguage]
  
  $scope.popover_message = (title, links, attachments, tags, awards) ->
    Section.popover_message(title, links, attachments, tags, awards, $scope.label)
  
  $scope.setCurrentLanguage = () ->
    $scope.currentLanguage = Languages.getCurrentLanguage()
    $scope.label = $scope.labels[0][$scope.currentLanguage]
  
  serverErrorHandler = ->
    alert("Server error in UserController, please try again!")
