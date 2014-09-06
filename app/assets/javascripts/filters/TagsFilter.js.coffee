# remove the extra fields of the tags JSON
angular.module('portfolioApp').filter "tags", () ->

  # return an array with just the names of the tags
  func = (items) ->

    filtered = []
 
    for item in items
      filtered.push(item.name)
    
    filtered.join(' , ')
