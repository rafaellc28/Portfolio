(function(){angular.module("portfolioApp").directive("selectLanguage",function(){var ret;return ret={restrict:"A",link:function(scope,element){var elem;return elem=element[0],element.bind("click",function(){var language,languages,_i,_len;for(languages=$("a[data-type='"+elem.dataset.type+"']"),_i=0,_len=languages.length;_len>_i;_i++)language=languages[_i],$("#"+language.id).prop("class","");return $("#"+elem.id).prop("class","active"),scope.setCurrentLanguage(elem.id),scope.$apply()})}}})}).call(this);