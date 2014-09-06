# filter to format a numeric value
angular.module('portfolioApp').filter "number", () ->

  # decimal_sep is the decimal separator and fraction_size id the number of digits after the separator
  func = (item, decimal_sep, fraction_size) ->
    if isNaN(item)
      item
    else
      Number(item).toFixed(fraction_size).toString().replace('.', decimal_sep)
