# Manage the action of open/close a section and 
# the sorting of the section and its subsections
angular.module('portfolioApp').factory 'Section', (Sorting) ->
  class Section
    
    # open / close status
    @open: 'open'
    @close: 'close'
    
    # initOrder is a Sorting instance
    constructor: (id, initOrder) ->
      @id = id
      @initParentId = initOrder.getParentId()
      @orderController = {}
      @orderController[@initParentId] = initOrder
    
    getId: ->
      @id
    
    setId: (@id) ->
    
    # get the sort order for a subsection with specific parent
    getOrder: (parentId) ->
      @orderController[parentId]
    
    # add the order controller for a subsection with specific parent
    # order is a Sorting instance
    addOrder: (parentId, order) ->
      @orderController[parentId] = order
    
    # check if there is a order controller for the subsection with the given parent
    # if not, create one
    validateOrder: (parentId) ->
      if not @orderController[parentId]
        @orderController[parentId] = jQuery.extend(true, {}, @orderController[@initParentId])
        @orderController[parentId].setParentId(parentId)
        
    #Draw open icon
    @drawOpen = (ctx_param, elem) ->
      ctx_param.fillRect(3,9,11,3)
      ctx_param.fillRect(7,5,3,11)
    
    #Draw close icon
    @drawClose = (ctx_param, elem) ->
      ctx_param.fillRect(3,9,10,3)
    
    @popover_message = (title, links, attachments, tags, awards, label) ->
      ret_str = "<center>#{title}</center>"
      
      if awards != undefined and awards.length > 0
        ret_str += "<br>#{label.messages.awards}<br>"
        
        for award in Sorting.sort(awards, 'title', false, Sorting.string)
          
          date_issued = new Date(award.issued)
          date_fr = date_issued.format(label.config.date_format_js)
          ret_str += "#{award.title} - #{date_fr}</a><br>"
      
      if attachments != undefined and attachments.length > 0
        ret_str += "<br>#{label.messages.attachments}<br>"
        
        for attachment in Sorting.sort(attachments, 'name', false, Sorting.string)
          ret_str += "<a href='#{attachment.path}' target='attach_#{attachment.id}'>#{attachment.name}</a><br>"
      
      if links != undefined and links.length > 0
        ret_str += "<br>#{label.messages.links}<br>"
        
        for link in Sorting.sort(links, 'text', false, Sorting.string)
          ret_str += "<a href='#{link.link}' target='link_#{link.id}'>#{link.text}</a><br>"
      
      if tags != undefined and tags.length > 0
        ret_str += "<br>#{label.messages.tags}<br>"
        ret_str += "<ul class='nav nav-pills'>"
      
        for tag in Sorting.sort(tags, 'name', false, Sorting.string)
          ret_str += "<li>"
          ret_str += "<a tag-cloud data-cloud='tag-cloud' name='#{tag.name}' title='#{tag.name}' id='#{tag.id}' class='#{tag.css_class}'>#{tag.name}</a>"
          ret_str += "</li>"
        
        ret_str += "</ul>"
      
      ret_str += "<br><center>#{label.messages.close_msg}</center><br>"
      
      ret_str
      