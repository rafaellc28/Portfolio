# sort the records of a section
angular.module('portfolioApp').filter 'orderObjectBy', (Sorting) ->
  # return a filtered array ordered by field
  # if reverse is true, it is ordered in descending order
  # type define if field is a number, date or string
  func = (items, field, reverse, type) ->
    filtered = []
    
    angular.forEach items, (item) ->
      filtered.push(item)
    
    filtered.sort (a, b) ->
      if type == Sorting.number
        x = Number(a[field])
        y = Number(b[field])
      else if type == Sorting.date
        x = new Date(a[field])
        y = new Date(b[field])
      else
        # strip accents to perform comparison between two strings
        x = normalize(a[field])
        y = normalize(b[field])
      
      if x > y
        1
      else
        -1
    
    if reverse
      filtered.reverse()
    
    filtered
