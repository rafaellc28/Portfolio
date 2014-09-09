angular.module('portfolioApp').controller "TagsController", ($scope, Tags, Labels, Languages, Sorting, Section) ->
  
  #$scope.currentLanguage = Languages.getCurrentLanguage()
  
  $scope.init = ->
    
    $scope.labels = Labels.getCurrent()
    $scope.languages = Languages.getCurrent()
    
    $scope.currentLanguage = Languages.getCurrentLanguage()
    $scope.label = $scope.labels[0][$scope.currentLanguage]
    
    $scope.icon_color = $scope.label.config.icon_color;
    $scope.search_text = ''
    
    $scope.number = Sorting.number
    $scope.date = Sorting.date
    $scope.string = Sorting.string
    
    $scope.tag_section = 'tag_section'
    
    $scope.item = {}
    $scope.item[$scope.tag_section] = new Section(0, new Sorting(0, ['-taggings_count'], '-taggings_count', Sorting.number))
    
    @tagsService = new Tags(serverErrorHandler)
    $scope.tags = @tagsService.all()
  
  $scope.setCurrentLanguage = () ->
    $scope.currentLanguage = Languages.getCurrentLanguage()
    $scope.label = $scope.labels[0][$scope.currentLanguage]
    $scope.icon_color = $scope.label.config.icon_color;
  
  $scope.getIconColor = () ->
    $scope.icon_color
  
  $scope.validateOrder = (id, parent_id) ->
    $scope.item[id].validateOrder(parent_id)
  
  $scope.getOrderField = (id, parent_id) ->
    $scope.item[id].getOrder(parent_id).currentOrderField()
  
  $scope.getOrderReversibility = (id, parent_id) ->
    $scope.item[id].getOrder(parent_id).currentOrderReversibility()
  
  $scope.getOrderType = (id, parent_id) ->
    $scope.item[id].getOrder(parent_id).getCurrentType()
  
  $scope.currentOrderBySection = (id, parent_id, field) ->
    $scope.validateOrder(id, parent_id)
    $scope.item[id].getOrder(parent_id).checkOrderByField(field)
  
  $scope.updateOrder = (id, parent_id, field, type) ->
    if not $scope.item[id].getOrder(parent_id)
      $scope.item[id].addOrder(parent_id, new Sorting(id, parent_id, [field], field, type))
    else
      $scope.item[id].getOrder(parent_id).updateOrder(field, type)
  
  serverErrorHandler = ->
    alert("Server error in TagsController, please try again!")
