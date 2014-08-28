angular.module('portfolioApp').controller "TagsController", ($scope, $attrs) ->
  
  $scope.init = ->
    @tabTag = {}
  
  
  $scope.changeActive = (id) ->
    @tabTag[id] = not @tabTag[id]
  
  $scope.isActive = (id) ->
    #alert($scope.attrs.data-type)
    #alert('test')
    @tabTag[id]
  
  serverErrorHandler = ->
    alert("There was a server error, please reload the page and try again!")
