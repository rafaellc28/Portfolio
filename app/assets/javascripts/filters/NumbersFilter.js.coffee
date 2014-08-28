angular.module('portfolioApp').filter "number", () ->

  func = (item, decimal_sep, fraction_size) ->
    if isNaN(item)
      item
    else
      Number(item).toFixed(fraction_size).toString().replace('.', decimal_sep)
