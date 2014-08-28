angular.module('portfolioApp').filter 'orderObjectBy', (Ordering) ->
  func = (items, field, reverse, type) ->
    #alert("#{field} - #{reverse} - #{type}")
    filtered = []
    
    angular.forEach items, (item) ->
      filtered.push(item)
    
    filtered.sort (a, b) ->
      #alert("#{a} - #{b}")
      if type == Ordering.number
        x = Number(a[field])
        y = Number(b[field])
      else if type == Ordering.date
        x = new Date(a[field])
        y = new Date(b[field])
      else
        x = new String(a[field])
        y = new String(b[field])
        #alert("1: #{x} - #{y}")
        x = normalize(x)
        y = normalize(y)
        #alert("2: #{x} - #{y}")
      
      if x > y
        1
      else
        -1
    
    if reverse
      filtered.reverse()
    
    filtered
