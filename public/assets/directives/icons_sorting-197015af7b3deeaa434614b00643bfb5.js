(function(){angular.module("portfolioApp").directive("iconSorting",function(Sorting){var ret;return ret={restrict:"A",link:function(scope,element){var ctx,curStatus,elem;return curStatus=Sorting.none,elem=element[0],ctx=elem.getContext("2d"),ctx.fillStyle=scope.getIconColor(),element.bind("click",function(){var ctx_aux,id,neighbor,neighbors,_i,_len;for(elem.width=elem.width,neighbors=elem.dataset.neighbors,neighbors=neighbors?neighbors.split(","):[],_i=0,_len=neighbors.length;_len>_i;_i++)id=neighbors[_i],neighbor=document.getElementById(id),neighbor.width=neighbor.width,ctx_aux=neighbor.getContext("2d"),ctx_aux.fillStyle=neighbor.dataset.color,Sorting.drawNone(ctx_aux,neighbor),neighbor.dataset.status=Sorting.none;return ctx.fillStyle=scope.getIconColor(),curStatus===Sorting.desc||curStatus===Sorting.none?(curStatus=Sorting.asc,Sorting.drawAsc(ctx,elem),elem.dataset.status=Sorting.asc):(curStatus=Sorting.desc,Sorting.drawDesc(ctx,elem),elem.dataset.status=Sorting.desc)}),curStatus=scope.currentOrderBySection(elem.dataset.type,elem.dataset.parent,elem.dataset.field),curStatus===Sorting.desc?(Sorting.drawDesc(ctx,elem),elem.dataset.status=Sorting.desc):curStatus===Sorting.asc?(Sorting.drawAsc(ctx,elem),elem.dataset.status=Sorting.asc):(curStatus=Sorting.none,Sorting.drawNone(ctx,elem),elem.dataset.status=Sorting.none)}}})}).call(this);