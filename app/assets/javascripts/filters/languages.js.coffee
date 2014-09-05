angular.module('portfolioApp').filter "languages", () ->
  
  func = (items, currentLanguage) ->
    
    filtered = items[currentLanguage]
