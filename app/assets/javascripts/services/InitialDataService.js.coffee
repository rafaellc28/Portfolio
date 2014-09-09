angular.module('portfolioApp').factory "InitialDataService", (Labels, Languages, $q) ->
  
  serverErrorHandler = ->
    alert("Server error, please try again!")
  
  ret = () ->
    labels = (new Labels(serverErrorHandler)).all()
    languages = (new Languages(serverErrorHandler)).all();
      
    $q.all([labels, languages]).then (results) ->
      labels: results[0],
      languages: results[1]
