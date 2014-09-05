angular.module('portfolioApp').controller "SpaController", ($scope, Educations, Publications, TypesCertificates, Companies, Labels, Sorting, Section) ->
  
  $scope.init = ->
  	
    @tab = 1
    
    $scope.currentLanguage = 'en'
    
    $scope.num = Sorting.number
    $scope.date = Sorting.date
    $scope.string = Sorting.string
    
    $scope.ed = 'ed'
    $scope.ed_per = 'ed_per'
    $scope.ed_per_rec = 'ed_per_rec'
    $scope.comp = 'comp'
    $scope.job = 'job'
    $scope.cert = 'cert'
    $scope.type_cert = 'type_cert'
    $scope.pub = 'pub'
    
    $scope.item = {}
    
    $scope.popover_msgs = {}
    
    $scope.item[$scope.ed] = new Section(0, new Sorting(0, ['-done_at'], '-done_at', Sorting.date))
    $scope.item[$scope.ed_per] = new Section(0, new Sorting(0, ['-done_at'], '-done_at', Sorting.date))
    $scope.item[$scope.ed_per_rec] = new Section(0, new Sorting(0, ['-grade'], '-grade', Sorting.number))
    $scope.item[$scope.comp] = new Section(0, new Sorting(0, ['-last_job_date'], '-last_job_date', Sorting.date))
    $scope.item[$scope.job] = new Section(0, new Sorting(0, ['-done_at'], '-done_at', Sorting.date))
    $scope.item[$scope.cert] = new Section(0, new Sorting(0, ['-issued_at'], '-issued_at', Sorting.date))
    $scope.item[$scope.pub] = new Section(0, new Sorting(0, ['-published_at'], '-published_at', Sorting.date))
    $scope.item[$scope.type_cert] = new Section(0, new Sorting(0, ['name'], 'name', Sorting.string))
    
    @labelsService = new Labels(serverErrorHandler)
    $scope.labels = @labelsService.all()
    
    @educationsService = new Educations(serverErrorHandler)
    $scope.educations = @educationsService.all()
    
    @publicationsService = new Publications(serverErrorHandler)
    $scope.publications = @publicationsService.all()
  	
    @typesCertificatesService = new TypesCertificates(serverErrorHandler)
    $scope.typesCertificates = @typesCertificatesService.all()
    
    @companiesService = new Companies(serverErrorHandler)
    $scope.companies = @companiesService.all()
    
    #alert(JSON.stringify($scope.labels))
  
  $scope.popover_message = (title, links, attachments, tags) ->
    ret_str = "<center>#{title}</center><br>"
    
    if attachments.length > 0
      ret_str += "#{$scope.labels[0][$scope.currentLanguage].messages.attachments}<br>"
      
      for attachment in attachments
        ret_str += "<a href='#{attachment.path}' target='attach_#{attachment.id}'>#{attachment.name}</a><br>"
    
    if links.length > 0
      ret_str += "#{$scope.labels[0][$scope.currentLanguage].messages.links}<br>"
      
      for link in links
        ret_str += "<a href='#{link.link}' target='link_#{link.id}'>#{link.text}</a><br>"
    
    if tags.length > 0
      ret_str += "#{$scope.labels[0][$scope.currentLanguage].messages.tags}<br>"
      ret_str += "<ul class='nav nav-pills'>"
      
      for tag in tags
        ret_str += "<li>"
        ret_str += "<a tag-cloud data-cloud='tag-cloud' name='#{tag.name}' title='#{tag.name}' id='#{tag.id}' class='#{tag.css_class}'>#{tag.name}</a>"
        ret_str += "</li>"
      
      ret_str += "</ul>"
    
    ret_str += "<br><center>#{$scope.labels[0][$scope.currentLanguage].messages.close_msg}</center><br>"
    
    ret_str
  
  $scope.bs_popover_message = (title, links, attachments, tags) ->
    aux =
      "title": ""
      "content": $scope.popover_message(title, links, attachments, tags)
  
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
    alert("Server error!")
