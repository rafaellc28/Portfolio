angular.module('portfolioApp').filter 'orderObjectBy', (Ordering) ->
  func = (items, field, reverse, type) ->
    filtered = []
    
    angular.forEach items, (item) ->
      filtered.push(item)
    
    filtered.sort (a, b) ->
      if type == Ordering.number
        x = Number(a[field])
        y = Number(b[field])
      else if type == Ordering.date
        x = new Date(a[field])
        y = new Date(b[field])
      else
        x = new String(a[field])
        y = new String(b[field])
        
        x = normalize(x)
        y = normalize(y)
      
      if x > y
        1
      else
        -1
    
    if reverse
      filtered.reverse()
    
    filtered
