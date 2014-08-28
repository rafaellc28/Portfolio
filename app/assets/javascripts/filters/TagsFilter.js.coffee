angular.module('portfolioApp').filter "tags", () ->

  func = (items) ->

    filtered = []
 
    for item in items
      filtered.push(item.name)
    
    filtered.join(' , ')
