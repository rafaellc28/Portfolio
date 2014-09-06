# Search for tags
angular.module('portfolioApp').filter "tagsSearch", () ->

  func = (items, text) ->
    filtered = []
    
    # if there is no content to search return all tags
    if text == ''
      filtered = items
    else
      angular.forEach items, (item) ->
        
        #strip accents and lowercase the search text and the tag names for comparison
        t = normalize(text).toLowerCase()
        s = normalize(item.name).toLowerCase()
        
        # check if the tag name contains as substring the search text
        i = s.indexOf t
        
        # if so, insert it in the returned array
        if i != -1 
          filtered.push(item)
    
    filtered
