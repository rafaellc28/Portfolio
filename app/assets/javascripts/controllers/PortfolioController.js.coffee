angular.module('portfolioApp').controller "PortfolioController", ($scope, $window, Spa, Sorting, Section) ->
  
  $scope.init = ->
    
    @tab = 1

    @screenWidth = $window.innerWidth

    if @screenWidth >= 768
      $scope.tagsShown = true
    else
      $scope.tagsShown = false
    
    $scope.search_text = ''
    
    $scope.num = Sorting.number
    $scope.date = Sorting.date
    $scope.string = Sorting.string
    
    $scope.proj = 'proj'
    $scope.ed = 'ed'
    $scope.ed_term = 'ed_term'
    $scope.ed_term_course = 'ed_term_course'
    $scope.comp = 'comp'
    $scope.job = 'job'
    $scope.cert = 'cert'
    $scope.type_cert = 'type_cert'
    $scope.pub = 'pub'
    $scope.tag_section = 'tag_section'
    
    $scope.item = {}
    
    $scope.item[$scope.proj] = new Section(0, new Sorting(0, ['-updated'], '-updated', Sorting.date))
    $scope.item[$scope.ed] = new Section(0, new Sorting(0, ['-end'], '-end', Sorting.date))
    $scope.item[$scope.ed_term] = new Section(0, new Sorting(0, ['-end'], '-end', Sorting.date))
    $scope.item[$scope.ed_term_course] = new Section(0, new Sorting(0, ['-grade'], '-grade', Sorting.number))
    $scope.item[$scope.comp] = new Section(0, new Sorting(0, ['-last_job_date'], '-last_job_date', Sorting.date))
    $scope.item[$scope.job] = new Section(0, new Sorting(0, ['-end'], '-end', Sorting.date))
    $scope.item[$scope.cert] = new Section(0, new Sorting(0, ['-issued'], '-issued', Sorting.date))
    $scope.item[$scope.pub] = new Section(0, new Sorting(0, ['-published'], '-published', Sorting.date))
    $scope.item[$scope.type_cert] = new Section(0, new Sorting(0, ['name'], 'name', Sorting.string))
    $scope.item[$scope.tag_section] = new Section(0, new Sorting(0, ['-taggings_count'], '-taggings_count', Sorting.number))
  
    $scope.successHandler = () ->
      $scope.projects = $scope.spa[0]
      $scope.educations = $scope.spa[1]
      $scope.publications = $scope.spa[2]
      $scope.typesCertificates = $scope.spa[3]
      $scope.companies = $scope.spa[4]
      $scope.labels = $scope.spa[5]
      $scope.languages = $scope.spa[6]
      $scope.user = $scope.spa[7]
      $scope.tags = $scope.spa[8]

      $scope.currentLanguage = $scope.languages[0].acronym
      $scope.label = $scope.labels[$scope.currentLanguage]
      $scope.icon_color = $scope.label.config.icon_color;
      
    @spaService = new Spa(serverErrorHandler)
    $scope.spa = @spaService.all($scope)
  
  $scope.setCurrentLanguage = (lang) ->
    $scope.currentLanguage = lang
    $scope.label = $scope.labels[$scope.currentLanguage]
    $scope.icon_color = $scope.label.config.icon_color
  
  $scope.getIconColor = () ->
    $scope.icon_color
  
  $scope.popover_message = (title, links, attachments, tags, awards) ->
    Section.popover_message(title, links, attachments, tags, awards, $scope.label)
  
  $scope.selectTab = (selTab) ->
    @tab = selTab
  
  $scope.isSelected = (selTab) ->
    @tab == selTab
  
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
  
  $scope.selectItem = (id, sel) ->
    if $scope.isSelectedItem(id, sel)
      $scope.item[id].setId(0)
    else
      $scope.item[id].setId(sel)
  
  $scope.isSelectedItem = (id, sel) ->
    $scope.item[id].getId() == sel
  
  serverErrorHandler = ->
    alert("Server error in PortfolioController, please try again!")
