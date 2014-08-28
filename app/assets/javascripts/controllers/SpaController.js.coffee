angular.module('portfolioApp').controller "SpaController", ($scope, Educations, Publications, TypesCertificates, Companies, Labels, Ordering) ->
  
  $scope.init = ->
  	
    @tab = 1
    
    $scope.up = 'up'
    $scope.down = 'down'
    $scope.none = 'none'
    
    $scope.num = 'num'
    $scope.date = 'date'
    $scope.string = 'string'
    
    $scope.ed = 'ed'
    $scope.ed_per = 'ed_per'
    $scope.ed_per_rec = 'ed_per_rec'
    $scope.comp = 'comp'
    $scope.job = 'job'
    $scope.cert = 'cert'
    $scope.type_cert = 'type_cert'
    $scope.pub = 'pub'
    
    $scope.item = {}
    
    $scope.orderings = {}
    $scope.popover_msgs = {}
    
    $scope.item[$scope.ed] = 0
    $scope.item[$scope.ed_per] = 0
    $scope.item[$scope.ed_per_rec] = 0
    $scope.item[$scope.comp] = 0
    $scope.item[$scope.job] = 0
    $scope.item[$scope.cert] = 0
    $scope.item[$scope.pub] = 0
    $scope.item[$scope.type_cert] = 0
    
    $scope.orderings[$scope.ed] = {}
    $scope.orderings[$scope.ed][0] = new Ordering($scope.ed, 0, ['-done_at'], '-done_at', Ordering.date)
    
    $scope.orderings[$scope.ed_per] = {}
    $scope.orderings[$scope.ed_per][0] = new Ordering($scope.ed_per, 0, ['-done_at'], '-done_at', Ordering.date)
    
    $scope.orderings[$scope.ed_per_rec] = {}
    $scope.orderings[$scope.ed_per_rec][0] = new Ordering($scope.ed_per_rec, 0, ['-grade'], '-grade', Ordering.number)
    
    $scope.orderings[$scope.comp] = {}
    $scope.orderings[$scope.comp][0] = new Ordering($scope.comp, 0, [], 'none', Ordering.string)
    
    $scope.orderings[$scope.job] = {}
    $scope.orderings[$scope.job][0] = new Ordering($scope.job, 0, ['-done_at'], '-done_at', Ordering.date)
    
    $scope.orderings[$scope.cert] = {}
    $scope.orderings[$scope.cert][0] = new Ordering($scope.cert, 0, ['-issued_at'], '-issued_at', Ordering.date)
    
    $scope.orderings[$scope.type_cert] = {}
    $scope.orderings[$scope.type_cert][0] = new Ordering($scope.type_cert, 0, ['name'], 'name', Ordering.string)
    
    $scope.orderings[$scope.pub] = {}
    $scope.orderings[$scope.pub][0] = new Ordering($scope.pub, 0, ['-published_at'], '-published_at', Ordering.date)
    
    @educationsService = new Educations(serverErrorHandler)
    $scope.educations = @educationsService.all()
    
    @publicationsService = new Publications(serverErrorHandler)
    $scope.publications = @publicationsService.all()
  	
    @typesCertificatesService = new TypesCertificates(serverErrorHandler)
    $scope.typesCertificates = @typesCertificatesService.all()
    
    @companiesService = new Companies(serverErrorHandler)
    $scope.companies = @companiesService.all()
    
    @labelsService = new Labels(serverErrorHandler)
    $scope.labels = @labelsService.all()
  
  $scope.popover_msgs_func = (id, title, links, attachments) ->
    ret_str = "<center>#{title}</center><br>#{$scope.labels[0].types_certificates.certificates.attachments}<br>"
    
    for attachment in attachments
      ret_str += "<a href='#{attachment.path}' target='attach_#{id}'>#{attachment.name}</a><br>"
    
    ret_str += "#{$scope.labels[0].types_certificates.certificates.links}<br>"
    for link in links
      ret_str += "<a href='#{link.link}' target='link_#{id}'>#{link.text}</a><br>"
    
    ret_str
  
  $scope.selectTab = (selTab) ->
    @tab = selTab
  
  $scope.isSelected = (selTab) ->
    @tab == selTab
  
  $scope.checkOrdPos = (id, parent_id) ->
    if not $scope.orderings[id][parent_id]
      #$scope.orderings[id][parent_id] = new Ordering(id, parent_id, $scope.orderings[id][0].getFields(), $scope.orderings[id][0].getCurrentField(), $scope.orderings[id][0].getCurrentType())
      $scope.orderings[id][parent_id] = jQuery.extend(true, {}, $scope.orderings[id][0])
      $scope.orderings[id][parent_id].setParentId(parent_id)
  
  $scope.orderFuncField = (id, parent_id) ->
    currField = $scope.orderings[id][parent_id].getCurrentField()
    if currField[0] == '-'
      currField.substr(1)
    else
      currField
  
  $scope.orderFuncReverse = (id, parent_id) ->
    currField = $scope.orderings[id][parent_id].getCurrentField()
    #alert("2: #{currField}")
    currField[0] == '-'
  
  $scope.orderFuncType = (id, parent_id) ->
    #alert("3: #{$scope.orderings[id][parent_id].getCurrentType()}")
    $scope.orderings[id][parent_id].getCurrentType()
  
  $scope.ordPos = (id, name, parent_id) ->
    $scope.checkOrdPos(id, parent_id)
    if $scope.orderings[id][parent_id].getCurrentField() == name
      Ordering.down
    else if $scope.orderings[id][parent_id].getCurrentField() == "-#{name}"
      Ordering.up
    else
      Ordering.none
  
  $scope.order = (id, name, parent_id, type) ->
    if not $scope.orderings[id][parent_id]
      $scope.orderings[id][parent_id] = new Ordering(id, parent_id, [name], name, type)
    else
      fields = $scope.orderings[id][parent_id].getFields()
      idx = fields.indexOf(name)
      
      if idx == -1
        idx = fields.indexOf("-#{name}")
      
      if idx == -1
        fields.push(name)
        #$scope.orderings[id][parent_id].setFields(fields)
        $scope.orderings[id][parent_id].setCurrentField(name)
      else
        if fields[idx][0] == '-'
          fields[idx] = name
          #$scope.orderings[id][parent_id].setFields(fields)
          $scope.orderings[id][parent_id].setCurrentField(name)
        else
          fields[idx] = "-#{name}"
          #$scope.orderings[id][parent_id].setFields(fields)
          $scope.orderings[id][parent_id].setCurrentField("-#{name}")
    
    $scope.orderings[id][parent_id].setCurrentType(type)
  
  $scope.selectItem = (id, sel) ->
    if $scope.isSelectedItem(id, sel)
      $scope.item[id] = 0
    else
      $scope.item[id] = sel
  
  $scope.isSelectedItem = (id, sel) ->
    $scope.item[id] == sel
  
  serverErrorHandler = ->
    alert("There was a server error, please reload the page and try again!")