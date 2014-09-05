angular.module('portfolioApp').filter "tagsSearch", () ->

  func = (items, text) ->
    #alert(text)
    filtered = []
    
    if text == ''
      filtered = items
    else
      angular.forEach items, (item) ->
        t = normalize(text).toLowerCase()
        s = normalize(item.name).toLowerCase()
        #alert("#{s} - #{t}")
        i = s.indexOf t
        #alert("#{s} - #{t} - #{i}")
        if i != -1 
          filtered.push(item)
          #alert(item)
    
    #alert(filtered)
    filtered
