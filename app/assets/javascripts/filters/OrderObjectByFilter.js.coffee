# sort the records of a section
angular.module('portfolioApp').filter 'orderObjectBy', (Sorting) ->
  # return a filtered array ordered by field
  # if reverse is true, it is ordered in descending order
  # type define if field is a number, date or string
  func = (items, field, reverse, type) ->
    Sorting.sort(items, field, reverse, type)
